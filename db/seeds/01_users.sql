-- users table seeds
INSERT INTO users (firstName, lastName, address, phone, email, password, is_admin)
VALUES
('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber', true),
('Fatima', 'Siddique','Lighthouse Labs','647.477.7850','fatimasidq@gmail.com', '123', true),
('Hamza', 'Sohaib', 'Lighthouse Labs','226.506.3565','hamzasohaib1998@gmail.com','123', true),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','goodwisheseveryone@gmail.com','123', true),
('Test1', 'User1', '','111-222-4444','t@t.com','123', false),
('Test2', 'User2', '','222-444-3333','tt@tt.com','123', false);
