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


--Average Transaction Cost by Docking Area:
CREATE VIEW vw_AverageTransactionCostByDockingArea AS
SELECT
    da.DockingAreaID,
    da.DockingAreaName,
    AVG(t.COST) AS AverageTransactionCost
FROM
    Booking b
JOIN
    Vehicle v ON b.VehicleID = v.VehicleID
JOIN
    DockingArea da ON v.DockingAreaID = da.DockingAreaID
JOIN
    [Transaction] t ON b.TransactionID = t.TransactionID
GROUP BY
    da.DockingAreaID, da.DockingAreaName;

--Total Revenue by Vehicle Type:
CREATE VIEW vw_TotalRevenueByVehicleType AS
SELECT
    v.VehicleType,
    SUM(t.COST) AS TotalRevenue,
    Count(v.VehicleID) as VehicleTypeCount
FROM
    Booking b
JOIN
    Vehicle v ON b.VehicleID = v.VehicleID
JOIN
    [Transaction] t ON b.TransactionID = t.TransactionID
GROUP BY
    v.VehicleType;


-- View to Display Top Reward Earners:
CREATE VIEW vwTopRewardEarners
AS
SELECT
    r.CustomerID,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    SUM(r.RewardPoints) AS TotalRewardPoints
FROM
    RewardSystem r
JOIN
    Customer c ON r.CustomerID = c.CustomerID
GROUP BY
    r.CustomerID, c.FirstName, c.LastName;
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