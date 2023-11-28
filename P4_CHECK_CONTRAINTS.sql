USE DMDD_FINAL_PROJECT
GO

BEGIN
TRANSACTION

ALTER TABLE Customer
ADD CONSTRAINT CHK_Customer_ZIP CHECK (LEN(ZIP) = 5);

ALTER TABLE Customer
ADD CONSTRAINT CHK_Customer_Phone CHECK (LEN(Phone) = 10 AND ISNUMERIC(Phone) = 1);

ALTER TABLE Employee
ADD CONSTRAINT CHK_Employee_Phone CHECK (LEN(Phone) = 10 AND ISNUMERIC(Phone) = 1);

ALTER TABLE Customer
ADD CONSTRAINT CHK_Customer_Email CHECK (CHARINDEX('@', Email) > 0);

ALTER TABLE Employee
ADD CONSTRAINT CHK_Employee_Email CHECK (CHARINDEX('@', Email) > 0);

ALTER TABLE Vehicle
ADD CONSTRAINT CHK_Vehicle_VehicleType CHECK (VehicleType IN ('Truck', 'Trailer'));

ALTER TABLE PaymentMethod
ADD CONSTRAINT CHK_PaymentMethod_PaymentType CHECK (PaymentType IN ('Card', 'BankTransfer'));

COMMIT
TRANSACTION

