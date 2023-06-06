CREATE TABLE IF NOT EXISTS Gener (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null
);


CREATE TABLE IF NOT EXISTS Singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null
	(не понимаю)interval  -- не понимаю как  
	Albom_id INTEGER REFERENCES Albom(id),
);

CREATE TABLE IF NOT EXISTS Albom (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null
	(не понимаю)date YEAR  -- не понимаю как 
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null
	(не понимаю)date YEAR  -- не понимаю как 
);

CREATE TABLE IF NOT EXISTS Geners (
	Singers_id INTEGER REFERENCES Singers(id),
	Gener_id INTEGER REFERENCES Gener(id),
	CONSTRAINT pk PRIMARY KEY (Singers_id, Gener_id)
);


CREATE TABLE IF NOT EXISTS Singers&Albom(
	Singers_id INTEGER REFERENCES Singers(id),
	Albom_id INTEGER REFERENCES Albom(id),
	CONSTRAINT pk PRIMARY KEY (Ispolniteli_id, Albom_id)
);	

CREATE TABLE IF NOT EXISTS Collection-of-Songs(
	Collection_id INTEGER REFERENCES Collection(id),
	Songsid INTEGER REFERENCES Songs(id),
	CONSTRAINT pk PRIMARY KEY (Ispolniteli_id, Albom_id)
);




