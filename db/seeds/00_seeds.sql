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

DROP TABLE IF EXISTS banners CASCADE;

CREATE TABLE banners (
  id SERIAL PRIMARY KEY NOT NULL,
  location_full_image VARCHAR(100) NOT NULL,
  location_for_nuggets_only VARCHAR(100) NULL,
  text_color VARCHAR(100) NULL,
  is_active BOOLEAN DEFAULT true
);

-- banners table seeds
INSERT INTO banners (location_full_image, location_for_nuggets_only, text_color)
VALUES
  (
   'public/images/4k-ultra-hd-nature-wallpapers-grand.jpeg', '',''
  ),
  (
   'public/images/4ksun.jpeg', '', ''
  ),
  (
   'public/images/5k-yosemite-national-park-great-view-4k.jpeg',   '',''
  ),
  (
   'public/images/beautiful-morning-sunrise-4k-gx.jpeg', '',''
  ),
  (
   'public/images/aurora_southern_lights_wallpaper_hd_4k_by_sahibdm_ddbw9xm-pre.jpeg', '', ''
  ),
  (
   'public/images/aurora-borealis-northern-lights-uhd-4k-wallpaper.jpeg',   '',''
  ),
  (
   'public/images/aurora-borealis-purple.jpeg', '',''
  ),
  (
   'public/images/aurora-borealis.jpeg', '', ''
  ),
  (
   'public/images/aurora2.jpeg',   '',''
  ),
  (
   'public/images/autumn-morning-fog-yosemite-5k.jpeg', '',''
  ),
  (
   'public/images/beautiful-beach-sunset-4k-5r.jpeg', '', ''
  ),
  (
   'public/images/beautiful-flowers.jpeg', '', ''
  ),
  (
   'public/images/beautiful-nature-mountains-fog-trees-ze.jpeg', '', ''
  ),
  (
   'public/images/beautiful-sunrise-view-5k.jpeg', '', ''
  ),
  (
   'public/images/branch-painting-spring-cherry_blossom-7680x4320.jpeg', '', ''
  ),
  (
   'public/images/daisy.jpeg', '', ''
  ),
  (
   'public/images/fall-4k-ultra-hd-wallpaper.jpeg', '', ''
  ),
  (
   'public/images/falls.jpeg', '', ''
  ),
  (
   'public/images/Field-of-Flowers-hd-wallpapers.jpeg', '', ''
  ),
  (
   'public/images/flowers5.jpeg', '', ''
  ),
  (
   'public/images/galveston-island-sunrise-1.jpeg', '', ''
  ),
  (
   'public/images/golden-sky-on-a-summer-day-3840x2160.jpeg', '', ''
  ),
  (
   'public/images/images-landscape-4k.jpeg', '', ''
  ),
  (
   'public/images/laguna-beach-seascape-long-exposure-5k.jpeg', '', ''
  ),
  (
   'public/images/mountains-8k-clouds-sunset-nature.jpeg', '', ''
  ),
  (
   'public/images/mountains-fog.jpeg', '', ''
  ),
  (
   'public/images/mountains-landscape-nw.jpeg', '', ''
  ),
  (
   'public/images/nature-good-morning-clipart-ppt.jpeg', '', ''
  ),
 (
   'public/images/night-fury-wide.jpeg', '', ''
  ),
 (
   'public/images/northern-lights-aurora-borealis-over-forest-uhd-4k.jpeg', '', ''
  ),
   (
   'public/images/northern-lights-green.jpeg', '', ''
  );


