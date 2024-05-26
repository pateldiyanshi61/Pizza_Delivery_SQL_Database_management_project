INSERT INTO Delivery (DeliveryID, DepartureTime, ArrivalTime, DeliveryStatus, DeliveryManID)
VALUES 
('DL001', '10:00:00', '11:00:00', 'Delivered', 'DM001'),
('DL002', '10:30:00', '11:30:00', 'Delivered', 'DM001'),
('DL003', '11:00:00', null, 'Pending', 'DM002'),
('DL004', '11:30:00', null, 'Pending', 'DM002'),
('DL005', '12:00:00', '13:00:00', 'Delivered', 'DM003'),
('DL006', '12:30:00', '13:30:00', 'Delivered', 'DM003'),
('DL007', '13:00:00', '14:00:00', 'Delivered', 'DM004'),
('DL008', '13:30:00', null, 'Pending', 'DM004'),
('DL009', '14:00:00', '15:00:00', 'Delivered', 'DM005'),
('DL010', '14:30:00', '15:30:00', 'Delivered', 'DM005'),
('DL011', '15:00:00', '16:00:00', 'Delivered', 'DM006'),
('DL012', '15:30:00', null, 'Pending', 'DM006'),
('DL013', '16:00:00', '17:00:00', 'Delivered', 'DM007'),
('DL014', '16:30:00', '17:30:00', 'Delivered', 'DM007'),
('DL015', '17:00:00', '18:00:00', 'Delivered', 'DM008'),
('DL016', '17:30:00', '18:30:00', 'Delivered', 'DM008'),
('DL017', '18:00:00', '19:00:00', 'Delivered', 'DM009'),
('DL018', '18:30:00', '19:30:00', 'Delivered', 'DM009'),
('DL019', '19:00:00', '20:00:00', 'Delivered', 'DM010'),
('DL020', '19:30:00', null, 'Pending', 'DM010'),
('DL021', '20:00:00', '21:00:00', 'Delivered', 'DM001'),
('DL022', '20:30:00', '21:30:00', 'Delivered', 'DM002'),
('DL023', '21:00:00', '22:00:00', 'Delivered', 'DM003'),
('DL024', '21:30:00', '22:30:00', 'Delivered', 'DM004'),
('DL025', '22:00:00', '23:00:00', 'Delivered', 'DM005');
select*from Delivery;

