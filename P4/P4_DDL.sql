CREATE DATABASE DMDD_FINAL_PROJECT;
GO

USE DMDD_FINAL_PROJECT;
GO

-- 1. Create a master key for the database
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'YourStrongPassword123!';
GO

-- 2. Create a certificate protected by the master key
CREATE CERTIFICATE DataProtectionCertificate
WITH SUBJECT = 'Data Encryption';
GO

-- 3. Create symmetric keys for Customer and Card tables
CREATE SYMMETRIC KEY SymKey_CustomerData
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE DataProtectionCertificate;
GO

CREATE SYMMETRIC KEY SymKey_CardData
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE DataProtectionCertificate;
GO

CREATE TABLE DockingArea (
    DockingAreaID INT IDENTITY(1,1) PRIMARY KEY,
    DockingAreaName VARCHAR(50),
    DockingAddress VARCHAR(50),
    NumberOfVehicles INT
);

CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    [Password] VARBINARY(MAX),
    Phone VARCHAR(50) CONSTRAINT CHK_Customer_Phone CHECK (LEN(Phone) = 10 AND ISNUMERIC(Phone) = 1),
    [Address] VARCHAR(50),
    City VARCHAR(50),
    [State] VARCHAR(50),
    ZIP VARCHAR(50) CONSTRAINT CHK_Customer_ZIP CHECK (LEN(ZIP) = 5),
    CONSTRAINT CHK_Customer_Email CHECK (CHARINDEX('@', Email) > 0)
);

CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50) CONSTRAINT CHK_Employee_Email CHECK (CHARINDEX('@', Email) > 0),
    Phone VARCHAR(50) CONSTRAINT CHK_Employee_Phone CHECK (LEN(Phone) = 10 AND ISNUMERIC(Phone) = 1),
    Designation VARCHAR(50)
);

CREATE TABLE [Transaction] (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    RentDuration INT,
    Date_Time DATETIME,
    COST DECIMAL
);

CREATE TABLE Insurance (
    InsuranceID INT IDENTITY(1,1) PRIMARY KEY,
    Premium INT,
    Details VARCHAR(100)
);

CREATE TABLE RewardSystem (
    RewardID INT IDENTITY(1,1) PRIMARY KEY,
    RewardPoints INT,
    DockingAreaID INT FOREIGN KEY REFERENCES DockingArea(DockingAreaID),
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID)
);

CREATE TABLE Vehicle (
    VehicleID INT IDENTITY(1,1) PRIMARY KEY,
    DockingAreaID INT FOREIGN KEY REFERENCES DockingArea(DockingAreaID),
    VehicleType VARCHAR(50) CONSTRAINT CHK_Vehicle_VehicleType CHECK (VehicleType IN ('Truck', 'Trailer')),
    RegistrationNumber VARCHAR(50),
    CurrentLocation VARCHAR(50),
    StorageSpaceSize INT
);

CREATE TABLE Truck (
    VehicleID INT PRIMARY KEY,
    TruckType VARCHAR(50),
    Ramp VARCHAR(50),
    Mileage INT,
    FuelType VARCHAR(50),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Trailer (
    VehicleID INT PRIMARY KEY,
    TrailerType VARCHAR(50),
    HitchType VARCHAR(50),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Booking (
    BookingID INT IDENTITY(1,1) PRIMARY KEY,
    VehicleID INT FOREIGN KEY REFERENCES Vehicle(VehicleID),
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    InsuranceID INT FOREIGN KEY REFERENCES Insurance(InsuranceID),
    TransactionID INT FOREIGN KEY REFERENCES [Transaction](TransactionID),
    SuggestedDropoffLocationID INT, -- NEEDS TO BE A UDF
    PickupLocation VARCHAR(50),
    DropOffLocation VARCHAR(50),
    StartDateTime DATETIME,
    EndDateTime DATETIME,
    TotalCost DECIMAL
);

CREATE TABLE Complain (
    ComplainID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    ComplainDate DATETIME,
    ComplainTime DATETIME,
    Details VARCHAR(255)
);

CREATE TABLE PaymentMethod (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionID INT FOREIGN KEY REFERENCES [Transaction](TransactionID),
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    PaymentType VARCHAR(50) NOT NULL CONSTRAINT CHK_PaymentMethod_PaymentType CHECK (PaymentType IN ('Card', 'BankTransfer'))
);

CREATE TABLE [Card] (
    PaymentID INT PRIMARY KEY,
    CardNumber VARBINARY(MAX),
    [Name] VARCHAR(50), 
    CardType VARCHAR(50), 
    ExpiryDate DATE,
    FOREIGN KEY (PaymentID) REFERENCES PaymentMethod(PaymentID)
);

CREATE TABLE BankAccount (
    PaymentID INT PRIMARY KEY,
    AccountHolderName VARCHAR(50),
    BankAccountNumber VARBINARY(MAX),
    RoutingNumber VARCHAR(50),
    AccountType VARCHAR(50),
    FOREIGN KEY (PaymentID) REFERENCES PaymentMethod(PaymentID)
);

-- 5. Encrypt the data in Customer and Card tables
OPEN SYMMETRIC KEY SymKey_CustomerData
DECRYPTION BY CERTIFICATE DataProtectionCertificate;

UPDATE Customer
SET 
    [Password] = EncryptByKey(Key_GUID('SymKey_CustomerData'), [Password]);
GO

CLOSE SYMMETRIC KEY SymKey_CustomerData;
GO

OPEN SYMMETRIC KEY SymKey_CardData
DECRYPTION BY CERTIFICATE DataProtectionCertificate;

UPDATE Card
SET [CardNumber] = EncryptByKey(Key_GUID('SymKey_CardData'), CardNumber);
GO

UPDATE BankAccount
SET BankAccountNumber = EncryptByKey(Key_GUID('SymKey_CardData'), BankAccountNumber);
GO

CLOSE SYMMETRIC KEY SymKey_CardData;
GO