INSERT INTO Customer (CustomerID, Fname, Lname, Age) VALUES 
    ('C10001', 'Aarav', 'Sharma', 27),
    ('C10002', 'Aarush', 'Patel', 32),
    ('C10003', 'Aditi', 'Gupta', 21),
    ('C10004', 'Advait', 'Singh', 19),
    ('C10005', 'Akhil', 'Kumar', 25),
    ('C10006', 'Ameya', 'Joshi', 36),
    ('C10007', 'Anaya', 'Srivastava', 41),
    ('C10008', 'Aniket', 'Mishra', 28),
    ('C10009', 'Anirudh', 'Nair', 23),
    ('C10010', 'Anjali', 'Reddy', 31),
    ('C10011', 'Ankit', 'Rao', 29),
    ('C10012', 'Ankur', 'Chopra', 37),
    ('C10013', 'Anmol', 'Shukla', 26),
    ('C10014', 'Ansh', 'Gupta', 22),
    ('C10015', 'Arnav', 'Sinha', 20),
    ('C10016', 'Arpit', 'Nanda', 30),
    ('C10017', 'Aryan', 'Thakur', 35),
    ('C10018', 'Ashna', 'Saxena', 33),
    ('C10019', 'Ashutosh', 'Bhatia', 24),
    ('C10020', 'Avni', 'Mehra', 39),
    ('C10021', 'Chetan', 'Kapoor', 42),
    ('C10022', 'Divya', 'Khanna', 38),
    ('C10023', 'Gaurav', 'Verma', 34),
    ('C10024', 'Ishaan', 'Dube', 18),
    ('C10025', 'Ishika', 'Rastogi', 40),
    ('C10026', 'Kritika', 'Sarin', 43),
    ('C10027', 'Manav', 'Bajaj', 44),
    ('C10028', 'Nandini', 'Tiwari', 45),
    ('C10029', 'Pranav', 'Malhotra', 46),
    ('C10030', 'Rhea', 'Jain', 47);
select*from Customer;

select Age from Customer 
Group By Age
having Count(Age)>1;