DROP TABLE IF EXISTS nuggets_of_wisdom CASCADE;

CREATE TABLE nuggets_of_wisdom (
  id SERIAL PRIMARY KEY NOT NULL,
  nugget_of_wisdom TEXT,
  quote_by VARCHAR(50) DEFAULT NULL,
  added_on TIMESTAMP NOT NULL DEFAULT Now(),
  is_active BOOLEAN DEFAULT true
);