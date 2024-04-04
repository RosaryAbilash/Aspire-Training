/*
 * Title : DBMS SQL Assignment
 * Author : Rosary Abilash M
 * Created At : 04-04-2024
 * Last Modified Date : 04-04-2024
 * Reviewed By :
 * Review Date :
 */


--  Programmer Table
CREATE TABLE Programmer (
	name varchar(1),
    dob date,
    doj date,
    sex varchar(1),
    prof1 varchar(1),
    prof2 varchar(1),
    salary int    
);



-- INSERT
INSERT INTO `programmer`(`name`, `dob`, `doj`, `sex`, `prof1`, `prof2`, `salary`) VALUES ('Rosary', '2002-06-10', '2024-03-14', 'Male', 'Python' , 'Java', 55000);
INSERT INTO `programmer`(`name`, `dob`, `doj`, `sex`, `prof1`, `prof2`, `salary`) VALUES ('Krishna', '2002-08-11', '2024-03-14', 'Male', 'Python' , 'C', 50000);
INSERT INTO `programmer`(`name`, `dob`, `doj`, `sex`, `prof1`, `prof2`, `salary`) VALUES ('Tamil', '2002-04-21', '2024-03-14', 'Male', 'Python' , 'Java', 50000);
INSERT INTO `programmer`(`name`, `dob`, `doj`, `sex`, `prof1`, `prof2`, `salary`) VALUES ('Kathir', '2002-10-11', '2024-03-14', 'Male', 'Java' , 'C', 50000);



-- Software Table
CREATE TABLE Software (
	name varchar(10),
    title varchar(10),
    dev_in varchar(10),
    scost decimal(7,2),
    dcost int,
    sold int
);



-- INSERT
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Rosary', 'ChatBot', 'Python', 4566.78, 6000, 100);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Rosary', 'server', 'PASCAL', 35463, 234212, 123);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Krishna', 'ChatBot', 'Python', 4236.78, 4700, 60);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Krishna', 'server', 'PASCAL', 32363, 234452, 53);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Tamilarasan', 'parachutes', 'PASCAL', 4000, 9000, 513);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Kathiravan', 'Browser', 'PASCAL', 35432, 63522, 380);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Kamal', 'ChatBot', 'Python', 23452, 9773, 100);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Bharat', 'Web App', 'Python', 1234, 3214, 150);
INSERT INTO `software` (`name`, `title`, `dev_in`, `scost`, `dcost`, `sold`) VALUES ('Hussain', 'firmware', 'PASCAL', 9274, 23322, 10);

-- Studies Table
CREATE TABLE studies (
	name varchar(10),
    splace varchar(10),
    course varchar(10),
    ccost varchar(10)
);


-- INSERT
INSERT INTO `studies` (`name`, `splace`, `course`, `ccost`) VALUES ('Rosary', 'Villupuram', 'CSE', '70000');






-- QUERIES - I



-- 1) Find out the SELLING COST AVERAGE for the packages developed in PASCAL?

SELECT AVG(`scost`) FROM software;


-- 2) Display the names and ages of all programmers.
SELECT name, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y')+0 AS age FROM programmer;

