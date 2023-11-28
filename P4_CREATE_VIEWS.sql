USE DMDD_FINAL_PROJECT
GO
-- View to Show Docking Areas with available Vehicle Counts:

CREATE VIEW vwAvailableVehicles AS
select d.DockingAreaID, d.DockingAreaName, d.DockingAddress, coalesce(t1.AvailableVehicles,0) as AvailableVehicles 
from DockingArea d left join 
(SELECT 
    DA.DockingAreaID,
    DA.DockingAreaName,
    COUNT(V.VehicleID) AS AvailableVehicles
FROM 
    DockingArea DA
LEFT JOIN 
    Vehicle V ON DA.DockingAreaID = V.DockingAreaID
WHERE 
    V.VehicleID NOT IN (SELECT VehicleID FROM Booking)
GROUP BY 
    DA.DockingAreaID, DA.DockingAreaName)t1
    on d.DockingAreaID=t1.DockingAreaID;
GO


-- View to Display Top Reward Earners:
CREATE VIEW vwTopRewardEarners
AS
SELECT TOP 3
    R.RewardID,
    R.RewardPoints,
    C.FirstName + ' ' + C.LastName AS CustomerName
FROM 
    RewardSystem R
    INNER JOIN Customer C ON R.CustomerID = C.CustomerID
ORDER BY 
    R.RewardPoints DESC;
GO

--View to Retrieve All Bookings with Customer Information:
CREATE VIEW vwBookingsWithCustomerInfo
AS
SELECT 
    B.BookingID,
    B.PickupLocation,
    B.DropOffLocation,
    B.StartDateTime,
    B.EndDateTime,
    B.TotalCost,
    C.FirstName + ' ' + C.LastName AS CustomerName,
    C.Email AS CustomerEmail
FROM 
    Booking B
    INNER JOIN Customer C ON B.CustomerID = C.CustomerID;
GO


-- View to Display Transaction Details with Payment Information:
CREATE VIEW vwTransactionPaymentDetails
AS
SELECT 
    T.TransactionID,
    T.RentDuration,
    T.Date_Time,
    T.COST,
    PM.PaymentID,
    PM.PaymentType
FROM 
    [Transaction] T
    LEFT JOIN PaymentMethod PM ON T.TransactionID = PM.TransactionID;
GO

--View to Display Total count by Payment Type
CREATE VIEW vwPaymentTypeCount
AS
SELECT
    COUNT(PM.PaymentID) AS PaymentCount,
    PM.PaymentType
FROM
    PaymentMethod PM
GROUP BY
    PM.PaymentType;
GO