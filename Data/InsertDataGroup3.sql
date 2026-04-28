use [MIST353_Group3];

INSERT INTO Requester (RequesterFirstName, RequesterLastName, RequesterEmail, RequesterPhone)
VALUES
-- Apartment 101 (2 residents)
('Emily', 'Carson', 'emily.carson@apt.com', '304-555-1001'),
('Jake', 'Carson', 'jake.carson@apt.com', '304-555-1002'),

-- Apartment 102 (1 resident)
('Marcus', 'Hill', 'marcus.hill@apt.com', '304-555-1003'),

-- Apartment 103 (2 residents)
('Sarah', 'Lopez', 'sarah.lopez@apt.com', '304-555-1004'),
('Ana', 'Lopez', 'ana.lopez@apt.com', '304-555-1005'),

-- Apartment 104 (1 resident)
('David', 'Nguyen', 'david.nguyen@apt.com', '304-555-1006'),

-- Apartment 105 (2 residents)
('Liam', 'Baker', 'liam.baker@apt.com', '304-555-1007'),
('Noah', 'Baker', 'noah.baker@apt.com', '304-555-1008'),

-- Apartment 106 (1 resident)
('Olivia', 'Reed', 'olivia.reed@apt.com', '304-555-1009'),

-- Apartment 107 (2 residents)
('Sophia', 'Turner', 'sophia.turner@apt.com', '304-555-1010'),
('Mason', 'Turner', 'mason.turner@apt.com', '304-555-1011'),

-- Apartment 108 (1 resident)
('Ava', 'Mitchell', 'ava.mitchell@apt.com', '304-555-1012'),

-- Apartment 109 (2 residents)
('Ethan', 'Brooks', 'ethan.brooks@apt.com', '304-555-1013'),
('Logan', 'Brooks', 'logan.brooks@apt.com', '304-555-1014'),

-- Apartment 110 (1 resident)
('Chloe', 'Sanders', 'chloe.sanders@apt.com', '304-555-1015'),

-- Apartment 201 (2 residents)
('Isabella', 'Price', 'isabella.price@apt.com', '304-555-1016'),
('Aiden', 'Price', 'aiden.price@apt.com', '304-555-1017'),

-- Apartment 202 (1 resident)
('Harper', 'Cole', 'harper.cole@apt.com', '304-555-1018'),

-- Apartment 203 (2 residents)
('Ella', 'Morgan', 'ella.morgan@apt.com', '304-555-1019'),
('Zoe', 'Morgan', 'zoe.morgan@apt.com', '304-555-1020'),

-- Apartment 204 (1 resident)
('Lucas', 'Diaz', 'lucas.diaz@apt.com', '304-555-1021'),

-- Apartment 205 (2 residents)
('Henry', 'Foster', 'henry.foster@apt.com', '304-555-1022'),
('Owen', 'Foster', 'owen.foster@apt.com', '304-555-1023'),

-- Apartment 206 (1 resident)
('Mila', 'Henderson', 'mila.henderson@apt.com', '304-555-1024'),

-- Apartment 207 (2 residents)
('Aria', 'Parker', 'aria.parker@apt.com', '304-555-1025'),
('Ella', 'Parker', 'ella.parker@apt.com', '304-555-1026'),

-- Apartment 208 (1 resident)
('James', 'Wright', 'james.wright@apt.com', '304-555-1027'),

-- Apartment 209 (2 residents)
('Levi', 'Stewart', 'levi.stewart@apt.com', '304-555-1028'),
('Wyatt', 'Stewart', 'wyatt.stewart@apt.com', '304-555-1029'),

-- Apartment 210 (1 resident)
('Grace', 'Bennett', 'grace.bennett@apt.com', '304-555-1030'),

-- Apartment 211 (2 residents)
('Nora', 'Hayes', 'nora.hayes@apt.com', '304-555-1031'),
('Eli', 'Hayes', 'eli.hayes@apt.com', '304-555-1032'),

-- Apartment 212 (1 resident)
('Piper', 'James', 'piper.james@apt.com', '304-555-1033'),

-- Apartment 213 (2 residents)
('Caleb', 'Ross', 'caleb.ross@apt.com', '304-555-1034'),
('Maya', 'Ross', 'maya.ross@apt.com', '304-555-1035'),

-- Apartment 214 (1 resident)
('Julian', 'Scott', 'julian.scott@apt.com', '304-555-1036'),

-- Apartment 215 (2 residents)
('Ruby', 'Adams', 'ruby.adams@apt.com', '304-555-1037'),
('Ivy', 'Adams', 'ivy.adams@apt.com', '304-555-1038'),

-- Apartment 216 (1 resident)
('Theo', 'Carter', 'theo.carter@apt.com', '304-555-1039');

--select * from Requester;

go

INSERT INTO MaintenanceSupervisor (MaintenanceSupervisorFirstName, MaintenanceSupervisorLastName, MaintenanceSupervisorPhone)
VALUES
('John', 'Reynolds', '304-555-7788'),
('Karen', 'Mitchell', '304-555-8899');


go

