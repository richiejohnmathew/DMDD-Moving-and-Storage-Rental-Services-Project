CREATE TABLE VehicleLocationAudit (
    VehicleLocationAuditID INT IDENTITY(1,1) PRIMARY KEY,
    VehicleID INT,
    OldLocation VARCHAR(50),
    NewLocation VARCHAR(50),
    SuggestedDropoffLocationID INT,
    IsCorrectDropoff BIT,
    AuditDateTime DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);
GO

CREATE TRIGGER trg_VehicleLocationUpdate
ON Vehicle
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @VehicleID INT, @OldLocation VARCHAR(50), @NewLocation VARCHAR(50), @DockingAreaID INT, @SuggestedDropoffLocationID INT, @IsCorrectDropoff BIT, @CustomerID INT;

    IF UPDATE(CurrentLocation) -- Check if CurrentLocation has been updated
    BEGIN
        -- Iterate through all updated records
        DECLARE vehicleCursor CURSOR FOR 
        SELECT i.VehicleID, d.CurrentLocation, i.CurrentLocation, b.SuggestedDropoffLocationID, b.CustomerID
        FROM inserted i
        INNER JOIN deleted d ON i.VehicleID = d.VehicleID
        INNER JOIN Booking b ON i.VehicleID = b.VehicleID -- Assuming each vehicle has an associated booking
        WHERE i.CurrentLocation IS NOT NULL

        OPEN vehicleCursor

        FETCH NEXT FROM vehicleCursor INTO @VehicleID, @OldLocation, @NewLocation, @SuggestedDropoffLocationID, @CustomerID
        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Get the DockingAreaID for the new current location
            SELECT @DockingAreaID = DockingAreaID FROM DockingArea WHERE DockingAddress = @NewLocation;

            -- Determine if the new location is the correct drop-off location
            SET @IsCorrectDropoff = CASE 
                                        WHEN @DockingAreaID = @SuggestedDropoffLocationID THEN 1
                                        ELSE 0
                                    END

            -- Insert a record into the audit table
            INSERT INTO VehicleLocationAudit (VehicleID, OldLocation, NewLocation, SuggestedDropoffLocationID, IsCorrectDropoff)
            VALUES (@VehicleID, @OldLocation, @NewLocation, @SuggestedDropoffLocationID, @IsCorrectDropoff);

            -- Update rewards if the drop-off is correct
            IF @IsCorrectDropoff = 1
            BEGIN
                -- Check if there's an entry for this customer in RewardSystem
                IF EXISTS(SELECT 1 FROM RewardSystem WHERE CustomerID = @CustomerID)
                BEGIN
                    -- Update existing reward points
                    UPDATE RewardSystem
                    SET RewardPoints = ISNULL(RewardPoints, 0) + 10 -- Assuming 10 points for correct drop-off
                    WHERE CustomerID = @CustomerID;
                END
                ELSE
                BEGIN
                    -- Insert new entry with reward points
                    INSERT INTO RewardSystem (CustomerID, RewardPoints, DockingAreaID)
                    VALUES (@CustomerID, 10, @DockingAreaID); -- Assuming 10 points for correct drop-off
                END
            END

            FETCH NEXT FROM vehicleCursor INTO @VehicleID, @OldLocation, @NewLocation, @SuggestedDropoffLocationID, @CustomerID
        END

        CLOSE vehicleCursor
        DEALLOCATE vehicleCursor
    END
END
GO