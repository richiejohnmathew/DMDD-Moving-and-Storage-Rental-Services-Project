USE DMDD_FINAL_PROJECT;
GO

BEGIN TRY
    BEGIN TRANSACTION
-- Inserting into DockingArea
SET IDENTITY_INSERT DockingArea ON;
INSERT INTO DockingArea (DockingAreaID, DockingAreaName, DockingAddress, NumberOfVehicles) VALUES (1, 'Main Warehouse', '123 Street', 10);
INSERT INTO DockingArea (DockingAreaID, DockingAreaName, DockingAddress, NumberOfVehicles) VALUES (2, 'Distribution Center', '456 Avenue', 20);
INSERT INTO DockingArea (DockingAreaID, DockingAreaName, DockingAddress, NumberOfVehicles) VALUES (3, 'Express Hub', '789 Boulevard', 15);
INSERT INTO DockingArea (DockingAreaID, DockingAreaName, DockingAddress, NumberOfVehicles) VALUES (4, 'South Lot', '400 Elm Avenue', 8);
INSERT INTO DockingArea (DockingAreaID, DockingAreaName, DockingAddress, NumberOfVehicles) VALUES (5, 'West Yard', '500 Birch Lane', 8);
INSERT INTO DockingArea (DockingAreaID, DockingAreaName, DockingAddress, NumberOfVehicles) VALUES (6, 'Riverfront Dock', '600 River Road', 8);
SET IDENTITY_INSERT DockingArea OFF;

