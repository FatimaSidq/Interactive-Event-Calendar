DROP TABLE IF EXISTS banners CASCADE;

CREATE TABLE banners (
  id SERIAL PRIMARY KEY NOT NULL,
  location_full_image VARCHAR(100) NOT NULL,
  location_for_nuggets_only VARCHAR(100) NULL,
  text_color VARCHAR(100) NULL,
  is_active BOOLEAN DEFAULT true
);
