--  Drop Table  --

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS shelf CASCADE;

--  Create Table  --

CREATE TABLE authors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  nationality VARCHAR(255) NOT NULL
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nick_name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description CLOB NOT NULL,
  genre VARCHAR(32) NOT NULL,
  publication_year INT NOT NULL,
  author_id INT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE
);

CREATE TABLE shelf (
  id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  user_id INT NOT NULL
);

--  Insert Data  --

INSERT INTO authors VALUES (1, 'Stephen', 'King', 'US');
INSERT INTO authors VALUES (2, 'Philip K.', 'Dick', 'US');
INSERT INTO authors VALUES (3, 'Michael', 'Crichton', 'US');
INSERT INTO authors VALUES (4, 'Clive', 'Barker', 'UK');
INSERT INTO authors VALUES (5, 'Jeff', 'Lindsay', 'US');

INSERT INTO users VALUES (1, 'admin');
INSERT INTO users VALUES (2, 'quest');
INSERT INTO users VALUES (3, 'user');

INSERT INTO books VALUES (1, 'Claire', 'Stephen King''s legendary debut, about a teenage outcast and the revenge she enacts on her classmates. Carrie White may be picked on by her classmates, but she has a gift. She can move things with her mind. Doors lock. Candles fall. This is her power and her problem. Then, an act of kindness, as spontaneous as the vicious taunts of her classmates, offers Carrie a chance to be a normal...until an unexpected cruelty turns her gift into a weapon of horror and destruction that no one will ever forget.', 'horror', 1974, 1);
INSERT INTO books VALUES (2, 'Salem''s Lot', 'Ben Mears has returned to Jerusalem''s Lot in the hopes that living in an old mansion, long the subject of town lore, will help him cast out his own devils and provide inspiration for his new book. But when two young boys venture into the woods and only one comes out alive, Mears begins to realize that there may be something sinister at work and that his hometown is under siege by forces of darkness far beyond his control.', 'horror', 1975, 1);
INSERT INTO books VALUES (3, 'The Shining', 'Danny is only five years old, but in the words of old Mr Hallorann he is a ''shiner'', aglow with psychic voltage. When his father becomes caretaker of the Overlook Hotel, Danny''s visions grow out of control. As winter closes in and blizzards cut them off, the hotel seems to develop a life of its own. It is meant to be empty. So who is the lady in Room 217 and who are the masked guests going up and down in the elevator? And why do the hedges shaped like animals seem so alive? Somewhere, somehow, there is an evil force in the hotel - and that, too, is beginning to shine ...', 'horror', 1977, 1);
INSERT INTO books VALUES (4, 'Eye in the Sky', 'What begins as an ordinary laboratory visit turns into a bizarre and apocalyptic experience when a particle-light beam slices across the visitors'' paths, plunging them into different worlds constructed from their innermost dreams and fears. As emergency works scramble to free them from the wreckage, their minds begin an incredible journey through one fantastic shared world after another.', 'sci-fi', 1955, 2);
INSERT INTO books VALUES (5, 'The Man in the High Castle', 'It is 1962 and the Second World War has been over for seventeen years: people have now had a chance to adjust to the new order. But it''s not been easy. The Mediterranean has been drained to make farmland, the population of Africa has virtually been wiped out and America has been divided between the Nazis and the Japanese. In the neutral buffer zone that divides the two superpowers lives the man in the high castle, the author of an underground bestseller, a work of fiction that offers an alternative theory of world history in which the Axis powers didn''t win the war. The novel is a rallying cry for all those who dream of overthrowing the occupiers. But could it be more than that?', 'sci-fi', 1962, 2);
INSERT INTO books VALUES (6, 'Do Androids Dream of Electric Sheep?', 'By 2021, the World War has killed millions, driving entire species into extinction and sending mankind off-planet. Those who remain covet any living creature, and for people who can''t afford one, companies built incredibly realistic simulacra: horses, birds, cats, sheep. They''ve even built humans. Immigrants to Mars receive androids so sophisticated they are indistinguishable from true men or women. Fearful of the havoc these artificial humans can wreak, the government bans them from Earth. Driven into hiding, unauthorized androids live among human beings, undetected. Rick Deckard, an officially sanctioned bounty hunter, is commissioned to find rogue androids and \"retire\" them. But when cornered, androids fight back--with lethal force.', 'sci-fi', 1968, 2);
INSERT INTO books VALUES (7, 'The Andromeda Strain', 'The United States government is given a warning by the pre-eminent biophysicists in the country: current sterilization procedures applied to returning space probes may be inadequate to guarantee uncontaminated re-entry to the atmosphere.Two years later, seventeen satellites are sent into the outer fringes of space to "collect organisms and dust for study." One of them falls to earth, landing ina desolate area of Arizona.Twelve miles from the landing site, in the town of Piedmont, a shocking discovery is made: the streets are littered with the dead bodies of the town''s inhabitants, as if they dropped dead in their tracks.The terror has begun ...', 'sci-fi', 1969, 3);
INSERT INTO books VALUES (8, 'Jurassic Park', 'An astonishing technique for recovering and cloning dinosaur DNA has been discovered. Creatures once extinct now roam Jurassic Park, soon-to-be opened as a theme park. Until something goes wrong...and science proves a dangerous toy....', 'sci-fi', 1990, 3);
INSERT INTO books VALUES (9, 'Timeline', 'In an Arizona desert a man wanders in a daze, speaking words that make no sense. Within twenty-four hours he is dead, his body swiftly cremated by his only known associates. Halfway around the world archaeologists make a shocking discovery at a medieval site. Suddenly they are swept off to the headquarters of a secretive multinational corporation that has developed an astounding technology. Now this group is about to get a chance not to study the past but to enter it. And with history opened to the present, the dead awakened to the living, these men and women will soon find themselves fighting for their very survival six hundred years ago.', 'sci-fi', 1999, 3);
INSERT INTO books VALUES (10, 'Weaveworld', 'It is about a magical world that is hidden inside a tapestry, known as the Fugue, to safeguard it from both inquisitive humans and hostile supernatural foes. Two normal people become embroiled in the fate of the Fugue, attempting to save it from those who seek to destroy it.', 'horror', 1987, 4);
INSERT INTO books VALUES (11, 'Abarat', 'Welcome to the Abarat, a vast archipelago where every island is a different hour of the day. Candy has a place in this extraordinary land: She is here to help save the Abarat from the dark forces that are stirring at its heart--forces older than Time itself, and more evil than anything Candy has ever encountered. She''s a strange heroine, she knows. But this is a strange world.', 'horror', 2002, 4);
INSERT INTO books VALUES (12, 'The Scarlet Gospels', ' The gates to Hell are open and something beckons... The last of Earth''s magicians are living in fear. A Cenobite Hell Priest known as Pinhead is killing them off, gorging on their knowledge to enhance his own magical powers as part of a quest to take over Hell. Meanwhile, Private Investigator Harry D'' Amour is fulfilling the final wishes of the dead, who communicate with his business associate, the blind medium Norma Paine. But while investigating one such case, Harry inadvertently opens up a portal between Hell and Earth.', 'horror', 2015, 4);
INSERT INTO books VALUES (13, 'Darkly Dreaming Dexter', 'Meet Dexter Morgan, a polite wolf in sheep''s clothing. He''s handsome and charming, but something in his past has made him abide by a different set of rules. He''s a serial killer whose one golden rule makes him immensely likeable: he only kills bad people. And his job as a blood splatter expert for the Miami police department puts him in the perfect position to identify his victims. But when a series of brutal murders bearing a striking similarity to his own style start turning up, Dexter is caught between being flattered and being frightened-of himself or some other fiend.', 'thriller', 2004, 5);

INSERT INTO shelf VALUES (1, 1, 2);
INSERT INTO shelf VALUES (2, 2, 2);
INSERT INTO shelf VALUES (3, 3, 2);
INSERT INTO shelf VALUES (4, 10, 2);
INSERT INTO shelf VALUES (5, 11, 2);
INSERT INTO shelf VALUES (6, 12, 2);
INSERT INTO shelf VALUES (7, 4, 3);
INSERT INTO shelf VALUES (8, 5, 3);
INSERT INTO shelf VALUES (9, 6, 3);
INSERT INTO shelf VALUES (10, 7, 3);
INSERT INTO shelf VALUES (11, 8, 3);
INSERT INTO shelf VALUES (12, 9, 3);
