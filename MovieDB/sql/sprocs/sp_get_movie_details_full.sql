CREATE PROCEDURE `sp_get_movie_details_full`(IN movie_id INT)
BEGIN
	-- get the actors in this movie
	SELECT a.id, a.last, a.first, a.sex, a.dob, a.dod, ma.role
    FROM MovieDB_actor a
    INNER JOIN MovieDB_movieactor ma
    ON a.id=ma.aid
    WHERE ma.mid=movie_id
    ORDER BY a.last, a.first;

    -- get the directors for this movie
    SELECT d.id, d.last, d.first, d.dob, d.dod
    FROM MovieDB_director d
    INNER JOIN MovieDB_moviedirector md
    ON d.id=md.did
    WHERE md.mid=movie_id
    ORDER BY d.last, d.first;

    -- get the genres of this movie
    SELECT genre
    FROM MovieDB_moviegenre g
    WHERE g.mid=movie_id;

    -- get the latest 5 reviews of this movie
	SELECT r.id, r.time, r.user_name, r.rating, r.comment
	FROM MovieDB_review r
	WHERE r.mid=movie_id
    ORDER BY r.time DESC
    LIMIT 5;

    -- get the average rating of this movie
    SELECT AVG(r.rating) as avg_rating
	FROM MovieDB_review r
	WHERE r.mid=movie_id;
END