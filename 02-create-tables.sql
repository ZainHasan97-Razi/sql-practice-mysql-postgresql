-- CREATE TABLE events;
-- naming convention 1
-- CREATE TABLE "event";
-- naming convention 2 like event is a reserved keyword so we can make it like this
--
-- Notes:
-- Alternate to "PRIMARY KEY" = "NOT NULL UNIQUE" command
-- AUTO_INCREMENT works with mysql not postgresql
-- For Mysql: INT PRIMARY KEY AUTO_INCREMENT
-- For Postgresql or others: SERIAL PRIMARY KEY
--
CREATE TABLE events(
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(300) NOT NULL CHECK(LENGTH(name) > 2),
   date_planned TIMESTAMP NOT NULL,
   image VARCHAR(300),
   description TEXT NOT NULL,
   max_participants INT CHECK (max_participants > 0),
   min_age INT CHECK (min_age > 0)
);