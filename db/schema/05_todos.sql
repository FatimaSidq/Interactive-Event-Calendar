DROP TABLE IF EXISTS todos CASCADE;

CREATE TABLE todos (
  id SERIAL PRIMARY KEY NOT NULL,
  name varchar(50) NOT NULL, 
  -- users are able to attach documents to todos 
  doc BYTEA, 
  notes TEXT,
  created_on TIMESTAMP NOT NULL DEFAULT Now(),
  is_complete BOOLEAN DEFAULT false,
  event_id INTEGER REFERENCES events(id) ON DELETE CASCADE
);