INSERT INTO MaintenanceTech (MaintenanceTechFirstName, MaintenanceTechLastName, MaintenanceTechEmail, MaintenanceTechCalendar, MaintenanceTechCertifications, MaintenanceTechPerformance)
VALUES
-- HVAC 
('Alex', 'Turner', 'alex.turner@aptmaint.com', 'Cal1', 'HVAC Certified', 4.75),
('Megan', 'Stone', 'megan.stone@aptmaint.com', 'Cal2', 'HVAC Certified', 4.60),

-- Electrical
('Brianna', 'Shaw', 'brianna.shaw@aptmaint.com', 'Cal3', 'Electrical Safety, OSHA-10', 4.80),
('Derek', 'Coleman', 'derek.coleman@aptmaint.com', 'Cal4', 'Electrical Technician Level II', 4.55),

-- Plumbing
('Carlos', 'Ramirez', 'carlos.ramirez@aptmaint.com', 'Cal5', 'Plumbing Level II', 4.90),
('Luis', 'Martinez', 'luis.martinez@aptmaint.com', 'Cal6', 'Certified Plumber', 4.70),

-- General/Carpentry/Appliance
('Jenna', 'Kim', 'jenna.kim@aptmaint.com', 'Cal7', 'General Maintenance, Carpentry', 4.40),
('Sam', 'Walker', 'sam.walker@aptmaint.com', 'Cal8', 'Appliance Repair Specialist', 4.50);


go

INSERT INTO MaintenanceTechSkills (MaintenanceTechSkillName)
VALUES
('HVAC'),
('Electrical'),
('Plumbing'),
('Carpentry'),
('Appliance Repair'),
('General Maintenance');


go

INSERT INTO TechSkills (MaintenanceTechID, MaintenanceTechSkillID)
VALUES
-- HVAC Techs
(1, 1), (1, 6),
(2, 1), (2, 6),

-- Electrical Techs
(3, 2), (3, 6),
(4, 2), (4, 6),

-- Plumbing Techs
(5, 3), (5, 6),
(6, 3), (6, 6),

-- General/Carpentry/Appliance
(7, 4), (7, 6),
(8, 5), (8, 6);


go

INSERT INTO Request (RequesterID, MaintenanceSupervisorID, RequestNotes, RequestIssue, MaintenanceSupervisorApproval)
VALUES
(1, 1, 'AC not cooling properly', 'HVAC issue', 1),
(3, 2, 'Outlet sparks when plugging in appliances', 'Electrical hazard', 1),
(5, 1, 'Water leaking under kitchen sink', 'Plumbing leak', 1),
(8, 2, 'Dishwasher will not start', 'Appliance malfunction', 1),
(10, 1, 'Door frame loose and unstable', 'Carpentry repair', 1),
(12, 2, 'Breaker trips when using microwave', 'Electrical overload', 1),
(15, 1, 'Shower drain clogged', 'Plumbing blockage', 1),
(18, 2, 'AC making loud rattling noise', 'HVAC malfunction', 1),
(20, 1, 'Refrigerator not cooling', 'Appliance issue', 1),
(22, 2, 'Light switch broken in hallway', 'Electrical switch failure', 1),
(25, 1, 'Toilet running constantly', 'Plumbing issue', 1),
(28, 2, 'Cabinet door off hinge', 'Carpentry repair', 1),
(32, 1, 'Dryer not heating', 'Appliance repair', 1),
(35, 2, 'Bedroom window won’t close fully', 'Carpentry issue', 1);

 select * from Request;

go

INSERT INTO RequestStatus (RequestID, RequestStatus, RequestDateStarted, RequestDateCompleted, MaintenanceTechID)
VALUES
(1, 'Completed', '2024-02-01 09:00', '2024-02-01 11:00', 1),   -- HVAC
(2, 'In Progress', '2024-02-02 10:00', NULL, 3),              -- Electrical
(3, 'Completed', '2024-02-03 08:30', '2024-02-03 09:10', 5),  -- Plumbing
(4, 'Assigned', '2024-02-04 14:00', NULL, 8),                 -- Appliance
(5, 'Completed', '2024-02-05 13:00', '2024-02-05 13:45', 7),  -- Carpentry
(6, 'Assigned', '2024-02-06 09:00', NULL, 4),                 -- Electrical
(7, 'Completed', '2024-02-07 11:00', '2024-02-07 11:20', 6),  -- Plumbing
(8, 'In Progress', '2024-02-08 10:30', NULL, 2),              -- HVAC
(9, 'Assigned', '2024-02-09 15:00', NULL, 8),                 -- Appliance
(10, 'Completed', '2024-02-10 09:00', '2024-02-10 09:30', 3), -- Electrical
(11, 'Completed', '2024-02-11 08:00', '2024-02-11 08:40', 5), -- Plumbing
(12, 'Assigned', '2024-02-12 14:00', NULL, 7),                -- Carpentry
(13, 'Assigned', '2024-02-13 10:00', NULL, 8),                -- Appliance
(14, 'Completed', '2024-02-14 09:30', '2024-02-14 10:00', 7); -- Carpentry

