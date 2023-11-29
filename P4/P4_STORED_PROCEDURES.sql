USE DMDD_FINAL_PROJECT
GO

-- Retrieves booking details for a specific customer.
CREATE PROCEDURE dbo.RetrieveBookingDetails
    @CustomerID INT
AS
BEGIN
    -- Join relevant tables to retrieve booking details
    SELECT
        B.BookingID,
        B.StartDateTime,
        B.EndDateTime,
        B.TotalCost,
        C.FirstName + ' ' + C.LastName AS CustomerName,
        V.RegistrationNumber,
        V.CurrentLocation,
        PM.PaymentType,
        CASE
            WHEN PM.PaymentType = 'Card' THEN C1.CardNumber
            WHEN PM.PaymentType = 'BankTransfer' THEN B1.BankAccountNumber
        END AS PaymentDetails
    FROM
        Booking B
    INNER JOIN Customer C ON B.CustomerID = C.CustomerID
    INNER JOIN Vehicle V ON B.VehicleID = V.VehicleID
    INNER JOIN PaymentMethod PM ON B.TransactionID = PM.TransactionID
    LEFT JOIN [Card] C1 ON PM.PaymentID = C1.PaymentID
    LEFT JOIN BankAccount B1 ON PM.PaymentID = B1.PaymentID
    WHERE
        c.CustomerID = @CustomerID;
END;
GO

--Calculate Insurance based on vehcile type and rent duration
CREATE PROCEDURE dbo.CalculateInsurancePremium
    @VehicleType VARCHAR(50),
    @RentDuration INT,
    @Premium DECIMAL(10, 2) OUT
AS
BEGIN
    -- Set default premium rate
    SET @Premium = 0.0;
 
    -- Calculate premium based on vehicle type and rent duration
    IF @VehicleType = 'Truck'
        SET @Premium = @RentDuration * 50.0;  -- Adjust premium calculation for trucks
    ELSE IF @VehicleType = 'Trailer'
        SET @Premium = @RentDuration * 30.0;  -- Adjust premium calculation for trailers
    ELSE
        SET @Premium = @RentDuration * 40.0;  -- Default premium for other vehicle types
 
    PRINT 'Insurance premium calculated successfully!';
END;
GO

--Update Vehicle Location for triggers
CREATE PROCEDURE UpdateVehicleLocation
    @VehicleID INT,
    @NewLocation VARCHAR(50)
AS
BEGIN
    DECLARE @NewDockingAreaID INT;

    -- Retrieve DockingAreaID for the new location
    SELECT @NewDockingAreaID = DockingAreaID
    FROM DockingArea 
    WHERE DockingAddress = @NewLocation;

    -- Update Vehicle's CurrentLocation and DockingAreaID
    UPDATE Vehicle
    SET 
        CurrentLocation = @NewLocation,
        DockingAreaID = @NewDockingAreaID
    WHERE VehicleID = @VehicleID;
END;
GO

-- Retrieves customers with the highest reward points.
CREATE PROCEDURE GetTopRewardEarners
AS
BEGIN
    SELECT TOP 3 *
    FROM RewardSystem
    ORDER BY RewardPoints DESC;
END;
GO

--Update email,address and password for a customer
CREATE PROCEDURE spUpdateCustomer
    @CustomerID INT,
    @NewEmail VARCHAR(50),
    @NewAddress VARCHAR(50),
    @NewPassword VARBINARY(MAX)
AS
BEGIN
    UPDATE Customer
    SET 
        Email = @NewEmail,
        [Address] = @NewAddress,
        [Password] = @NewPassword
    WHERE CustomerID = @CustomerID;
END;
GO


--Add a customer
CREATE PROCEDURE spAddCustomer
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(50),
    @Password varbinary(MAX),
    @Phone VARCHAR(50),
    @Address VARCHAR(50),
    @City VARCHAR(50),
    @State VARCHAR(50),
    @ZIP VARCHAR(50)
AS
BEGIN
    INSERT INTO Customer (FirstName, LastName, Email, [Password], Phone, [Address], City, [State], ZIP)
    VALUES (@FirstName, @LastName, @Email, @Password, @Phone, @Address, @City, @State, @ZIP);
END;
GO

