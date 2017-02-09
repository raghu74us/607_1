/* Moview table. Create one table to keep track of the movies. This table should 
include a unique ID, the title of the movie */

DROP TABLE IF EXISTS movie_db;

CREATE TABLE movie_db (
  movie_id integer PRIMARY KEY,
  Title varchar(50) NOT NULL,
  netflix_rating decimal(5,2)
  );

select * from movie_db;

INSERT INTO movie_db (movie_id,Title,netflix_rating) 
VALUES (5, "Storks",4.1) ;

INSERT INTO movie_db (movie_id,Title,netflix_rating) 
VALUES (4, "Beauty and the Beast",3.8) ;

INSERT INTO movie_db (movie_id,Title,netflix_rating) 
VALUES (3, "Toy story",3.5) ;

INSERT INTO movie_db (movie_id,Title,netflix_rating) 
VALUES (2, "Troll",3.9);

INSERT INTO movie_db (movie_id,Title,netflix_rating) 
VALUES (1, "Sing",4.3) ;

/*
Create and populate Reviewers table. */

DROP TABLE IF EXISTS review_db;

CREATE TABLE review_db (
  movie_id integer,
  user_name varchar(50),
  rating integer NOT NULL,
  review_comments varchar(50) NOT NULL
  );
  
  
INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (1, "Albert", 5, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (2, "Albert", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (3, "Albert", 5, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (4, "Albert", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (5, "Albert", 3, "Wow" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (1, "Charlie", 4, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (2, "Charlie", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (3, "Charlie", 5, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (4, "Charlie", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (5, "Charlie", 3, "Wow" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (1, "David", 5, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (2, "David", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (3, "David", 3, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (4, "David", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (5, "David", 4, "Wow" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (1, "Lucy", 5, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (2, "Lucy", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (3, "Lucy", 4, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (4, "Lucy", 5, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (5, "Lucy", 5, "Wow" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (1, "Jenniffer", 5, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (2, "Jenniffer", 3, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (3, "Jenniffer", 3, "Excellent" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (4, "Jenniffer", 4, "Super" );

INSERT INTO review_db (movie_id,user_name,rating,review_comments) 
VALUES (5, "Jenniffer", 4, "Wow" );


select count(*) from review_db;

/*
3. Report on Video Reviews. Write a JOIN statement that shows information from both tables.
*/

select a.movie_id,a.title,  round( (sum(b.rating)/count(b.rating)),1)
from movie_db a,
	 review_db b 
where a.movie_id = b.movie_id
group by a.movie_id,a.title ;