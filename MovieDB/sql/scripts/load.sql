SET GLOBAL local_infile=1;

LOAD XML LOCAL INFILE '../seed_data/xml/actor1.xml' INTO TABLE MovieDB_actor CHARACTER SET UTF8;
LOAD XML LOCAL INFILE '../seed_data/xml/actor2.xml' INTO TABLE MovieDB_actor CHARACTER SET UTF8;
LOAD XML LOCAL INFILE '../seed_data/xml/actor3.xml' INTO TABLE MovieDB_actor CHARACTER SET UTF8;

LOAD XML LOCAL INFILE '../seed_data/xml/director.xml' INTO TABLE MovieDB_director CHARACTER SET UTF8;

LOAD XML LOCAL INFILE '../seed_data/xml/movie.xml' INTO TABLE MovieDB_movie CHARACTER SET UTF8;

LOAD XML LOCAL INFILE '../seed_data/xml/movieactor1.xml' INTO TABLE MovieDB_movieactor CHARACTER SET UTF8;
LOAD XML LOCAL INFILE '../seed_data/xml/movieactor2.xml' INTO TABLE MovieDB_movieactor CHARACTER SET UTF8;

LOAD XML LOCAL INFILE '../seed_data/xml/moviedirector.xml' INTO TABLE MovieDB_moviedirector CHARACTER SET UTF8;

LOAD XML LOCAL INFILE '../seed_data/xml/moviegenre.xml' INTO TABLE MovieDB_moviegenre CHARACTER SET UTF8;

INSERT INTO MovieDB_maxpersonid VALUES (69000);
INSERT INTO MovieDB_maxmovieid VALUES (4750);