-- Inserting into Customer
SET IDENTITY_INSERT Customer ON;
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (1, 'John', 'Doe', 'johndoe@email.com', CONVERT(varbinary(max), 'password123'), '1234567890', '123 Elm St', 'Amherst', 'MA', '12345');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (2, 'Jane', 'Smith', 'janesmith@email.com', CONVERT(varbinary(max), 'password456'), '0987654321', '456 Oak St', 'Boston', 'MA', '67890');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (3, 'Alice', 'Brown', 'alicebrown@email.com', CONVERT(varbinary(max), 'password789'), '1122334455', '789 Pine St', 'Springfield', 'MA', '10112');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (4, 'Alice', 'Brown', 'alicebrown@email.com', CONVERT(varbinary(max), 'password789'), '1122334455', '789 Pine St', 'Springfield', 'MA', '10112');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (5, 'Emily', 'Davis', 'emilydavis@email.com', CONVERT(varbinary(max), 'password202'), '8765432109', '202 Oak St', 'Quincy', 'MA', '34567');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (6, 'Frank', 'Miller', 'frankmiller@email.com', CONVERT(varbinary(max), 'password303'), '7654321098', '303 Pine St', 'Amherst', 'MA', '45678');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (7, 'Grace', 'Anderson', 'graceanderson@email.com', CONVERT(varbinary(max), 'password404'), '6543210987', '404 Elm St', 'Boston', 'MA', '56789');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (8, 'Henry', 'White', 'henrywhite@email.com', CONVERT(varbinary(max), 'password505'), '5432109876', '505 Maple St', 'Springfield', 'MA', '67890');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (9, 'Ivy', 'Thompson', 'ivythompson@email.com', CONVERT(varbinary(max), 'password606'), '4321098765', '606 Oak St', 'Brookline', 'MA', '78901');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (10, 'Jack', 'Lee', 'jacklee@email.com', CONVERT(varbinary(max), 'password707'), '3210987654', '707 Pine St', 'Quincy', 'MA', '89012');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (11, 'Kate', 'Wilson', 'katewilson@email.com', CONVERT(varbinary(max), 'password808'), '2109876543', '808 Elm St', 'Amherst', 'MA', '90123');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (12, 'Leo', 'Evans', 'leoevans@email.com', CONVERT(varbinary(max), 'password909'), '1098765432', '909 Oak St', 'Boston', 'MA', '01234');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (13, 'Mia', 'Martinez', 'miamartinez@email.com', CONVERT(varbinary(max), 'password010'), '0987654321', '1010 Maple St', 'Springfield', 'MA', '12345');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (14, 'Noah', 'Hernandez', 'noahhernandez@email.com', CONVERT(varbinary(max), 'password111'), '9876543210', '111 Oak St', 'Brookline', 'MA', '23456');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (15, 'Olivia', 'Lopez', 'olivialopez@email.com', CONVERT(varbinary(max), 'password212'), '8765432109', '212 Pine St', 'Quincy', 'MA', '34567');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (16, 'Peter', 'Garcia', 'petergarcia@email.com', CONVERT(varbinary(max), 'password313'), '7654321098', '313 Elm St', 'Amherst', 'MA', '45678');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (17, 'Quinn', 'Perez', 'quinnperez@email.com', CONVERT(varbinary(max), 'password414'), '6543210987', '414 Oak St', 'Boston', 'MA', '56789');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (18, 'Ryan', 'Turner', 'ryanturner@email.com', CONVERT(varbinary(max), 'password515'), '5432109876', '515 Maple St', 'Springfield', 'MA', '67890');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (19, 'Sara', 'Harris', 'saraharris@email.com', CONVERT(varbinary(max), 'password616'), '4321098765', '616 Oak St', 'Quincy', 'MA', '78901');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (20, 'Tyler', 'Scott', 'tylerscott@email.com', CONVERT(varbinary(max), 'password717'), '3210987654', '717 Pine St', 'Quincy', 'MA', '89012');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (21, 'Zoe', 'Wright', 'zoewright@email.com', CONVERT(varbinary(max), 'password818'), '2109876543', '818 Elm St', 'Amherst', 'MA', '90123');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (22, 'Adam', 'Baker', 'adambaker@email.com', CONVERT(varbinary(max), 'password919'), '1098765432', '919 Oak St', 'Boston', 'MA', '01234');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (23, 'Benjamin', 'Green', 'benjamingreen@email.com', CONVERT(varbinary(max), 'password020'), '0987654321', '2020 Maple St', 'Springfield', 'MA', '12345');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (24, 'Charlotte', 'Ross', 'charlotteross@email.com', CONVERT(varbinary(max), 'password121'), '9876543210', '121 Oak St', 'Brookline', 'MA', '23456');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (25, 'Daniel', 'Ward', 'danielward@email.com', CONVERT(varbinary(max), 'password222'), '8765432109', '222 Pine St', 'Quincy', 'MA', '34567');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (26, 'Emma', 'King', 'emmaking@email.com', CONVERT(varbinary(max), 'password323'), '7654321098', '323 Elm St', 'Amherst', 'MA', '45678');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (27, 'Finn', 'Turner', 'finnturner@email.com', CONVERT(varbinary(max), 'password424'), '6543210987', '424 Oak St', 'Boston', 'MA', '56789');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (28, 'Grace', 'Perez', 'graceperez@email.com', CONVERT(varbinary(max), 'password525'), '5432109876', '525 Maple St', 'Springfield', 'MA', '67890');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (29, 'Henry', 'Taylor', 'henrytaylor@email.com', CONVERT(varbinary(max), 'password626'), '4321098765', '626 Oak St', 'Brookline', 'MA', '78901');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (30, 'Isabella', 'Harris', 'isabellaharris@email.com', CONVERT(varbinary(max), 'password727'), '3210987654', '727 Pine St', 'Quincy', 'MA', '89012');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (31, 'Jackson', 'Scott', 'jacksonscott@email.com', CONVERT(varbinary(max), 'password828'), '2109876543', '828 Elm St', 'Amherst', 'MA', '90123');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (32, 'Kylie', 'Baker', 'kyliebaker@email.com', CONVERT(varbinary(max), 'password929'), '1098765432', '929 Oak St', 'Boston', 'MA', '01234');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (33, 'Liam', 'Green', 'liamgreen@email.com', CONVERT(varbinary(max), 'password030'), '0987654321', '3030 Maple St', 'Springfield', 'MA', '12345');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (34, 'Mia', 'Ross', 'miaross@email.com', CONVERT(varbinary(max), 'password131'), '9876543210', '131 Oak St', 'Springfield', 'MA', '23456');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (35, 'Noah', 'Ward', 'noahward@email.com', CONVERT(varbinary(max), 'password232'), '8765432109', '232 Pine St', 'Boston', 'MA', '34567');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (36, 'Olivia', 'King', 'oliviaking@email.com', CONVERT(varbinary(max), 'password333'), '7654321098', '333 Elm St', 'Amherst', 'MA', '45678');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (37, 'Peter', 'Turner', 'peterturner@email.com', CONVERT(varbinary(max), 'password434'), '6543210987', '434 Oak St', 'Boston', 'MA', '56789');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (38, 'Quinn', 'Perez', 'quinnperez@email.com', CONVERT(varbinary(max), 'password535'), '5432109876', '535 Maple St', 'Amherst', 'MA', '67890');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (39, 'Ryan', 'Taylor', 'ryantaylor@email.com', CONVERT(varbinary(max), 'password636'), '4321098765', '636 Oak St', 'Amherst', 'MA', '78901');
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, [Password], Phone, Address, City, State, ZIP) VALUES (40, 'Sara', 'Harris', 'saraharris@email.com', CONVERT(varbinary(max), 'password737'), '3210987654', '737 Pine St', 'Amherst', 'MA', '89012');
SET IDENTITY_INSERT Customer OFF;

