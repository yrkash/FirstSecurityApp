-- TRUNCATE TABLE person;
DROP TABLE person;
CREATE TABLE person(
                       id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
                       username varchar(100) NOT NULL,
                       year_of_birth int NOT NULL,
                       password varchar NOT NULL
);
ALTER TABLE person ADD COLUMN role varchar NOT NULL;

UPDATE person SET role = 'ROLE_ADMIN' WHERE id = 3;
-- INSERT INTO person(username, year_of_birth, "password")  VALUES ('test_user1', 1960, 'test_password');
-- INSERT INTO person(username, year_of_birth, "password")  VALUES ('test_user2', 1960, 'test_password');