--seeds for nuggets_of_wisdom
INSERT INTO nuggets_of_wisdom (nugget_of_wisdom, quote_by, topic, more_info, banner_id)
VALUES
('Helping someone and expecting something in return is business not kindness.','','kindness','', 1),
('To experience happiness, put an end to comparison and expectation.', '','happiness','', 2),
(E'Your time is limited, so do not waste it living someone else life. Don\'t be trapped by dogma, which is living with the results of other people\'s thinking.','Steve Jobs', 'time', '', 3),
('Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.', 'Albert Einstein', 'hope', '', 4),
(E'Many of life\'s failures are people who did not realize how close they were to success when they gave up ', 'Thomas A. Edison', 'success', '', 5),
('Success is not final; failure is not fatal: It is the courage to continue that counts. ', 'Winston S. Churchill', 'success', '', 6),
(E'Hope is not an emotion; it\'s a way of thinking or a cognitive process.', 'Brene Brown', 'hope', '', 7),
('Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all.', 'Dale Carnegie', 'hope', '', 8),
('Only a powerful soul can offer love and can afford to be humble. If we are weak, we become selfish. If we are empty, we take; but if we are full, we automatically give to all. That is our nature ', 'Dadi Prakashmani', 'love', '', 9),
('The way to get started is to quit talking and begin doing ', 'Walt Disney', 'initiative', '', 10),
('May your choices reflect your hopes, not your fears.', 'Nelson Mandela', 'hope', '', 11),
('Let my inner state be such that not only am I uninfluenced by negativity, but my every presence is a positive influence on all.','', 'positivity', '', 12),
('A strong mind always hopes and has always cause to hope.', 'Thomas Carlyle', 'hope', '', 13),
('He who has health has hope, and he who has hope has everything.', 'Thomas Carlyle', 'hope', '', 14),
(E'We dream to give ourselves hope. To stop dreaming—well, that\'s like saying you can never change your fate.', 'Amy Tan', 'hope', '', 15),
(E'It\'s really a wonder that I haven\'t dropped all my ideals, because they seem so absurd and impossible to carry out. Yet I keep them, because in spite of everything, I still believe that people are really good at heart.', 'Anne Frank', 'hope', '', 16),
('Hope is a waking dream.', 'Aristotle', 'hope', '', 17),
('The world needs less heat and more light. It needs less of the heat of anger, revenge, retaliation, and more of the light of ideas, faith, courage, aspiration, joy, love, and hope.', 'Wilfred Peterson', 'hope', '', 18),
('I am prepared for the worst, but hope for the best.', 'Benjamin Disraeli', 'hope', '', 19),
('Tell me and I forget. Teach me and I remember. Involve me and I learn. ', 'Benjamin Franklin', 'learning', '', 20),
('Never give up. Have hope. Expect only the best from life and take action to get it.', 'Catherine Pulsifer', 'hope', '', 21),
('Hope is important because it can make the present moment less difficult to bear. If we believe that tomorrow will be better, we can bear a hardship today.', 'Thich Nhat Hanh', 'hope', '', 22),
('Without hope men are only half alive. With hope they dream and think and work.', 'Charles Sawyer', 'hope', '', 23),
('The very existence of libraries affords the best evidence that we may yet have hope for the future of man.', 'T.S. Eliot', 'hope', '', 24),
('Our greatest glory is not in never falling, but in rising every time we fall.', 'Confucius', 'hope', '', 25),
('Life is really simple, but we insist on making it complicated. ', 'Confucius', 'life', '', 26),
('Hope is being able to see that there is light despite all of the darkness.', 'Desmond Tutu', 'hope', '', 27),
(E'The best bridge between despair and hope is a good night\'s sleep.', 'E. Joseph Cossman', 'hope', '', 28),
('Hope is outreaching desire with expectancy of good. It is a characteristic of all living beings.', 'Edward S. Ame', 'hope', '', 29),
('Just as despair can come to one only from other human beings, hope, too, can be given to one only by other human beings.', 'Elie Wiesel', 'hope', '', 30),
('Neither should a ship rely on one small anchor, nor should life rest on a single hope.', 'Epictetus', 'hope', '', 31),
('We have always held to the hope, the belief, the conviction that there is a better life, a better world, beyond the horizon.', 'Franklin D. Roosevelt', 'hope', '', 1),
('In fact, hope is best gained after defeat and failure, because then inner strength and toughness is produced.', 'Fritz Knapp', 'hope', '', 2),
('Hope means expectancy when things are otherwise hopeless.', 'G. K. Chesterton', 'hope', '', 3),
('Never deprive someone of hope; it may be all they have.', 'H. Jackson Brown Jr', 'hope', '', 4),
('It is characteristic of genius to be hopeful and aspiring.', 'Harriet Martieneau', 'hope', '', 5),
('The important thing is not that we can live on hope alone, but that life is not worth living without it.', 'Harvey Milk', 'hope', '', 6),
('Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence.', 'Helen Keller', 'hope', '', 7),
('If we will be quiet and ready enough, we shall find compensation in every disappointment.', 'Henry David Thoreau', 'hope', '', 8),
('Hope is the last thing ever lost.', 'Italian proverb', 'hope', '', 9),
('Remember, hope is a good thing, maybe the best of things, and no good thing ever dies.', 'Stephen King', 'hope', '', 10),
('A positive statement propels hope toward a better future, it builds up your faith and that of others, and it promotes change.', 'Jan Dargatz', 'hope', '', 11),
('You cannot swim for new horizons until you have the courage to lose sight of the shore.', 'William Faulkner', 'hope', '', 12),
('We must accept finite disappointment but never lose infinite hope.', 'Martin Luther King Jr.', 'hope', '', 13),
('Hope lies in dreams, in imagination, and in the courage of those who dare to make dreams into reality.', 'Jonas Salk', 'hope', '', 14),
('He who does not hope to win has already lost.', 'Jose Joaquin Olmedo', 'hope', '', 15),
('The things you do for yourself are gone when you are gone, but the things you do for others remain as your legacy.', 'Kalu Ndukwe Kalu', 'hope', '', 16),
('As long as we have hope, we have direction, the energy to move, and the map to move by.', 'Lao Tzu', 'hope', '', 17),
('Strange as it may seem, I still hope for the best, even though the best, like an interesting piece of mail, so rarely arrives, and even when it does it can be lost so easily.', 'Lemony Snicket', 'hope', '', 18),
('All kids need is a little help, a little hope and somebody who believes in them.', 'Magic Johnson', 'hope', '', 19),
('You must not lose faith in humanity. Humanity is an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty.', 'Mahatma Gandhi', 'hope', '', 20),
('As I change, the world changes', 'Brahma Baba', 'transformation', '', 21),
('Spread love everywhere you go. Let no one ever come to you without leaving happier ', 'Mother Teresa', 'love', '', 22),
('The greatest glory in living lies not in never falling, but in rising every time we fall. ', 'Nelson Mandela', 'life', '', 23),
('What seems to us as bitter trials are often blessings in disguise.', 'Oscar Wilde', 'hope', '', 24),
('When we love, we always strive to become better than we are. When we strive to become better than we are, everything around us becomes better too.', 'Paulo Coelho', 'hope', '', 25),
('When you have lost hope, you have lost everything. And when you think all is lost, when all is dire and bleak, there is always hope.', 'Pittacus Lore', 'hope', '', 26),
('Hope is the pillar that holds up the world. Hope is the dream of a waking man.', 'Pliny the Elder', 'hope', '', 27),
('This new day is too dear, with its hopes and invitations, to waste a moment on the yesterdays.', 'Ralph Waldo Emerson', 'hope', '', 28),
('Hope and patience are two sovereign remedies for all, the surest reposals, the softest cushions to lean on in adversity.', 'Robert Burton', 'hope', '', 29),
('Never lose hope. Storms make people stronger and never last forever.', 'Roy T. Bennett', 'hope', '', 30),
('Hope is itself a species of happiness, and, perhaps, the chief happiness which this world affords.', 'Samuel Johnson', 'hope', '', 31),
('Hope is the companion of power, and mother of success; for who so hopes strongly has within him the gift of miracles.', 'Samuel Smiles', 'hope', '', 1),
('Hope teaches endurance and an eager anticipation of that which will become reality.', 'Simon J. Kistemaker', 'hope', '', 2),
('The past is a source of knowledge, and the future is a source of hope. Love of the past implies faith in the future.', 'Stephen Ambrose', 'hope', '', 3),
(E'You may say I\'m a dreamer, but I\'m not the only one. I hope someday you\'ll join us. And the world will live as one.', 'John Lennon', 'hope', '', 4),
('Our fear must save our hope from swelling into presumption, and our hope must save our fear from sinking into despair.', 'Matthew Henry', 'hope', '', 5),
(E'Children are the world\'s most valuable resource and its best hope for the future.', 'John F. Kennedy', 'hope', '', 6),
(E'There is some good in this world, and it\'s worth fighting for.', 'J.R.R. Tolkien', 'hope', '', 7),
('Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to arrive at its destination full of hope.', 'Maya Angelou', 'hope', '', 8)
;