-- Inserting into Employee
SET IDENTITY_INSERT Employee ON;
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, Phone, Designation) VALUES 
(1, 'Alice', 'Johnson', 'alicej@email.com', '1112223333', 'Manager'),
(2, 'Bob', 'Williams', 'bobw@email.com', '4445556666', 'Assistant'),
(3, 'Charlie', 'Davis', 'charlied@email.com', '7778889999', 'Supervisor'),
(4, 'David', 'Smith', 'david.smith@email.com', '5554567890', 'Manager'),
(5, 'Emily', 'Wilson', 'emily.wilson@email.com', '5555678901', 'Assistant'),
(6, 'Frank', 'Brown', 'frank.brown@email.com', '5556789012', 'Supervisor'),
(7, 'Grace', 'Smith', 'grace.smith@email.com', '5557890123', 'Manager'),
(8, 'Henry', 'Davis', 'henry.davis@email.com', '5558901234', 'Assistant'),
(9, 'Isabella', 'Johnson', 'isabella.johnson@email.com', '5559012345', 'Supervisor'),
(10, 'Jacob', 'Williams', 'jacob.williams@email.com', '5550123456', 'Manager'),
(11, 'Katherine', 'Davis', 'katherine.davis@email.com', '5551234567', 'Assistant'),
(12, 'Liam', 'Smith', 'liam.smith@email.com', '5552345678', 'Supervisor'),
(13, 'Mia', 'Wilson', 'mia.wilson@email.com', '5553456789', 'Manager'),
(14, 'Noah', 'Brown', 'noah.brown@email.com', '5554567890', 'Assistant'),
(15, 'Olivia', 'Davis', 'olivia.davis@email.com', '5555678901', 'Supervisor'),
(16, 'Patrick', 'Smith', 'patrick.smith@email.com', '5556789012', 'Manager'),
(17, 'Quinn', 'Johnson', 'quinn.johnson@email.com', '5557890123', 'Assistant'),
(18, 'Rachel', 'Wilson', 'rachel.wilson@email.com', '5558901234', 'Supervisor'),
(19, 'Samuel', 'Brown', 'samuel.brown@email.com', '5559012345', 'Manager'),
(20, 'Taylor', 'Davis', 'taylor.davis@email.com', '5550123456', 'Assistant'),
(21, 'Michael', 'Johnson', 'michael@email.com', '5551234567', 'Manager'),
(22, 'Emily', 'Wilson', 'emily@email.com', '5552345678', 'Assistant'),
(23, 'Daniel', 'Brown', 'daniel@email.com', '5553456789', 'Supervisor'),
(24, 'Olivia', 'Smith', 'olivia@email.com', '5554567890', 'Manager'),
(25, 'Sophia', 'Davis', 'sophia@email.com', '5555678901', 'Assistant'),
(26, 'Ethan', 'Wilson', 'ethan@email.com', '5556789012', 'Supervisor'),
(27, 'Mia', 'Brown', 'mia@email.com', '5557890123', 'Manager'),
(28, 'Liam', 'Smith', 'liam@email.com', '5558901234', 'Assistant'),
(29, 'Ava', 'Davis', 'ava@email.com', '5559012345', 'Supervisor'),
(30, 'Noah', 'Wilson', 'noah@email.com', '5550123456', 'Manager'),
(31, 'Liam', 'Brown', 'liam@email.com', '5551234567', 'Assistant'),
(32, 'Olivia', 'Davis', 'olivia@email.com', '5552345678', 'Supervisor'),
(33, 'Ella', 'Smith', 'ella@email.com', '5553456789', 'Manager'),
(34, 'James', 'Wilson', 'james@email.com', '5554567890', 'Assistant'),
(35, 'Sophia', 'Davis', 'sophia@email.com', '5555678901', 'Supervisor'),
(36, 'Oliver', 'Brown', 'oliver@email.com', '5556789012', 'Manager'),
(37, 'Ella', 'Smith', 'ella@email.com', '5557890123', 'Assistant'),
(38, 'Liam', 'Davis', 'liam@email.com', '5558901234', 'Supervisor'),
(39, 'Olivia', 'Wilson', 'olivia@email.com', '5559012345', 'Manager'),
(40, 'Sophia', 'Brown', 'sophia@email.com', '5550123456', 'Assistant');
SET IDENTITY_INSERT Employee OFF;

