

CREATE table movies(
	movie_id SERIAL PRIMARY KEY NOT NULL,
	title VARCHAR(255) NOT NULL,
	release_year int NOT NULL
);
CREATE table movies(
	movie_id SERIAL PRIMARY KEY NOT NULL,
	title VARCHAR(255) NOT NULL,
	release_year int NOT NULL
);

CREATE table viewers(
	viewer_id SERIAL PRIMARY KEY NOT NULL,
	age integer,
	sex varchar(1)
);

CREATE TABLE ratings (
	rating_id SERIAL PRIMARY KEY NOT NULL,
	viewer_id INTEGER REFERENCES viewers(viewer_id),
	movie_id INTEGER REFERENCES movies(movie_id),
	rating integer
);

INSERT INTO movies (title, release_year)
VALUES
	('Parasite', 2019),
	('Cats', 2019),
	('The Lighthouse', 2019),
	('Little Women', 2019),
	('Joker', 2019),
	('Once Upon a Time in Hollywood', 2019)
;

INSERT INTO viewers (age, sex)
VALUES 
	(41, 'M'),
	(30, 'F'),
	(32, 'M'),
	(30, 'F'),
	(29, 'F'),
	(29, 'F')
;

INSERT INTO ratings (viewer_id, movie_id, rating)
VALUES
	(1, 1, NULL),
	(1, 2, NULL),
	(1, 3, NULL),
	(1, 4, NULL),
	(1, 5, NULL),
	(1, 6, NULL),
	(2, 1, 5),
	(2, 2, 1),
	(2, 3, 2),
	(2, 4, 5),
	(2, 5, NULL),
	(2, 6, NULL),
	(3, 1 , 5),
	(3, 2, NULL),
	(3, 3, 3),
	(3, 4, NULL),
	(3, 5, 2),
	(3, 6, NULL),
	(4, 1, NULL),
	(4, 2, NULL),
	(4, 3, NULL),
	(4, 4, 4),
	(4, 5, 5),
	(4, 6, 5),
	(5, 1, 5),
	(5, 2, 2),
	(5, 3, 4),
	(5, 4, 5),
	(5, 5, 3),
	(5, 6, 4),
	(6, 1, NULL),
	(6, 2, 1),
	(6, 3, NULL),
	(6, 4, NULL),
	(6, 5, NULL),
	(6, 6, NULL)
;