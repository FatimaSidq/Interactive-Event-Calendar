DROP TABLE IF EXISTS calendar CASCADE;

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