-- Inserting into Vehicle
SET IDENTITY_INSERT Vehicle ON;
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (1, 1, 'Truck', 'REG001', '100 Main Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (2, 1, 'Trailer', 'REG002', '100 Main Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (3, 2, 'Truck', 'REG003', '200 Oak Street', 20);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (4, 2, 'Trailer', 'REG004', '200 Oak Street', 58);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (5, 3, 'Truck', 'REG005', '300 Pine Road', 17);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (6, 3, 'Trailer', 'REG006', '300 Pine Road', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (7, 6, 'Truck', 'REG007', '600 Maple Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (8, 6, 'Trailer', 'REG008', '600 Maple Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (9, 5, 'Truck', 'REG009', '500 Birch Lane', 10);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (10, 5, 'Trailer', 'REG010', '500 Birch Lane', 9);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (11, 1, 'Truck', 'REG011', '101 Main Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (12, 1, 'Trailer', 'REG012', '101 Main Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (13, 2, 'Truck', 'REG013', '200 Oak Street', 9);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (14, 2, 'Trailer', 'REG014', '200 Oak Street', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (15, 3, 'Truck', 'REG015', '300 Pine Road', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (16, 3, 'Trailer', 'REG016', '300 Pine Road', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (17, 4, 'Truck', 'REG017', '400 Elm Avenue', 20);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (18, 4, 'Trailer', 'REG018', '400 Elm Avenue', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (19, 6, 'Truck', 'REG019', '600 Maple Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (20, 6, 'Trailer', 'REG020', '600 Maple Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (21, 1, 'Truck', 'REG021', '101 Main Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (22, 1, 'Trailer', 'REG022', '101 Main Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (23, 2, 'Truck', 'REG023', '201 Oak Street', 20);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (24, 2, 'Trailer', 'REG024', '201 Oak Street', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (25, 3, 'Truck', 'REG025', '301 Pine Road', 17);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (26, 3, 'Trailer', 'REG026', '301 Pine Road', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (27, 4, 'Truck', 'REG027', '401 Elm Avenue', 15);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (28, 4, 'Trailer', 'REG028', '401 Elm Avenue', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (29, 5, 'Truck', 'REG029', '501 Birch Lane', 10);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (30, 5, 'Trailer', 'REG030', '501 Birch Lane', 9);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (31, 1, 'Truck', 'REG031', '102 Main Street', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (32, 1, 'Trailer', 'REG032', '102 Main Street', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (33, 2, 'Truck', 'REG033', '202 Oak Street', 9);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (34, 2, 'Truck', 'REG034', '202 Oak Street', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (35, 3, 'Truck', 'REG035', '302 Pine Road', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (36, 3, 'Truck', 'REG036', '302 Pine Road', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (37, 4, 'Truck', 'REG037', '402 Elm Avenue', 20);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (38, 4, 'Truck', 'REG038', '402 Elm Avenue', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (39, 5, 'Truck', 'REG039', '502 Birch Lane', 17);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (40, 5, 'Truck', 'REG040', '502 Birch Lane', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (41, 6, 'Truck', 'REG041', '600 Maple Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (42, 6, 'Trailer', 'REG042', '600 Maple Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (43, 1, 'Truck', 'REG043', '101 Main Street', 20);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (44, 1, 'Trailer', 'REG044', '101 Main Street', 58);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (45, 2, 'Truck', 'REG045', '200 Oak Street', 17);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (46, 2, 'Trailer', 'REG046', '200 Oak Street', 7);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (47, 3, 'Truck', 'REG047', '300 Pine Road', 15);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (48, 3, 'Trailer', 'REG048', '300 Pine Road', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (49, 4, 'Truck', 'REG049', '400 Elm Avenue', 10);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (50, 4, 'Trailer', 'REG050', '400 Elm Avenue', 9);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (51, 5, 'Truck', 'REG051', '500 Birch Lane', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (52, 5, 'Truck', 'REG052', '500 Birch Lane', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (53, 6, 'Truck', 'REG053', '600 Maple Street', 9);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (54, 6, 'Truck', 'REG054', '600 Maple Street', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (55, 1, 'Truck', 'REG055', '101 Main Street', 26);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (56, 1, 'Truck', 'REG056', '101 Main Street', 12);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (57, 2, 'Truck', 'REG057', '200 Oak Street', 20);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (58, 2, 'Truck', 'REG058', '200 Oak Street', 8);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (59, 3, 'Truck', 'REG059', '300 Pine Road', 17);
INSERT INTO Vehicle (VehicleID, DockingAreaID, VehicleType, RegistrationNumber, CurrentLocation, StorageSpaceSize) VALUES (60, 3, 'Truck', 'REG060', '300 Pine Road', 7);
SET IDENTITY_INSERT Vehicle OFF;

-- Inserting into Insurance
SET IDENTITY_INSERT Insurance ON;
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (1, 100, 'Basic Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (2, 200, 'Extended Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (3, 300, 'Premium Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (4, 120, 'Enhanced Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (5, 180, 'Comprehensive Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (6, 250, 'Premium Plus Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (7, 150, 'Standard Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (8, 220, 'Ultimate Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (9, 130, 'Enhanced Plus Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (10, 190, 'Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (11, 260, 'Platinum Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (12, 170, 'Premium Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (13, 230, 'Elite Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (14, 140, 'Superior Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (15, 200, 'Executive Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (16, 270, 'Diamond Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (17, 160, 'Elite Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (18, 240, 'Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (19, 110, 'Basic Plus Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (20, 280, 'Platinum Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (21, 250, 'Gold Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (22, 120, 'Ultimate Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (23, 200, 'Premium Executive Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (24, 180, 'Super Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (25, 150, 'Deluxe Plus Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (26, 230, 'Signature Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (27, 140, 'Elite Plus Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (28, 210, 'Platinum Plus Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (29, 160, 'Premium Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (30, 190, 'Executive Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (31, 200, 'Gold Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (32, 220, 'Supreme Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (33, 230, 'Diamond Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (34, 240, 'Elite Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (35, 250, 'Signature Deluxe Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (36, 260, 'Platinum Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (37, 270, 'Gold Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (38, 280, 'Diamond Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (39, 120, 'Executive Supreme Coverage');
INSERT INTO Insurance (InsuranceID, Premium, Details) VALUES (40, 130, 'Platinum Executive Coverage');
SET IDENTITY_INSERT Insurance OFF;

-- Inserting into Transaction
SET IDENTITY_INSERT [Transaction] ON;
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (1, 24, '2023-11-22 10:00:00', 150.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (2, 48, '2023-11-23 10:00:00', 300.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (3, 72, '2023-11-24 10:00:00', 450.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (4, 36, '2023-11-25 09:30:00', 250.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (5, 24, '2023-11-26 12:15:00', 180.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (6, 48, '2023-11-27 08:45:00', 320.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (7, 72, '2023-11-28 14:30:00', 480.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (8, 24, '2023-11-29 11:00:00', 150.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (9, 36, '2023-11-30 10:30:00', 270.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (10, 48, '2023-12-01 13:45:00', 350.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (11, 72, '2023-12-02 09:00:00', 490.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (12, 24, '2023-12-03 16:15:00', 160.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (13, 36, '2023-12-04 14:30:00', 280.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (14, 48, '2023-12-05 11:45:00', 360.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (15, 72, '2023-12-06 10:00:00', 500.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (16, 24, '2023-12-07 08:15:00', 170.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (17, 36, '2023-12-08 12:30:00', 290.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (18, 48, '2023-12-09 15:45:00', 380.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (19, 72, '2023-12-10 09:30:00', 510.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (20, 24, '2023-12-11 11:00:00', 180.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (21, 36, '2023-12-12 10:30:00', 300.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (22, 48, '2023-12-13 13:45:00', 400.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (23, 72, '2023-12-14 09:00:00', 520.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (24, 24, '2023-12-15 16:15:00', 190.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (25, 36, '2023-12-16 14:30:00', 320.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (26, 48, '2023-12-17 11:45:00', 420.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (27, 72, '2023-12-18 10:00:00', 540.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (28, 24, '2023-12-19 08:15:00', 200.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (29, 36, '2023-12-20 12:30:00', 340.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (30, 48, '2023-12-21 15:45:00', 440.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (31, 72, '2023-12-22 09:30:00', 560.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (32, 24, '2023-12-23 11:00:00', 210.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (33, 36, '2023-12-24 10:30:00', 360.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (34, 48, '2023-12-25 13:45:00', 460.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (35, 72, '2023-12-26 09:00:00', 580.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (36, 24, '2023-12-27 16:15:00', 220.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (37, 36, '2023-12-28 14:30:00', 380.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (38, 48, '2023-12-29 11:45:00', 480.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (39, 72, '2023-12-30 10:00:00', 600.00);
INSERT INTO [Transaction] (TransactionID, RentDuration, Date_Time, COST) VALUES (40, 24, '2023-12-31 08:15:00', 230.00);
SET IDENTITY_INSERT [Transaction] OFF;

-- Inserting into Booking
EXEC AddBooking 7, 5, 6, 10, 'Main Warehouse', 'Riverfront Dock', '2023-11-28 09:00:00', '2023-11-29 09:00:00', 120.00;
EXEC AddBooking 8, 6, 7, 11, 'Distribution Center', 'Uptown Station', '2023-11-30 10:00:00', '2023-12-01 10:00:00', 150.00;
EXEC AddBooking 9, 7, 8, 12, 'Express Hub', 'Downtown Parking', '2023-12-02 11:00:00', '2023-12-03 11:00:00', 200.00;
EXEC AddBooking 10, 8, 9, 13, 'South Lot', 'Industrial Park', '2023-12-04 08:00:00', '2023-12-05 08:00:00', 100.00;
EXEC AddBooking 11, 9, 10, 14, 'West Yard', 'Airport Garage', '2023-12-06 07:00:00', '2023-12-07 07:00:00', 175.00;
EXEC AddBooking 12, 10, 11, 15, 'Riverfront Dock', 'Harbor Site', '2023-12-08 06:00:00', '2023-12-09 06:00:00', 130.00;
EXEC AddBooking 13, 12, 13, 17, 'Downtown Parking', 'City Center Depot', '2023-12-12 10:00:00', '2023-12-13 10:00:00', 140.00;
EXEC AddBooking 14, 13, 14, 18, 'Industrial Park', 'Railway Siding', '2023-12-14 11:00:00', '2023-12-15 11:00:00', 110.00;
EXEC AddBooking 15, 14, 15, 19, 'Airport Garage', 'Freight Terminal', '2023-12-16 12:00:00', '2023-12-17 12:00:00', 180.00;
EXEC AddBooking 16, 15, 16, 20, 'Logistics Base', 'Lakeside Dock', '2023-12-18 13:00:00', '2023-12-19 13:00:00', 135.00;
EXEC AddBooking 17, 16, 17, 21, 'Suburban Compound', 'Shipping Hub', '2023-12-20 14:00:00', '2023-12-21 14:00:00', 165.00;
EXEC AddBooking 18, 17, 18, 22, 'City Center Depot', 'Mountain Base', '2023-12-22 15:00:00', '2023-12-23 15:00:00', 145.00;
EXEC AddBooking 19, 18, 19, 23, 'Railway Siding', 'Valley Station', '2023-12-24 16:00:00', '2023-12-25 16:00:00', 120.00;
EXEC AddBooking 20, 19, 20, 24, 'Freight Terminal', 'Desert Outpost', '2023-12-26 17:00:00', '2023-12-27 17:00:00', 170.00;
EXEC AddBooking 21, 20, 21, 25, 'Logistics Base', 'Lakeside Dock', '2023-12-28 18:00:00', '2023-12-29 18:00:00', 150.00;
EXEC AddBooking 22, 21, 22, 26, 'Suburban Compound', 'Forest Edge Lot', '2023-12-30 19:00:00', '2023-12-31 19:00:00', 130.00;
EXEC AddBooking 23, 22, 23, 27, 'City Center Depot', 'Hilltop Haven', '2023-09-01 08:00:00', '2023-09-02 08:00:00', 155.00;
EXEC AddBooking 24, 23, 24, 28, 'Railway Siding', 'Meadow Field', '2023-09-03 09:00:00', '2023-09-04 09:00:00', 175.00;
EXEC AddBooking 25, 24, 25, 29, 'Freight Terminal', 'Prairie Site', '2023-09-05 10:00:00', '2023-09-06 10:00:00', 160.00;
EXEC AddBooking 26, 25, 26, 30, 'Logistics Base', 'Canyon Edge', '2023-09-07 11:00:00', '2023-09-08 11:00:00', 140.00;
EXEC AddBooking 27, 26, 27, 31, 'Suburban Compound', 'Coastal Point', '2023-09-09 12:00:00', '2023-09-10 12:00:00', 165.00;
EXEC AddBooking 28, 1, 2, 32, 'Main Warehouse', 'Distribution Center', '2023-10-01 08:00:00', '2023-10-02 08:00:00', 120.00;
EXEC AddBooking 29, 2, 3, 33, 'Distribution Center', 'Express Hub', '2023-10-03 10:00:00', '2023-10-04 10:00:00', 150.00;
EXEC AddBooking 30, 3, 4, 34, 'Express Hub', 'South Lot', '2023-10-05 11:00:00', '2023-10-06 11:00:00', 200.00;
EXEC AddBooking 31, 4, 5, 35, 'South Lot', 'West Yard', '2023-10-07 08:00:00', '2023-10-08 08:00:00', 100.00;
-- Removed duplicates from here onwards


-- Inserting into Complain
SET IDENTITY_INSERT Complain ON;
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (1, 1, 1, '2023-11-22', '2023-11-22 15:00:00', 'Late delivery');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (2, 2, 2, '2023-11-23', '2023-11-23 16:00:00', 'Damaged goods');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (3, 3, 3, '2023-11-24', '2023-11-24 17:00:00', 'Wrong delivery');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (4, 4, 4, '2023-11-26', '2023-11-26 14:00:00', 'Delayed shipment');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (5, 5, 5, '2023-11-27', '2023-11-27 15:00:00', 'Incorrect item');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (6, 6, 6, '2023-11-28', '2023-11-28 16:00:00', 'Missing parts');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (7, 7, 7, '2023-11-29', '2023-11-29 17:00:00', 'Damaged goods');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (8, 8, 8, '2023-11-30', '2023-11-30 18:00:00', 'Late delivery');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (9, 9, 9, '2023-12-01', '2023-12-01 19:00:00', 'Incorrect size');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (10, 10, 10, '2023-12-02', '2023-12-02 20:00:00', 'Defective item');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (11, 11, 11, '2023-12-02', '2023-12-02 17:00:00', 'Damaged packaging');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (12, 12, 12, '2023-12-03', '2023-12-03 18:00:00', 'Incorrect size');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (13, 13, 13, '2023-12-04', '2023-12-04 19:00:00', 'Wrong color');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (14, 14, 14, '2023-12-05', '2023-12-05 20:00:00', 'Late delivery');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (15, 15, 15, '2023-12-06', '2023-12-06 21:00:00', 'Missing accessories');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (16, 16, 16, '2023-12-07', '2023-12-07 22:00:00', 'Defective item');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (17, 17, 17, '2023-12-08', '2023-12-08 23:00:00', 'Late shipment');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (18, 18, 18, '2023-12-09', '2023-12-09 00:00:00', 'Incomplete order');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (19, 19, 19, '2023-12-10', '2023-12-10 01:00:00', 'Faulty product');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (20, 20, 20, '2023-12-11', '2023-12-11 02:00:00', 'Poor quality');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (21, 21, 21, '2023-12-12', '2023-12-12 03:00:00', 'Damaged packaging');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (22, 22, 22, '2023-12-13', '2023-12-13 04:00:00', 'Incorrect size');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (23, 23, 23, '2023-12-14', '2023-12-14 05:00:00', 'Wrong color');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (24, 24, 24, '2023-12-15', '2023-12-15 06:00:00', 'Late delivery');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (25, 25, 25, '2023-12-16', '2023-12-16 07:00:00', 'Missing accessories');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (26, 26, 26, '2023-12-17', '2023-12-17 08:00:00', 'Defective item');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (27, 27, 27, '2023-12-18', '2023-12-18 09:00:00', 'Late shipment');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (28, 28, 28, '2023-12-19', '2023-12-19 10:00:00', 'Incomplete order');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (29, 29, 29, '2023-12-20', '2023-12-20 11:00:00', 'Faulty product');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (30, 30, 30, '2023-12-21', '2023-12-21 12:00:00', 'Poor quality');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (31, 31, 31, '2023-12-22', '2023-12-22 13:00:00', 'Incorrect billing');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (32, 32, 32, '2023-12-23', '2023-12-23 14:00:00', 'Missing manual');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (33, 33, 33, '2023-12-24', '2023-12-24 15:00:00', 'Delayed response');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (34, 34, 34, '2023-12-25', '2023-12-25 16:00:00', 'Damaged during transit');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (35, 35, 35, '2023-12-26', '2023-12-26 17:00:00', 'Incorrect specifications');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (36, 36, 36, '2023-12-27', '2023-12-27 18:00:00', 'Package tampered');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (37, 37, 37, '2023-12-28', '2023-12-28 19:00:00', 'Incorrect quantity');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (38, 38, 38, '2023-12-29', '2023-12-29 20:00:00', 'Product expired');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (39, 39, 39, '2023-12-30', '2023-12-30 21:00:00', 'Missing parts');
INSERT INTO Complain (ComplainID, CustomerID, EmployeeID, ComplainDate, ComplainTime, Details) VALUES (40, 40, 40, '2023-12-31', '2023-12-31 22:00:00', 'Wrong color received');
SET IDENTITY_INSERT Complain OFF;

-- Inserting into PaymentMethod
SET IDENTITY_INSERT PaymentMethod ON;
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (1, 1, 1, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (2, 2, 2, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (3, 3, 3, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (4, 4, 4, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (5, 5, 5, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (6, 6, 6, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (7, 7, 7, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (8, 8, 8, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (9, 9, 9, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (10, 10, 10, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (11, 11, 11, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (12, 12, 12, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (13, 13, 13, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (14, 14, 14, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (15, 15, 15, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (16, 16, 16, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (17, 17, 17, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (18, 18, 18, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (19, 19, 19, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (20, 20, 20, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (21, 21, 21, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (22, 22, 22, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (23, 23, 23, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (24, 24, 24, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (25, 25, 25, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (26, 26, 26, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (27, 27, 27, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (28, 28, 28, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (29, 29, 29, 'BankTransfer');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (30, 30, 30, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (31, 31, 31, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (32, 32, 32, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (33, 33, 33, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (34, 34, 34, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (35, 35, 35, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (36, 36, 36, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (37, 37, 37, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (38, 38, 38, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (39, 39, 39, 'Card');
INSERT INTO PaymentMethod (PaymentID, TransactionID, CustomerID, PaymentType) VALUES (40, 40, 40, 'Card');

SET IDENTITY_INSERT PaymentMethod OFF;

-- Inserting into RewardSystem (No identity column)
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (100, 1, 1);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (200, 2, 2);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (300, 3, 3);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (100, 4, 1);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (200, 5, 2);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (300, 6, 3);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (120, 1, 10);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (130, 2, 12);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (140, 3, 14);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (110, 4, 16);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (125, 5, 18);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (135, 6, 20);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (145, 1, 22);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (150, 2, 24);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (155, 3, 26);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (160, 4, 28);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (165, 5, 30);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (170, 6, 32);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (175, 1, 34);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (180, 2, 36);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (185, 3, 38);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (190, 4, 40);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (195, 5, 4);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (200, 6, 6);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (205, 1, 8);
INSERT INTO RewardSystem (RewardPoints, DockingAreaID, CustomerID) VALUES (210, 2, 10);


-- Inserting into Truck (VehicleID is a foreign key, not an identity column)
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (1, 'Flatbed', 'Hydraulic', 10000, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (2, 'Box', 'Manual', 12000, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (5, 'Refrigerated', 'Hydraulic', 8000, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (7, 'Box', 'Manual', 9500, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (9, 'Flatbed', 'Hydraulic', 11000, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (11, 'Box', 'Automatic', 8500, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (13, 'Refrigerated', 'Hydraulic', 7500, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (15, 'Flatbed', 'Automatic', 9200, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (17, 'Refrigerated', 'Hydraulic', 7800, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (19, 'Box', 'Manual', 10500, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (21, 'Flatbed', 'Automatic', 8900, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (23, 'Refrigerated', 'Hydraulic', 7200, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (25, 'Box', 'Manual', 9800, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (27, 'Flatbed', 'Automatic', 8500, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (29, 'Refrigerated', 'Hydraulic', 6800, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (31, 'Box', 'Manual', 9300, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (33, 'Flatbed', 'Automatic', 9100, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (34, 'Refrigerated', 'Automatic', 9500, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (35, 'Refrigerated', 'Hydraulic', 7600, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (36, 'Flatbed', 'Manual', 11000, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (37, 'Box', 'Manual', 10200, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (38, 'Box', 'Automatic', 8000, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (39, 'Flatbed', 'Automatic', 8800, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (40, 'Tanker', 'Manual', 10500, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (50, 'Box', 'Manual', 12000, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (51, 'Flatbed', 'Automatic', 9500, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (52, 'Box', 'Manual', 11000, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (53, 'Flatbed', 'Automatic', 8000, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (54, 'Box', 'Manual', 13000, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (55, 'Flatbed', 'Automatic', 9200, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (56, 'Box', 'Manual', 10500, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (57, 'Flatbed', 'Automatic', 8700, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (58, 'Box', 'Manual', 11500, 'Gasoline');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (59, 'Flatbed', 'Automatic', 8900, 'Diesel');
INSERT INTO Truck (VehicleID, TruckType, Ramp, Mileage, FuelType) VALUES (60, 'Box', 'Manual', 12500, 'Gasoline');


-- Inserting into Trailer (VehicleID is a foreign key, not an identity column)
-- Ensure you have another VehicleID inserted into Vehicle table before inserting here
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (3, 'Open', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (4, 'Enclosed', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (6, 'Open', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (8, 'Utility', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (10, 'Flatbed', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (12, 'Enclosed', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (14, 'Open', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (16, 'Utility', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (18, 'Flatbed', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (20, 'Enclosed', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (22, 'Open', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (24, 'Utility', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (26, 'Flatbed', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (28, 'Enclosed', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (30, 'Open', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (32, 'Utility', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (34, 'Flatbed', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (36, 'Enclosed', 'Bumper Pull');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (38, 'Open', 'Gooseneck');
INSERT INTO Trailer (VehicleID, TrailerType, HitchType) VALUES (40, 'Utility', 'Bumper Pull');

-- Inserting into Card (PaymentID is a foreign key, not an identity column)
-- Ensure you have another PaymentID inserted into PaymentMethod table before inserting here
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (1,CONVERT(varbinary(max), '1234567890123456'), 'John Doe', 'Visa', '2025-12-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (2, CONVERT(varbinary(max), '6543210987654321'), 'Jane Smith', 'MasterCard', '2024-11-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (4, CONVERT(varbinary(max), '9876543210123456'), 'Alice Brown', 'American Express', '2023-10-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (6, CONVERT(varbinary(max), '1230123012301230'), 'Mia Ramirez', 'Discover', '2024-08-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (8, CONVERT(varbinary(max), '4567890123456789'), 'Carter Luna', 'Visa', '2025-11-28');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (10, CONVERT(varbinary(max), '7890123456789012'), 'Madison Harvey', 'MasterCard', '2023-09-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (12, CONVERT(varbinary(max), '2345678901234567'), 'Alexander Nguyen', 'American Express', '2024-12-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (14, CONVERT(varbinary(max), '3456789012345678'), 'Luna Bryan', 'Discover', '2025-10-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (16, CONVERT(varbinary(max), '4567890123456789'), 'Henry Carr', 'Visa', '2023-11-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (18, CONVERT(varbinary(max), '5678901234567890'), 'Aria Cooper', 'MasterCard', '2024-08-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (20, CONVERT(varbinary(max), '6789012345678901'), 'Leo Flynn', 'American Express', '2025-09-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (22, CONVERT(varbinary(max), '7890123456789012'), 'Grace Lambert', 'Discover', '2023-10-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (24, CONVERT(varbinary(max), '8901234567890123'), 'Jack Collier', 'Visa', '2024-12-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (26, CONVERT(varbinary(max), '9012345678901234'), 'Avery Whitaker', 'MasterCard', '2025-11-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (28, CONVERT(varbinary(max), '0123456789012345'), 'Milo Drake', 'American Express', '2023-09-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (30, CONVERT(varbinary(max), '1234567890123456'), 'Evelyn McBride', 'Discover', '2024-10-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (31, CONVERT(varbinary(max), '9876543210123456'), 'John Doe', 'Visa', '2025-12-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (32, CONVERT(varbinary(max), '8765432109876543'), 'Jane Smith', 'MasterCard', '2024-11-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (33, CONVERT(varbinary(max), '7654321098765432'), 'Alice Brown', 'American Express', '2023-10-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (34, CONVERT(varbinary(max), '6543210987654321'), 'Mia Ramirez', 'Discover', '2024-08-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (35, CONVERT(varbinary(max), '5432101230123012'), 'Carter Luna', 'Visa', '2025-11-28');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (36, CONVERT(varbinary(max), '4321097890123456'), 'Madison Harvey', 'MasterCard', '2023-09-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (37, CONVERT(varbinary(max), '3210982345678901'), 'Alexander Nguyen', 'American Express', '2024-12-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (38, CONVERT(varbinary(max), '2109873456789012'), 'Luna Bryan', 'Discover', '2025-10-31');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (39, CONVERT(varbinary(max), '1098764567890123'), 'Henry Carr', 'Visa', '2023-11-30');
INSERT INTO [Card] (PaymentID, CardNumber, Name, CardType, ExpiryDate) VALUES (40, CONVERT(varbinary(max), '0987655678901234'), 'Aria Cooper', 'MasterCard', '2024-08-30');

-- Inserting into BankAccount (PaymentID is a foreign key, not an identity column)
-- Ensure you have another PaymentID inserted into PaymentMethod table before inserting here
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (3, 'John Doe', CONVERT(varbinary(max), '000123456789'), '111000111', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (5, 'Oliver Hernandez', CONVERT(varbinary(max), '000987654321'), '222000222', 'Savings');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (7, 'Sophia Wright', CONVERT(varbinary(max), '000111122223'), '333000333', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (9, 'Lucas Long', CONVERT(varbinary(max), '000444455556'), '444000444', 'Savings');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (11, 'Ella King', CONVERT(varbinary(max), '000777788889'), '555000555', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (13, 'Logan Ward', CONVERT(varbinary(max), '000123456789'), '666000666', 'Savings');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (15, 'Mia Ramirez', CONVERT(varbinary(max), '000234567890'), '777000777', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (17, 'Jackson Bush', CONVERT(varbinary(max), '000345678901'), '888000888', 'Savings');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (19, 'Scarlett Fisher', CONVERT(varbinary(max), '000456789012'), '999000999', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (21, 'Aiden Saunders', CONVERT(varbinary(max), '000567890123'), '101010101', 'Savings');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (23, 'Chloe Vargas', CONVERT(varbinary(max), '000678901234'), '111111111', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (25, 'Carter Luna', CONVERT(varbinary(max), '000789012345'), '121212121', 'Savings');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (27, 'Madison Harvey', CONVERT(varbinary(max), '000890123456'), '131313131', 'Checking');
INSERT INTO BankAccount (PaymentID, AccountHolderName, BankAccountNumber, RoutingNumber, AccountType) VALUES (29, 'Alexander Nguyen', CONVERT(varbinary(max), '000901234567'), '141414141', 'Savings');

    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    -- If an error occurs, roll back the transaction
    ROLLBACK TRANSACTION

    -- You can log the error or return it
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR(@ErrorMessage, 16, 1);
END CATCH