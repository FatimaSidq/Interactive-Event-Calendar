--seeds for events table


INSERT INTO events (title, location, url, created_by,
                     start_date, start_time, 
                     end_date, end_time, 
                     send_reminder_on)
VALUES
  ('HOPIN ACCOUNT SETUP Create My Hopin account', 
    'Online-Hopin','https://hopin.to', 3,
    '2022-02-21', '10:30:00',
    '2022-02-21', '13:30:00',
    NULL),
  ('Group Presentation Practice', 
    'Online-Zoom', 'https://zoom_link.com', 3,
    '2022-02-21', '15:30:00',
    '2022-02-21', '18:30:00',
     NULL),
  ('TECH REHEARSAL', 
    'Online-Hopin', 'https://hopin.to', 3,
    '2022-02-22','10:30:00',
    '2022-02-21','13:30:00',
    NULL),
  ('DRY RUN', 
    'Online-Hopin',
    'https://hopin.to', 3,
    '2022-02-23', '12:00:00',
    '2022-02-21', '14:30:00',
    NULL),
  ('DEMO DAY - Finals Project Presentation', 
    'Online-Hopin',
    'https://www.eventbrite.ca/e/national-demo-day-february-2022-tickets-267619125007', 3,
    '2022-02-24', '15:00:00',
    '2022-02-24', '18:30:00',
    NULL)
  ;
