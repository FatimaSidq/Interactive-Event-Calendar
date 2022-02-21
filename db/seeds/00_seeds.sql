-- users table seeds
INSERT INTO users (firstName, lastName, address, phone, email, password, is_admin)
VALUES
('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber', true),
('Fatima', 'Siddique','Lighthouse Labs','647.477.7850','fatimasidq@gmail.com', '123', true),
('Hamza', 'Sohaib', 'Lighthouse Labs','226.506.3565','hamzasohaib1998@gmail.com','123', true),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','goodwisheseveryone@gmail.com','123', true),
('Test1', 'User1', '','111-222-4444','t@t.com','123', false),
('Test2', 'User2', '','222-444-3333','tt@tt.com','123', false);


-- admins table seeds
INSERT INTO admins (firstName, lastName, address, phone, email, password)
VALUES ('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber'),
('Fatima', 'Siddique','Lighthouse Labs','647.477.7850','fatimasidq@gmail.com', '123'),
('Hamza', 'Sohaib', 'Lighthouse Labs','226.506.3565',' hamzasohaib1998@gmail.com','123'),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','goodwisheseveryone@gmail.com','123'),
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
'public/images/5k-yosemite-national-park-great-view-4k.jpeg','',''
 ),
 (
'public/images/beautiful-morning-sunrise-4k-gx.jpeg', '',''
 ),
 (
'public/images/aurora_southern_lights_wallpaper_hd_4k_by_sahibdm_ddbw9xm-pre.jpeg', '', ''
 ),
 (
'public/images/aurora-borealis-northern-lights-uhd-4k-wallpaper.jpeg','',''
 ),
 (
'public/images/aurora-borealis-purple.jpeg', '',''
 ),
 (
'public/images/aurora-borealis.jpeg', '', ''
 ),
 (
'public/images/aurora2.jpeg','',''
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
(E'Many of life\'s failures are people who did not realize how close they were to success when they gave up.', 'Thomas A. Edison', 'success', '', 5),
('Success is not final; failure is not fatal: It is the courage to continue that counts.', 'Winston S. Churchill', 'courage', '', 6),
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
('Tell me and I forget. Teach me and I remember. Involve me and I learn.', 'Benjamin Franklin', 'learning', '', 20),
('Never give up. Have hope. Expect only the best from life and take action to get it.', 'Catherine Pulsifer', 'hope', '', 21),
('Hope is important because it can make the present moment less difficult to bear. If we believe that tomorrow will be better, we can bear a hardship today.', 'Thich Nhat Hanh', 'hope', '', 22),
('Without hope men are only half alive. With hope they dream and think and work.', 'Charles Sawyer', 'hope', '', 23),
('The very existence of libraries affords the best evidence that we may yet have hope for the future of man.', 'T.S. Eliot', 'hope', '', 24),
('Our greatest glory is not in never falling, but in rising every time we fall.', 'Confucius', 'hope', '', 25),
('Life is really simple, but we insist on making it complicated.', 'Confucius', 'life', '', 26),
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
('The greatest glory in living lies not in never falling, but in rising every time we fall.', 'Nelson Mandela', 'life', '', 23),
('What seems to us as bitter trials are often blessings in disguise.', 'Oscar Wilde', 'hope', '', 24),
('When we love, we always strive to become better than we are. When we strive to become better than we are, everything around us becomes better too.', 'Paulo Coelho', 'love', '', 25),
('When you have lost hope, you have lost everything. And when you think all is lost, when all is dire and bleak, there is always hope.', 'Pittacus Lore', 'hope', '', 26),
('Hope is the pillar that holds up the world. Hope is the dream of a waking man.', 'Pliny the Elder', 'hope', '', 27),
('Hope is the companion of power, and mother of success; for who so hopes strongly has within him the gift of miracles.', 'Samuel Smiles', 'hope', '', 1),
('Hope teaches endurance and an eager anticipation of that which will become reality.', 'Simon J. Kistemaker', 'hope', '', 2),
('The past is a source of knowledge, and the future is a source of hope. Love of the past implies faith in the future.', 'Stephen Ambrose', 'hope', '', 3),
(E'You may say I\'m a dreamer, but I\'m not the only one. I hope someday you\'ll join us. And the world will live as one.', 'John Lennon', 'hope', '', 4),
('Our fear must save our hope from swelling into presumption, and our hope must save our fear from sinking into despair.', 'Matthew Henry', 'hope', '', 5),
(E'Children are the world\'s most valuable resource and its best hope for the future.', 'John F. Kennedy', 'hope', '', 6),
(E'There is some good in this world, and it\'s worth fighting for.', 'J.R.R. Tolkien', 'hope', '', 7),
('Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to arrive at its destination full of hope.', 'Maya Angelou', 'hope', '', 8),
('This new day is too dear, with its hopes and invitations, to waste a moment on the yesterdays.', 'Ralph Waldo Emerson', 'hope', '', 9),
('Hope and patience are two sovereign remedies for all, the surest reposals, the softest cushions to lean on in adversity.', 'Robert Burton', 'hope', '', 10),
('Never lose hope. Storms make people stronger and never last forever.', 'Roy T. Bennett', 'hope', '', 11),
('Hope is itself a species of happiness, and, perhaps, the chief happiness which this world affords.', 'Samuel Johnson', 'hope', '', 12),
('You can give without loving, but you cannot love without giving.', 'Amy Carmichael', 'love','', 13),
('Love and compassion are necessities, not luxuries. Without them humanity cannot survive.', 'Dalai Lama', 'love','', 14),
('The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart.', 'Helen Keller', 'love','', 15),
('The loneliest place in the world is the human heart when love is absent.', 'Jeremiah Say', 'love','', 16),
('We are shaped and fashioned by what we love.', 'Johann Wolfgang von Goethe', 'love','', 17),
('Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.', 'Lao Tzu', 'love','', 18),
('Duty makes us do things well, but love makes us do them beautifully.', 'Phillips Brooks', 'love','', 19),
('The greatest happiness of life is the conviction that we are loved; loved for ourselves, or rather, loved in spite of ourselves.', 'Victor Hugo', 'love','' , 20),
('Alone we can do so little; together we can do so much.', 'Helen Keller', 'collaboration','', 21),
('Love many things, for therein lies the true strength, and whosoever loves much performs much, and can accomplish much, and what is done in love is done well.', 'Vincent Van Gogh.', 'love', '', 26),
('A calm and modest life brings more happiness than the pursuit of success combined with constant restlessness.', 'Albert Einstein.', 'happiness', '', 27),
('Happiness does not depend on the actual number of blessings we manage to scratch from life, but on our attitude towards them.', 'Alexandr Solzhenitsyn.', 'happiness', '', 28),
(E'Everyone wants to live on top of the mountain, but all the happiness and growth occurs while you\'re climbing it.', 'Andy Rooney.', 'happiness', '', 29),
('Think of all the beauty still left around you and be happy.', 'Anne Frank.', 'happiness', '', 30),
('When you love what you have, you have everything you need.', 'Anonymous.', 'happiness', '', 31),
('Happiness is letting go of what you think your life is supposed to look like.', 'Anonymous.', 'happiness', '', 1),
('Happiness is the meaning and the purpose of life, the whole aim and end of human existence', '', '', '', 3),
(E'Happiness is that state of consciousness which proceeds from the achievement of one\'s values.', 'Ayn Rand.', 'happiness', '', 4),
(E'If being happy is important to you, try this instead of regretting all you lack, celebrate all you\'ve got.', 'Brian Vaszily.', 'happiness', '', 5),
('If one speaks or acts with a pure mind, happiness follows like a shadow.', 'Buddha.', 'happiness', '', 6),
('He who forgets the language of gratitude can never be on speaking terms with happiness.', 'C. Neil Strait.', 'happiness', '', 7),
(E'Every day is a new day, and you\'ll never be able to find happiness if you don\'t move on.', 'Carrie Underwood.', 'happiness', '', 8),
('Happiness is the secret to all beauty. There is no beauty without happiness.', 'Christian Dior.', 'happiness', '', 9),
(E'Nobody really cares if you\'re miserable, so you might as well be happy.', 'Cynthia Nelms.', 'happiness', '', 10),
('Seek for happiness and you will never find it. Seek righteousness and you will discover you are happy. It will be there without your knowing it, without your seeking it.', 'D. Martyn Lloyd-Jones.', 'happiness', '', 11),
('Only the development of compassion and understanding for others can bring us the tranquility and happiness we all seek.', 'Dalai Lama XIV.', 'happiness', '', 12),
(E'Being happy doesn\'t depend on any external conditions, it is governed by our mental attitude.', 'Dale Carnegie.', 'happiness', '', 13),
('Happiness is an attitude. We either make ourselves miserable, or happy or strong. The amount of work is the same.', 'Francesca Reigler.', 'happiness', '', 22),
('Happy is he who learns to bear what he cannot change.', 'Friedrich Schiller.', 'happiness', '', 23),
('The only thing that will make you happy is being happy with who you are.', 'Goldie Hawn.', 'happiness', '', 24),
('True happiness is not attained through self-gratification, but through fidelity to a worthy purpose.', 'Helen Keller.', 'happiness', '', 25),
('Happiness is not the absence of problems; but the ability to deal with them.', 'Jack Brown.', 'happiness', '', 26),
('Happiness is not having what you want. It is appreciating what you have.', 'Jeremiah Say.', 'happiness', '', 27),
('The person born with a talent they are meant to use will find their greatest happiness in using it.', 'Johann Wolfgang von Goethe.', 'happiness', '', 28),
('The power of finding beauty in the humblest things makes home happy and life lovely.', 'Louisa May Alcott.', 'happiness', '', 29),
('Happiness is when what you think, what you say, and what you say are in harmony.', 'Mahatma Gandhi.', 'happiness', '', 30),
('The best way to cheer yourself up is to try to cheer somebody else up.', 'Mark Twain.', 'happiness', '', 31),
('To live is the rarest thing in the world. Most people just exist.', 'Oscar Wilde.', 'happiness', '', 1),
('Some people cause happiness wherever they go, others whenever they go.', 'Oscar Wilde.', 'happiness', '', 2),
('Wise men and women in every major culture have maintained that the secret of happiness is not in getting more but in wanting less.', 'Philip Slater.', 'happiness', '', 3),
('For every minute you are angry you lose sixty seconds of happiness.', 'Ralph Waldo Emerson.', 'happiness', '', 4),
('God, grant me the serenity to accept the things I cannot change, the courage to change the things I can, and the wisdom to know the difference.', 'Reinhold Niebuhr.', 'happiness', '', 5),
('If you want to be happy, do not dwell in the past, do not worry about the future, focus on living fully in the present.', 'Roy T. Bennett.', 'happiness', '', 6),
('Happiness can be built only on virtue, and must of necessity have truth for its foundation.', 'Samuel Taylor Coleridge.', 'happiness', '', 7),
('There can be no happiness if the things we believe in are different from the things we do.', 'Treya Stark.', 'happiness', '', 8),
(E'Happiness is a state of mind. It\'s just according to the way you look at things.', 'Walt Disney.', 'happiness', '', 9),
('Action may not bring happiness but there is no happiness without action.', 'William James.', 'happiness', '', 10),
('We make a living by what we get, we make a life by what we give.', 'Winston Churchill.', 'happiness', '', 11),
('I find the best way to love someone is not to change them, but instead, help them reveal the greatest version of themselves.', 'Steve Maraboli.', 'love', '', 12),
('No one ever climbed the ladder of success with his hands in his pockets.', 'Jeremiah Say', 'success', '', 13),
('Patience, persistence and perspiration make an unbeatable combination for success.', 'Napoleon Hill', 'success', '', 15),
('The secret of success in life is for a man to be ready for his opportunity when it comes.', 'Benjamin Disraeli', 'success', '', 16),
(E'You learn more from failure than from successes. Don\'t let it stop you. Failure builds character.', 'Anonymous', 'success', '', 17),
('Success does not consist in never making mistakes but in never making the same one a second time.', 'George Bernard Shaw', 'success', '', 19),
('Try not to become a man of success but rather try to become a man of value.', 'Albert Einstein', 'success', '', 20),
('There is a powerful driving force inside every human being that, once unleashed, can make any vision, dream, or desire a reality.', 'Anthony Robbins', 'success', '', 21),
('Success can feather our nest so comfortably that we forget how to fly.', 'Vance Havner', 'success', '', 22),
('If I cannot do great things, I can do small things in a great way.', 'Martin Luther King Jr', 'success', '', 23),
('Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.', 'Mark Twain', 'success', '', 24),
(E'If I had eight hours to chop down a tree, I\'d spend six hours sharpening my ax.', 'Abraham Lincoln', 'success', '', 25),
(E'Successful people do what unsuccessful people are not willing to do. Don\'t wish it were easier; wish you were better.', 'Jim Rohn', 'success', '', 26),
('How much you can learn when you fail determines how far you will go into achieving your goals.', 'Roy T. Bennett', 'success', '', 27),
(E'Success is a lousy teacher. It seduces smart people into thinking they can\'t lose.', 'Bill Gates', 'success', '', 28),
('People rarely succeed unless they have fun in what they are doing.', 'Dale Carnegie', 'success', '', 29),
(E'If you have a dream, don\'t just sit there. Gather courage to believe that you can succeed and leave no stone unturned to make it a reality.', 'Dr Roopleen', 'success', '', 30),
(E'You don\'t have to be a genius or a visionary or even a college graduate to be successful. You just need a framework and a dream.', 'Michael Dell', 'success', '', 31),
('I cannot give you the formula for success, but I can give you the formula for failure which is, Try to please everybody.', 'Herbert B. Swope', 'success', '', 1),
('Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Herman Cain', 'success', '', 2),
('Success consists of getting up just one more time than you fall.', 'Oliver Goldsmith', 'success', '', 3),
('It does not matter how slowly you go as long as you do not stop.', 'Confucius', 'success', '', 4),
(E'When it is obvious that the goals cannot be reached, don\'t adjust the goals, adjust the action steps.', 'Confucius', 'success', '', 5),
(E'Behind every successful man there\'s a lot of unsuccessful years.', 'Bob Brown', 'success', '', 6),
(E'Tough times don\'t last. Tough people do.', 'Robert H. Schuller', 'success', '', 7),
(E'You\'ve got to get up every morning with determination if you\'re going to go to bed with satisfaction.', 'George Lorimer', 'success', '', 8),
('Success means having the courage, the determination, and the will to become the person you believe you were meant to be.', 'George Sheehan', 'success', '', 9),
('There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.', 'Ray Goforth', 'success', '', 10),
('The difference between a successful person and others is not a lack of strength, not a lack of knowledge, but rather a lack in will.', 'Vince Lombardi', 'success', '', 11),
('There are no secrets to success. It is the result of preparation, hard work, and learning from failure.', 'Colin Powell', 'success', '', 12),
(E'Success seems to be connected with action. Successful people keep moving. They make mistakes, but they don\'t quit.', 'Conrad Hilton', 'success', '', 13),
('Follow effective actions with quiet reflection. From the quiet reflection will come even more effective action.', 'Peter Drucker', 'success', '', 15),
('Shallow men believe in luck. Strong men believe in cause and effect.', 'Ralph Waldo Emerson', 'success', '', 16),
('Knowing others is intelligence; knowing yourself is true wisdom. Mastering others is strength; mastering yourself is true power.', 'Lao Tzu', 'success', '', 17),
('Optimism is the one quality more associated with success and happiness that any other.', 'Brian Tracy', 'success', '', 19),
('The secret of success is to do the common thing uncommonly well.', 'John D. Rockefeller Jr', 'success', '', 20),
(E'Striving for success without hard work is like trying to harvest where you haven\'t planted.', 'David Bly', 'success', '', 21),
(E'Hard times don\'t create heroes. It is during the hard times when the \'hero\' within us is revealed.', 'Bob Riley', 'success', '', 22),
(E'When it rains, look for rainbows. When it\'s dark, look for stars.', 'Anonymous.', 'positivity', '', 23),
('There are no permanent changes because change itself is permanent.', 'Ralph L. Woods', 'success', '', 24),
('To live is to change, and to be perfect is to change often.', 'John Henry Cardinal Newman', 'success', '', 25),
(E'You can\'t go back and change the beginning, but you can start where you are and change the ending.', 'C.S. Lewis', 'success', '', 26),
('The art of life lies in a constant readjustment to our surroundings.', 'Kakuzo Okakura', 'success', '', 27),
('Progress is impossible without change, and those who cannot change their minds cannot change anything.', 'George Bernard Shaw', 'success', '', 28),
('It is not the strongest of the species that survive, nor the most intelligent, but the one most responsive to change.', 'Charles Darwin', 'success', '', 29),
('The measure of intelligence is the ability to change.', 'Albert Einstein', 'success', '', 30),
('The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking.', 'Albert Einstein', 'success', '', 31),
('The greatest discovery of all time is that a person can change his future by merely changing his attitude.', 'Oprah Winfrey', 'success', '', 1),
('I cannot say whether things will get better if we change; what I can say is they must change if they are to get better.', 'Georg C. Lichtenberg', 'success', '', 2),
('The secret of change is to focus all of your energy not on fighting the old, but on building the new.', 'Socrates', 'success', '', 3),
('Let him that would move the world first move himself.', 'Socrates', 'success', '', 4),
('When we are no longer able to change a situation, we are challenged to change ourselves.', 'Viktor Frankl', 'success', '', 5),
('How wonderful it is that nobody need wait a single moment before starting to improve the world.', 'Anne Frank', 'success', '', 6),
('The world hates change, yet it is the only thing that has brought progress.', 'Charles F. Kettering', 'success', '', 7),
('Your life does not get better by chance, it gets better by change.', 'Jim Rohn', 'success', '', 8),
('The one unchangeable certainty is that nothing is certain or unchangeable.', 'John F. Kennedy', 'success', '', 9),
(E'Growth is painful. Change is painful. But nothing is as painful as staying stuck somewhere you don\'t belong.', 'Mandy Hale', 'success', '', 10),
('Be the change that you wish to see in the world.', 'Mahatma Gandhi', 'success', '', 11),
('Everyone thinks of changing the world, but no one thinks of changing himself.', 'Leo Tolstoy', 'success', '', 12),
('True life is lived when tiny changes occur.', 'Leo Tolstoy', 'success', '', 13),
(E'Change will not come if we wait for some other person or some other time. We are the ones we\'ve been waiting for. We are the change that we seek.', 'Barack Obama', 'success', '', 15),
('Life will only change when you become more committed to your dreams than you are to your comfort zone.', 'Billy Cox', 'success', '', 16),
('Life is measured by the rapidity of change, the succession of influences that modify the being.', 'George Eliot', 'success', '', 17),
('The art of progress is to preserve order amid change, and to preserve change amid order.', 'Alfred North Whitehead', 'success', '', 19),
('Change is inevitable in a progressive society. Change is constant.', 'Benjamin Disraeli', 'success', '', 20),
('Every saint has a past, and every sinner has a future.', 'Oscar Wilde', 'success', '', 21),
('We cannot become what we want by remaining what we are.', 'Max Depree', 'success', '', 22),
(E'I can\'t change the direction of the wind, but I can adjust my sails to always reach my destination.', 'Jimmy Dean', 'success', '', 23),
(E'Incredible change happens in your life when you decide to take control of what you do have power over instead of craving control over what you don\'t.', 'Steve Maraboli', 'success', '', 24),
('Small changes eventually add up to huge results.', 'Anonymous', 'success', '', 25),
(E'You can\'t change what\'s going on around you until you start changing what\'s going on within you.', 'Anonymous', 'success', '', 26),
('Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.', 'Rumi', 'success', '', 27),
('I alone cannot change the world, but I can cast a stone across the waters to create many ripples.', 'Mother Teresa', 'success', '', 28),
('Some changes look negative on the surface but you will soon realize that space is being created in your life for something new to emerge.', 'Eckhart Tolle', 'success', '', 29),
('The people who are crazy enough to think they can change the world are the ones who do.', 'Steve Jobs', 'success', '', 30),
('There is change in all things. You yourself are subject to continual change and some decay and this is common to the entire universe.', 'Marcus Aurelius', 'success', '', 31),
('Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world.', 'Harriet Tubman', 'success', '', 1),
('Just take any step, whether small or large. And then another and repeat day after.', 'Aaron Ross', 'success', '', 2),
('day. It may take months, maybe years, but the path to success will become clear', '', '', '', 3),
('You never change things by fighting the existing reality. To change something, build.', 'Buckminster Fuller', 'success', '', 4),
('a new model that makes the existing model obsolete', '', '', '', 5),
('Change the way you look at things and the things you look at change.', 'Wayne W. Dyer', 'success', '', 6),
('Change your thoughts and you change your world.', 'Norman Vincent Peale', 'success', '', 7),
(E'Play to your strengths. If you aren\'t great at something, do more of what you\'re great at.', 'Jason Lemkin', 'success', '', 8),
('Coming together is a beginning, keeping together is progress, working together is success.', 'Henry Ford', 'success', '', 11),
('Doing the best at this moment puts you in the best place for the next moment.', 'Oprah Winfrey', 'success', '', 12),
(E'You\'ve achieved success in your field when you don\'t know whether what you\'re doing is work or play.', 'Warren Beatty', 'success', '', 13),
('Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it. I never heard of anyone ever stumbling on something sitting down.', 'Charles F. Kettering', 'success', '', 15),
(E'The difference between successful people and very successful people is that very successful people say \'no\' to almost everything.', 'Warren Buffett', 'success', '', 16),
('A successful man is one who can lay a firm foundation with the bricks that others throw at him.', 'David Brinkley', 'success', '', 17),
(E'I\'ve failed over and over and over again in my life and that is why I succeed.', 'Michael Jordan', 'success', '', 19),
(E'I don\'t dwell on success. Maybe that\'s one reason I\'m successful.', 'Calvin Klein', 'success', '', 20),
('If you really look closely, most overnight successes took a long time.', 'Steve Jobs', 'success', '', 21),
('Before anything else, preparation is the key to success.', 'Alexander Graham Bell', 'success', '', 22),
('Spend eighty percent of your time focusing on the opportunities of tomorrow rather than the problems of yesterday.', 'Brian Tracy.', 'optimism', '', 23),
('No one ever climbed the ladder of success with his hands in his pockets.', 'Jeremiah Say', 'success', '', 24),
('Patience, persistence and perspiration make an unbeatable combination for success.', 'Napoleon Hill', 'success', '', 25),
('The secret of success in life is for a man to be ready for his opportunity when it comes.', 'Benjamin Disraeli', 'success', '', 26),
(E'You learn more from failure than from successes. Don\'t let it stop you. Failure builds character.', 'Anonymous', 'success', '', 27),
('Success does not consist in never making mistakes but in never making the same one a second time.', 'George Bernard Shaw', 'success', '', 28),
('Try not to become a man of success but rather try to become a man of value.', 'Albert Einstein', 'success', '', 29),
('There is a powerful driving force inside every human being that, once unleashed, can make any vision, dream, or desire a reality.', 'Anthony Robbins', 'success', '', 30),
('Success can feather our nest so comfortably that we forget how to fly.', 'Vance Havner', 'success', '', 31),
('If I cannot do great things, I can do small things in a great way.', 'Martin Luther King Jr', 'success', '', 1),
('Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.', 'Mark Twain', 'success', '', 2),
(E'If I had eight hours to chop down a tree, I\'d spend six hours sharpening my ax.', 'Abraham Lincoln', 'success', '', 3),
(E'Successful people do what unsuccessful people are not willing to do. Don\'t wish it were easier; wish you were better.', 'Jim Rohn', 'success', '', 4),
('How much you can learn when you fail determines how far you will go into achieving your goals.', 'Roy T. Bennett', 'success', '', 5),
(E'Success is a lousy teacher. It seduces smart people into thinking they can\'t lose.', 'Bill Gates', 'success', '', 6),
('People rarely succeed unless they have fun in what they are doing.', 'Dale Carnegie', 'success', '', 7),
(E'If you have a dream, don\'t just sit there. Gather courage to believe that you can succeed and leave no stone unturned to make it a reality.', 'Dr Roopleen', 'success', '', 8),
(E'You don\'t have to be a genius or a visionary or even a college graduate to be successful. You just need a framework and a dream.', 'Michael Dell', 'success', '', 9),
('I cannot give you the formula for success, but I can give you the formula for failure which is, Try to please everybody.', 'Herbert B. Swope', 'success', '', 10),
('Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Herman Cain', 'success', '', 11),
('Success consists of getting up just one more time than you fall.', 'Oliver Goldsmith', 'success', '', 12),
('It does not matter how slowly you go as long as you do not stop.', 'Confucius', 'success', '', 13),
(E'When it is obvious that the goals cannot be reached, don\'t adjust the goals, adjust the action steps.', 'Confucius', 'success', '', 15),
(E'Behind every successful man there\'s a lot of unsuccessful years.', 'Bob Brown', 'success', '', 16),
(E'Tough times don\'t last. Tough people do.', 'Robert H. Schuller', 'success', '', 17),
(E'You\'ve got to get up every morning with determination if you\'re going to go to bed with satisfaction.', 'George Lorimer', 'success', '', 19),
('Success means having the courage, the determination, and the will to become the person you believe you were meant to be.', 'George Sheehan', 'success', '', 20),
('There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.', 'Ray Goforth', 'success', '', 21),
('The difference between a successful person and others is not a lack of strength, not a lack of knowledge, but rather a lack in will.', 'Vince Lombardi', 'success', '', 22),
('There are no secrets to success. It is the result of preparation, hard work, and learning from failure.', 'Colin Powell', 'success', '', 23),
(E'Success seems to be connected with action. Successful people keep moving. They make mistakes, but they don\'t quit.', 'Conrad Hilton', 'success', '', 24),
('Follow effective actions with quiet reflection. From the quiet reflection will come even more effective action.', 'Peter Drucker', 'success', '', 25),
('Shallow men believe in luck. Strong men believe in cause and effect.', 'Ralph Waldo Emerson', 'success', '', 26),
('Knowing others is intelligence; knowing yourself is true wisdom. Mastering others is strength; mastering yourself is true power.', 'Lao Tzu', 'success', '', 27),
('Optimism is the one quality more associated with success and happiness that any other.', 'Brian Tracy', 'success', '', 28),
('The secret of success is to do the common thing uncommonly well.', 'John D. Rockefeller Jr', 'success', '', 29),
(E'Striving for success without hard work is like trying to harvest where you haven\'t planted.', 'David Bly', 'success', '', 30),
(E'Hard times don\'t create heroes. It is during the hard times when the \'hero\' within us is revealed.', 'Bob Riley', 'success', '', 31),
('Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world.', 'Lucille Ball.', 'love', '', 1),
('Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.', 'Martin Luther King, Jr.', 'love', '', 2
)
;
