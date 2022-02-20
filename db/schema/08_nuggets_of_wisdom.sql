DROP TABLE IF EXISTS nuggets_of_wisdom CASCADE;

CREATE TABLE nuggets_of_wisdom (
  id SERIAL PRIMARY KEY NOT NULL,
  nugget_of_wisdom VARCHAR(255),
  quote_by VARCHAR(50) DEFAULT NULL,
  -- category VARCHAR(25) NOT NULL,
  topic VARCHAR(50) NOT NULL,
  more_info TEXT NULL,
  banner_id INTEGER NOT NULL REFERENCES banners(id) ON DELETE CASCADE, 
  added_on TIMESTAMP NOT NULL DEFAULT Now(),
  is_active BOOLEAN DEFAULT true,
  calendar_id DATE REFERENCES calendar(day_id) ON DELETE CASCADE
);