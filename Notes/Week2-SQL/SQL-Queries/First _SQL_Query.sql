CREATE DATABASE andrew_db


DROP TABLE film_table
DROP TABLE director

CREATE TABLE film_table
(
    film_name VARCHAR(10),
    film_type VARCHAR (8),
    release_date DATETIME,
    director VARCHAR(10),
    writer VARCHAR(15),
    star DECIMAL(2,1),
    film_lang CHAR(3),
    off_website VARCHAR(50),
    plot_summary VARCHAR(1000)
)

SP_HELP film_table


SELECT film_name, RIGHT(film_name,2) AS "Char index dfersv" FROM film_table




INSERT INTO film_table(film_name, film_type, release_date, director, writer, star, film_lang, off_website, plot_summary)
VALUES

    ('SQL', 'drama', '2020-10-04', 'Brian', 'Jack', 4.6, 'ENG', 'www.SQL.com/movie', 'This move is about the..'),
    ('Python', 'Action', '2020-12-15', 'Josh', 'Bruce', 4.2, 'SPN', 'www.SQL.com/movie', 'This language is')


ALTER TABLE film_table
ADD film_id INT IDENTITY PRIMARY KEY;

SELECT film_name AS 'Programming Language' FROM film_table;



CREATE TABLE director(
    director_id INT IDENTITY(1,1),
    director_name VARCHAR(50),
    city VARCHAR(20) DEFAULT 'LONDON',
    film_id INT,
    PRIMARY KEY(director_id),
    FOREIGN KEY(film_id) REFERENCES film_table(film_id)
)

INSERT INTO director (director_name, city, film_id)
VALUES(
    'Chris Nolan', 'New York', 1
)


SP_HELP

SELECT * FROM film_table

SELECT * FROM director


UPDATE director SET director_name='Jamie'

ALTER TABLE director
ADD CONSTRAINT film_id
FOREIGN KEY (film_id) 
REFERENCES film_table (film_id) ON DELETE CASCADE



DELETE FROM film_table WHERE film_id = 2



/* look up delete cascade, and add constraint
ADD constraint is a restriction,
*/


