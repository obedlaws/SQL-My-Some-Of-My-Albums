CREATE TABLE public.albums (
	album_name TEXT,
  	artist_or_band TEXT UNIQUE,
	release_date DATE,
	publishing_label TEXT UNIQUE
);

CREATE TABLE public.publishing_labels (
	name TEXT REFERENCES albums (publishing_label),
  	foundation_date DATE,
	main_genre TEXT
);

CREATE TABLE public.artistband (
	name TEXT REFERENCES albums (artist_or_band),
	genre TEXT,
	total_album_sales INTEGER
);

INSERT INTO albums (album_name, artist_or_band, release_date, publishing_label)
VALUES
	('Soy Pablo', 'boy pablo', '2018-10-05', '777 Music'),
	('The Marshall Mathers LP2', 'Eminem', '2013-01-01', 'Aftermath Records'),
	('An Evening with Silk Sonic',	'Bruno Mars', '2021-11-12', 'Atlantic Records'),
	('If Youre Reading This Its Too Late',	'Drake',	'2015-02-12',	'Cash Money Records'),
	('CALL ME IF YOU GET LOST',	'Tyler, The Creator', '2021-06-25',	'Columbia Records'),
	('The Off-Season',	'J.Cole',	'2021-05-14', 'Dreamville'),
	('Weezer (The Blue Album)',	'Weezer',	'1994-05-10',	'Geffen Records'),
	('SremmLife',	'Rae Sremmurd',	'2015-01-06',	'Interscope Records'),
	('FANTASY VXID',	'Scarlxrd',	'2020-06-26',	'Lxrd Records'),
	('The Ecology',	'Fashawn',	'2015-02-24',	'Mass Appeal'),
	('Viva la Vida or Death and All His Friends',	'Coldplay',	'2008-06-12',	'Parlophone Records'),
	('American Football (LP 1)',	'American Football',	'1999-09-14',	'Polyvinyl Records'),
	('At What Cost',	'GoldLink',	'2017-03-24',	'RCA Records'),
	('Holy Ghost',	'Modern Baseball',	'2016-05-13', 'Run For Cover Records'),
	('Animals Acoustic',	'TTNG',	'2018-10-05',	'Sargent House'),
	('Best Buds',	'Mom Jeans.',	'2016-07-03',	'Sequel Music Group'),
	('The Albatross',	'Foxing',	'2015-05-24',	'Triple Crown Records'),
	('Dawn FM (Alternate World)',	'The Weeknd',	'2022-01-07',	'UMG'),
	('A Boy Named Goo',	'The Goo Goo Dolls',	'1995-03-14',	'Warner Records'),
	('Jungle',	'Jungle',	'2014-07-14',	'XL Recordings');

INSERT INTO publishing_labels (name, foundation_date, main_genre)
VALUES
	('777 Music',	null,	'indie'),
	('Aftermath Records',	'1996-03-22',	'Hip-hop'),
	('Atlantic Records',	'1947-10-01',	'pop'),
	('Cash Money Records',	'1991-01-01',	'Hip-hop'),
	('Columbia Records',	'2006-09-01',	'pop'),
	('Dreamville',	'2007-01-01',	'Hip-hop'),
	('Geffen Records',	'1980-01-01',	'alternative rock'),
	('Interscope Records',	'1990-01-01',	'pop'),
	('Lxrd Records',	'2018-01-01',	'rap'),
	('Mass Appeal',	'2014-01-01',	'rap'),
	('Parlophone Records',	'1896-01-01',	'pop rock'),
	('Polyvinyl Records',	'1995-01-01',	'indie rock'),
	('RCA Records',	'1929-01-01',	'pop/hip-hop'),
	('Run For Cover Records',	'2004-01-01',	'indie'),
	('Sargent House',	'2006-01-01',	'rock'),
	('Sequel Music Group',	'2008-01-01',	'indie rock'),
	('Triple Crown Records',	'1997-01-01',	'indie rock'),
	('UMG',	'1937-09-01', 'pop'),
	('Warner Records',	'1958-03-19',	'pop'),
	('XL Recordings',	'1989-01-01',	'UK Rock');

INSERT INTO artistband (name, genre, total_album_sales)
VALUES
	('boy pablo',	'indie rock',	500000),
	('Eminem',	'rap',	220000000),
	('Bruno Mars',	'pop',	26000000),
	('Drake',	'pop',	170000000),
	('Tyler, The Creator',	'rap',	140000000),
	('J.Cole',	'rap',	500000000),
	('Weezer',	'rock',	45000000),
	('Rae Sremmurd',	'rap',	30000000),
	('Scarlxrd',	'rap',	501000),
	('Fashawn',	'rap',	520000),
	('Coldplay',	'alternative rock',	100000000),
	('American Football',	'math rock',	5000000),
	('GoldLink',	'rap',	700000),
	('Modern Baseball',	'indie rock',	1000000),
	('TTNG',	'indie rock',	2400000),
	('Mom Jeans.',	'indie rock',	300000),
	('Foxing',	'ambient rock',	550000),
	('The Weeknd',	'pop',	12500000),
	('The Goo Goo Dolls',	'rock',	50000000),
	('Jungle',	'nu disco',	7600000);
