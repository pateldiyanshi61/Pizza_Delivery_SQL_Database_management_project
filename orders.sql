INSERT INTO Orders1 (OrderID, OrderDate, OrderTime, OrderStatus, CustomerID, PaymentID, DeliveryID, EmployeeID)
VALUES
('O0001', '2023-04-01', '09:30:00', 'Completed', 'C10001', 'PT001', 'DL001', 'EMP001'),
('O0002', '2023-04-01', '10:30:00', 'Completed', 'C10002', 'PT002', 'DL002', 'EMP002'),
('O0003', '2023-04-02', '10:00:00', 'Completed', 'C10003', 'PT003', 'DL003', 'EMP003'),
('O0004', '2023-04-02', '10:30:00', 'Cancelled', 'C10004', null, null, 'EMP004'),
('O0005', '2023-04-02', '11:00:00', 'Completed', 'C10005', 'PT004', 'DL004', 'EMP005'),
('O0006', '2023-04-03', '11:15:00', 'Completed', 'C10006', 'PT005', 'DL005', 'EMP006'),
('O0007', '2023-04-03', '11:30:00', 'Completed', 'C10007', 'PT006', 'DL006', 'EMP007'),
('O0008', '2023-04-04', '12:30:00', 'Completed', 'C10008', 'PT007', 'DL007', 'EMP008'),
('O0009', '2023-04-04', '13:00:00', 'Completed', 'C10009', 'PT008', 'DL008', 'EMP009'),
('O0010', '2023-04-05', '09:30:00', 'Cancelled', 'C10010', null, null, 'EMP010'),
('O0011', '2023-04-05', '13:30:00', 'Completed', 'C10011', 'PT009', 'DL009', 'EMP011'),
('O0012', '2023-04-06', '14:00:00', 'Completed', 'C10012', 'PT010', 'DL010', 'EMP012'),
('O0013', '2023-04-06', '14:00:00', 'Completed', 'C10013', 'PT011', 'DL011', 'EMP013'),
('O0014', '2023-04-07', '15:00:00', 'Completed', 'C10014', 'PT012', 'DL012', 'EMP014'),
('O0015', '2023-04-07', '15:30:00', 'Completed', 'C10015', 'PT013', 'DL013', 'EMP015'),
('O0016', '2023-04-07', '16:00:00', 'Cancelled', 'C10016', null, null, 'EMP016'),
('O0017', '2023-04-08', '16:00:00', 'Completed', 'C10017', 'PT014', 'DL014', 'EMP017'),
('O0018', '2023-04-08', '16:10:00', 'Completed', 'C10018', 'PT015', 'DL015', 'EMP018'),
('O0019', '2023-04-08', '17:00:00', 'Completed', 'C10019', 'PT016', 'DL016', 'EMP019'),
('O0020', '2023-04-09', '17:30:00', 'Completed', 'C10020', 'PT017', 'DL017', 'EMP020'),
('O0021', '2023-04-09', '18:00:00', 'Completed', 'C10021', 'PT018', 'DL018', 'EMP001'),
('O0022', '2023-04-09', '18:00:00', 'Completed', 'C10022', 'PT019', 'DL019', 'EMP002'),
('O0023', '2023-04-10', '18:00:00', 'Cancelled', 'C10023', null, null, 'EMP003'),
('O0024', '2023-04-10', '19:00:00', 'Completed', 'C10024', 'PT020', 'DL020', 'EMP004'),
('O0025', '2023-04-10', '19:00:00', 'Completed', 'C10025', 'PT021', 'DL021', 'EMP005'),
('O0026', '2023-04-11', '20:00:00', 'Completed', 'C10026', 'PT022', 'DL022', 'EMP006'),
('O0027', '2023-04-11', '20:00:00', 'Completed', 'C10027', 'PT023', 'DL023', 'EMP007'),
('O0028', '2023-04-12', '21:00:00', 'Completed', 'C10028', 'PT024', 'DL024', 'EMP008'),
('O0029', '2023-04-12', '21:30:00', 'Completed', 'C10029', 'PT025', 'DL025', 'EMP009'),
('O0030', '2023-04-12', '21:45:00', 'Cancelled', 'C10030', null, null, 'EMP010');
select * from Orders1;


create view Orders AS
select Orders1.OrderID, TotalAmount, OrderDate, OrderTime, OrderStatus, CustomerID, PaymentID, DeliveryID, EmployeeID from
(select Orders1.OrderID as OD, sum(Pizza.Price) as TotalAmount from
((Orders1 inner join Cart) inner join PizzaOrderDetails) inner Join pizza
on Orders1.OrderID=Cart.OrderID 
and Cart.CartID=PizzaOrderDetails.CartID 
and PizzaOrderDetails.PizzaID = Pizza.PizzaID
group by Orders1.OrderID) as D Right Join Orders1
on Orders1.OrderId=D.OD;
select * from Orders;
