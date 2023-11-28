USE DMDD_FINAL_PROJECT
GO

--1)Creating Non-clustered Index on Table DockingArea with column DockingAreaName,DockingAddress

CREATE NONCLUSTERED INDEX idx_DockingArea
ON DockingArea (DockingAreaName, DockingAddress);

--Non-clustered Index on State:

CREATE NONCLUSTERED INDEX idx_Customer_State
ON Customer (State);

--3)Creating Non-clustered Index on Table Vehicle with column VehicleType

CREATE NONCLUSTERED INDEX idx_VehicleType
ON Vehicle (VehicleType);

--4)Creating Non-clustered Index on Payment Method with column PaymentType

CREATE NONCLUSTERED INDEX idx_PaymentType
ON PaymentMethod (PaymentType);