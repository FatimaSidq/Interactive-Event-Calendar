DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS admins CASCADE;

DROP TABLE IF EXISTS calendar CASCADE;
DROP TABLE IF EXISTS events CASCADE;
-- DROP TABLE IF EXISTS event_categories CASCADE;
DROP TABLE IF EXISTS todos CASCADE;
DROP TABLE IF EXISTS invitees CASCADE;
DROP TABLE IF EXISTS banners CASCADE;
DROP TABLE IF EXISTS nuggets_of_wisdom CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  firstName VARCHAR(150) NOT NULL,
  lastName VARCHAR(150) NOT NULL,
  address VARCHAR(255) NULL,
  phone VARCHAR(15) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(100) NOT NULL,
  user_since TIMESTAMP NOT NULL DEFAULT Now(),
  is_admin BOOLEAN DEFAULT false
);

CREATE TABLE admins (
  id SERIAL PRIMARY KEY NOT NULL, 
  firstName VARCHAR(150) NOT NULL,
  lastName VARCHAR(150) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(15) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  admin_since TIMESTAMP NOT NULL DEFAULT Now()
);


-- /////////   CALENDAR Table Definition   /////// 
--------------------------------------------------
-- day id       : date primary key 
-- year         : year in UTC
-- month        : month in UTC
-- day          : day in UTC
-- quarter      : business quarter
-- day of week  : a numeric identity representing Monday-Sunday
-- day of year  : a numeric identity for the absolute day within the year (instead of the current month)
-- week of year : a numeric identity for the week of year

CREATE TABLE calendar (
  day_id DATE NOT NULL PRIMARY KEY,
  year SMALLINT NOT NULL,         -- 2022
  month SMALLINT NOT NULL,        -- 1 to 12
  day SMALLINT NOT NULL,          -- 1 to 31
  quarter SMALLINT NOT NULL,      -- 1 to 4
  day_of_week SMALLINT NOT NULL,  -- 0 (Sunday) to 6 (Saturday)
  day_of_year SMALLINT NOT NULL,  -- 1 to 366
  week_of_year SMALLINT NOT NULL, -- 1 to 53
  CONSTRAINT con_month CHECK (month >= 1 AND month <= 31),
  CONSTRAINT con_day_of_year CHECK (day_of_year >= 1 AND day_of_year <= 366), -- 366 allows for leap years
  CONSTRAINT con_week_of_year CHECK (week_of_year >= 1 AND week_of_year <= 53)
);


CREATE TABLE events (
  id SERIAL PRIMARY KEY NOT NULL,
  title varchar(50) NOT NULL, 
  location varchar(100)  NULL, 
  url varchar(150)  NULL, 
  created_on TIMESTAMP NOT NULL DEFAULT Now(),
  created_by INTEGER REFERENCES users(id) ON DELETE CASCADE,
  start_date DATE NOT NULL REFERENCES calendar(day_id) ON DELETE CASCADE,
  start_time TIME NOT NULL,
  end_date DATE NOT NULL,
  end_time TIME NOT NULL,
  is_recurring BOOLEAN DEFAULT false,
  send_reminder_on TIMESTAMP NULL  
  -- send reminder both to event owner and invitees
);


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

DROP TABLE IF EXISTS invitees CASCADE;

CREATE TABLE invitees (
  id SERIAL PRIMARY KEY NOT NULL,
  firstName VARCHAR(150) NOT NULL,
  lastName VARCHAR(150) NULL,
  address VARCHAR(255) NULL,
  phone VARCHAR(15) NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  invited_on TIMESTAMP NOT NULL DEFAULT Now(),
  notified_on TIMESTAMP NULL,
  has_attended BOOLEAN DEFAULT false,
  send_thankYou_on TIMESTAMP NULL,
  event_id INTEGER REFERENCES events(id) ON DELETE CASCADE
);

CREATE TABLE banners (
  id SERIAL PRIMARY KEY NOT NULL,
  location_full_image VARCHAR(100) NOT NULL,
  location_for_nuggets_only VARCHAR(100) NULL,
  text_color VARCHAR(100) NULL,
  is_active BOOLEAN DEFAULT true
);

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