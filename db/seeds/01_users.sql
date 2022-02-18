-- users table seeds
INSERT INTO users (firstName, lastName, address, phone, email, password, is_admin)
VALUES
('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber', true),
('Fatima', 'Siddique','Lighthouse Labs','548-490-0739','f@s.com', '123', true),
('Hamza', 'Sohaib', 'Lighthouse Labs','111-222-3333','h@s.com','123', true),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','s@m.com','123', true),
('Test1', 'User1', '','111-222-4444','t@t.com','123', false),
('Test2', 'User2', '','222-444-3333','tt@tt.com','123', false);

