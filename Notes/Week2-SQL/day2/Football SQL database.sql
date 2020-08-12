/*Creation of my own database, with own specified name*/
CREATE DATABASE andrew_db_2


/*Creation of a table that will have six columns, with one being the team id (primary key)*/

CREATE TABLE BPL_top4 (team_id INT IDENTITY(1,1),
                       team_name VARCHAR(30),
                       team_abbreviation CHAR(3), 
                       no_of_titles INT, 
                       star_player VARCHAR(20),
                       founded_on DATETIME
                       PRIMARY KEY(team_id)

);

/*Running this code will drop the above table that I have created above*/

DROP TABLE BPL_top4

/*This code allows me to insert values into the columns of each table*/

INSERT INTO BPL_top4(team_name, team_abbreviation, no_of_titles, star_player, founded_on)
VALUES

      ('Chelsea', 'CHE', 6, 'Paul Pogba', '1873-11-09'),
      ('Manchester City', 'MNC', 5, 'Raheem Sterling', '1918-12-13'),
      ('Liverpool', 'LIV', 0, 'Sadio Mane', '1911-11-09'),
      ('Manchester United', 'MNU', 7, 'Paul Pogba', '1858-11-19')

/*This query will return all of the columns in my table*/
SELECT * FROM BPL_top4;

/*This query will return only the no_of_titles column in my table but will instead label it "The number of Premier leagues Won"*/

SELECT no_of_titles AS "The number Of Premier Leagues Won" FROM BPL_top4;

/* This query will return all the teams that were founded before 1900*/

SELECT * FROM BPL_top4 WHERE founded_on < 1900

ALTER TABLE BPL_top4
ADD 

UPDATE 

