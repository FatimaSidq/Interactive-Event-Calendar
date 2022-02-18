DROP TABLE IF EXISTS events CASCADE;

CREATE TABLE events (
  id SERIAL PRIMARY KEY NOT NULL,
  title varchar(50) NOT NULL, 
  location varchar(100)  NULL, 
  url varchar(150)  NULL, 
  created_on TIMESTAMP NOT NULL DEFAULT Now(),
  created_by INTEGER REFERENCES users(id) ON DELETE CASCADE,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL,
  is_recurring BOOLEAN DEFAULT false
);