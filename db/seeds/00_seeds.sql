-- users table seeds
INSERT INTO users (firstName, lastName, address, phone, email, password, is_admin)
VALUES
('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber', true),
('Fatima', 'Siddique','Lighthouse Labs','548-490-0739','f@f.com', '123', true),
('Hamza', 'Sohaib', 'Lighthouse Labs','111-222-3333','o@o.com','123', true),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','s@m.com','123', true),
('Test1', 'User1', '','111-222-4444','t@t.com','123', false),
('Test2', 'User2', '','222-444-3333','tt@tt.com','123', false);


-- admins table seeds
INSERT INTO admins (firstName, lastName, address, phone, email, password)
VALUES ('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber'),
('Fatima', 'Siddique','Lighthouse Labs','548-490-0739','f@s.com', '123'),
('Hamza', 'Sohaib', 'Lighthouse Labs','111-222-3333','h@s.com','123'),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','s@m.com','123'),
('Test', 'Employee', 'Address1','111-222-3333','t@t.com','123');


-- generating the calendar table data for year 2022
INSERT INTO calendar (day_id, year, month, day, quarter, day_of_week, day_of_year, week_of_year)
(SELECT tstamp, 
EXTRACT(YEAR FROM tstamp),
EXTRACT(MONTH FROM tstamp),
EXTRACT(DAY FROM tstamp),
EXTRACT(QUARTER FROM tstamp),
EXTRACT(DOW FROM tstamp),
EXTRACT(DOY FROM tstamp),
EXTRACT(WEEK FROM tstamp)
FROM generate_series('2022-01-01'::timestamp, '2022-12-31', '1day'::interval) AS t(tstamp));


--seeds for nuggets_of_wisdom
INSERT INTO nuggets_of_wisdom (nugget_of_wisdom, quote_by)
VALUES
  ('Helping someone and expecting something in return is business not kindness.', ''),
  ('To experience happiness, put an end to comparison and expectation.', ''),
  (E'Your time is limited, so do not waste it living someone else life. Don\'t be trapped by dogma, which is living with the results of other people\'s thinking.', 'Steve Jobs'),
  ('The greatest glory in living lies not in never falling, but in rising every time we fall.', 'Nelson Mandela'),
  (E'Many of life\'s failures are people who did not realize how close they were to success when they gave up.','Thomas A. Edison'),
  ('Success is not final; failure is not fatal: It is the courage to continue that counts.','Winston S. Churchill'),
  ('Tell me and I forget. Teach me and I remember. Involve me and I learn.','Benjamin Franklin'),
  ('Only a powerful soul can offer love and can afford to be humble.  If we are weak, we become selfish.  If we are empty, we take; but if we are full, we automatically give to all.  That is our nature.','Dadi Prakashmani'),
  ('Life is really simple, but we insist on making it complicated.','Confucius'),
  ('The way to get started is to quit talking and begin doing.','Walt Disney'),
  ('Spread love everywhere you go. Let no one ever come to you without leaving happier.','Mother Teresa'),
  ('Let my inner state be such that not only am I uninfluenced by negativity, but my every presence is a positive influence on all.','')
  ;