
CREATE FUNCTION dbo.CalculateDynamicSuggestedArea(@IntendedDropOffLocation VARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @SuggestedDockingAreaID INT;

    -- Revised logic considering intended drop-off location
    SELECT TOP 1 @SuggestedDockingAreaID = d.DockingAreaID
    FROM DockingArea d
    LEFT JOIN Vehicle v ON d.DockingAreaID = v.DockingAreaID
    WHERE d.DockingAddress != @IntendedDropOffLocation
    GROUP BY d.DockingAreaID
    ORDER BY COUNT(v.VehicleID) ASC; -- Prefer docking areas with fewer vehicles

    RETURN @SuggestedDockingAreaID;
END;
GO


CREATE TRIGGER UpdateSuggestedDropOff
ON Booking
AFTER INSERT
AS
BEGIN
    DECLARE @IntendedDropOffLocation VARCHAR(50), @BookingID INT;

    -- Retrieve the intended drop-off location and booking ID from the newly inserted booking
    SELECT @BookingID = INSERTED.BookingID, @IntendedDropOffLocation = INSERTED.DropOffLocation
    FROM INSERTED;

    -- Update the Booking record with the suggested drop-off location
    UPDATE Booking
    SET SuggestedDropOffLocationID = dbo.CalculateDynamicSuggestedArea(@IntendedDropOffLocation)
    WHERE BookingID = @BookingID;
END;
GO

CREATE PROCEDURE AddBooking
    @VehicleID INT,
    @CustomerID INT,
    @InsuranceID INT,
    @TransactionID INT,
    @PickupLocation VARCHAR(50),
    @DropOffLocation VARCHAR(50),
    @StartDateTime DATETIME,
    @EndDateTime DATETIME,
    @TotalCost DECIMAL
AS
BEGIN
    -- Check if the vehicle is already booked in the given time frame
    IF EXISTS (
        SELECT 1
        FROM Booking
        WHERE VehicleID = @VehicleID
        AND (
            (@StartDateTime BETWEEN StartDateTime AND EndDateTime)
            OR (@EndDateTime BETWEEN StartDateTime AND EndDateTime)
            OR (StartDateTime BETWEEN @StartDateTime AND @EndDateTime)
            OR (EndDateTime BETWEEN @StartDateTime AND @EndDateTime)
        )
    )
    BEGIN
        -- Vehicle is not available, handle accordingly (e.g., raise an error)
        RAISERROR('Vehicle is not available for the specified time period.', 16, 1);
        RETURN;
    END

    -- Calculate suggested drop-off location
    DECLARE @SuggestedDockingAreaID INT;
    SET @SuggestedDockingAreaID = dbo.CalculateDynamicSuggestedArea(@DropOffLocation);

    -- Insert the booking record
    INSERT INTO Booking (VehicleID, CustomerID, InsuranceID, TransactionID, PickupLocation, DropOffLocation, StartDateTime, EndDateTime, TotalCost, SuggestedDropOffLocationID)
    VALUES (@VehicleID, @CustomerID, @InsuranceID, @TransactionID, @PickupLocation, @DropOffLocation, @StartDateTime, @EndDateTime, @TotalCost, @SuggestedDockingAreaID);
END;
GO