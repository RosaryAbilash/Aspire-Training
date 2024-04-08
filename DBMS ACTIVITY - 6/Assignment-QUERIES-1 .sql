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
INSERT INTO `studies` (`name`, `splace`, `course`, `ccost`) VALUES ('Krishna', 'Chennai', 'DCS', '9000');
INSERT INTO `studies` (`name`, `splace`, `course`, `ccost`) VALUES ('Tamil', 'Coimbatore', 'PGDCA', '8000');
INSERT INTO `studies` (`name`, `splace`, `course`, `ccost`) VALUES ('Kathir', 'Pondy', 'DCS', '5000');
INSERT INTO `studies` (`name`, `splace`, `course`, `ccost`) VALUES ('Hussain', 'Trichy', 'PGDCA', '36000');






-- QUERIES - I



-- 1) Find out the SELLING COST AVERAGE for the packages developed in PASCAL?

SELECT AVG(`scost`) FROM software;


-- 2) Display the names and ages of all programmers.
SELECT name, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y')+0 AS age FROM programmer;

SELECT 
    name, 
    TIMESTAMPDIFF(YEAR, dob, NOW()) AS age
FROM 
    programmer;



-- 3) Display the names and ages of all the programmers who have undergone training in DCS course

SELECT name, TIMESTAMPDIFF(YEAR, dob, NOW()) AS age FROM programmer WHERE name IN (SELECT name FROM studies WHERE course="DCS");

-- 4) What is the highest numbers of copies sold by a package?

SELECT title FROM software WHERE sold IN (SELECT MAX(sold) FROM software);

-- 5) Display the names and date of birth of all the programmer born in JANUARY

SELECT name, dob FROM programmer WHERE MONTH(dob)=1;

-- 6) Display lowest course fee.
SELECT MIN(ccost) FROM studies;

-- 7) How many programmer has done PGDCA course
SELECT COUNT(name) FROM programmer WHERE name IN ( SELECT name from studies WHERE course="PGDCA");

-- 8) How much revenue has been earned through sales of packages in C
SELECT SUM((scost*sold)-dcost) as Revenue FROM software WHERE dev_in="C";

-- 9) Display the details of software developed by Ramesh?
SELECT title, dev_in, dcost FROM software WHERE name="Rosary";

-- 10) How many programmers studied at SABHARI
SELECT COUNT(name) FROM studies WHERE splace="SABHARI";

-- 11) Display the details of PACKAGES whose sales crossed the 20000 mark.
SELECT title, dev_in, sold FROM software WHERE (scost*sold) >= 200000;

-- 12) Find out the number of copies which should be sold in order to recover the development cost of
-- each package.
SELECT title, CEIL(dcost / scost) AS copies_to_sell FROM software;

-- 13) What is the price of the costliest software developed in BASIC?

SELECT title FROM software WHERE dcost IN (SELECT MAX(dcost) FROM software WHERE dev_in="BASIC");

-- 14) Display the details of packages for which development cost has been recovered
SELECT * FROM software WHERE (scost * sold) > dcost;


-- 15) How many packages were developed in dbase?
SELECT COUNT(title) FROM software WHERE dev_in="Python";

-- 16) How many programmers studies at paragathi?
SELECT COUNT(name) FROM studies WHERE splace="paragathi";

-- 17) How many programmers paid 5000 to 10000 for their course?
SELECT COUNT(name) FROM studies WHERE ccost > 5000 AND ccost < 10000;

-- 18) What is the average course fee?
SELECT AVG(ccost) FROM studies;

-- 19) Display the details of programmers knowing c?
SELECT * FROM programmer WHERE prof1="C" OR prof2="C";

-- 20) How many programmers know either Cobol or Pascal?
SELECT * FROM programmer WHERE prof1="Cobol" OR prof1="Pascal" OR prof2="Cobol" OR prof2="Pascal";

SELECT COUNT(*) AS num_programmers FROM programmer WHERE prof1 IN ('Cobol', 'Pascal') OR prof2 IN ('Cobol', 'Pascal');

-- 21) How many programmers don't know Pascal & C?
SELECT COUNT(*) AS num_programmers FROM programmer WHERE prof1 NOT IN ('C', 'Pascal') OR prof2 NOT IN ('Cobol', 'Pascal');

-- 22) How old is the oldest male programmers?
SELECT name, TIMESTAMPDIFF(YEAR, dob, NOW()) AS age FROM programmer WHERE sex="MALE" ORDER BY age DESC LIMIT 1;

-- 23) What is the average age of female programmers?
SELECT AVG(TIMESTAMPDIFF(YEAR, dob, NOW())) AS AVG_Age FROM programmer WHERE sex="Female";

-- 24) Calculate the experience in years for each programmers and display along with the names in
-- descending order?
SELECT name, TIMESTAMPDIFF(YEAR, doj, NOW()) AS experience FROM programmer ORDER BY experience DESC;

-- 25) Who are the programmers who celebrate their birthday during the current month?
SELECT name FROM programmer WHERE MONTH(dob) = MONTH(NOW());

-- 27) What are the languages known by the male programmers?
SELECT DISTINCT prof1 FROM programmer WHERE sex="Male" UNION SELECT DISTINCT prof2 FROM programmer WHERE sex="Male";

-- 28) What is the Average salary?
SELECT AVG(salary) FROM programmer;

-- 29) How many people draw 2000 to 4000?
SELECT * FROM programmer WHERE salary > 2000 AND salary < 4000;

-- 30) Display the details of those who don't know Clipper, Cobol or Pascal?
SELECT * FROM programmer WHERE prof1 NOT IN ('Cobol', 'Pascal') OR prof2 NOT IN ('Cobol', 'Pascal');

-- 31) How many Female programmers knowing C are above 24 years of age?
SELECT COUNT(name) as Female_programer FROM programmer WHERE  prof1 NOT IN ('C') AND  prof2 NOT IN ('C') AND  TIMESTAMPDIFF(YEAR, dob, NOW()) > 24 AND sex='Female';

-- 32) Who are the programmers who will be celebrating their Birthday within a week?
SELECT name FROM programmer WHERE WEEK(dob) = WEEK(NOW());

-- 33 Display the details of those with less than a year's experience?
SELECT * FROM programmer WHERE TIMESTAMPDIFF(YEAR, doj, NOW()) < 1;

-- 34 Display the details of those who will be completing 2 years of service this year?
SELECT * FROM programmer WHERE TIMESTAMPDIFF(YEAR, doj, NOW()) = 2;

-- 35 Calculate the amount to be recovered for those packages whose development cost has not been
-- recovered?
SELECT (dcost-scost) as recovery_cost FROM software WHERE (scost*sold) < dcost;

-- 36) List the packages which have not been sold so far?
SELECT * FROM software WHERE sold=0;

-- 37) Find out the cost of the software developed by Mary?
SELECT SUM(scost) FROM software WHERE name="Rosary";

-- 38) Display the institute’s names from the studies table without duplicates?
SELECT DISTINCT splace FROM studies;

-- 39) How many different courses are mentioned in the studies table?
SELECT COUNT(DISTINCT course) FROM studies;

-- 40) Display the names of the programmers whose names contain 2 occurrences of the letter A?
SELECT name FROM programmer WHERE (CHAR_LENGTH(name)-CHAR_LENGTH(REPLACE(name, 'a', ''))) = 2;

-- 41) Display the names of programmers whose names contain unto 5 characters?
SELECT name FROM programmer WHERE CHAR_LENGTH(name) = 5;

-- 42) How many female programmers knowing COBOL have more than 2 years experience?
SELECT COUNT(name) as Female_programer FROM programmer WHERE  prof1 IN ('COBOL') AND  prof2  IN ('COBOL') AND  TIMESTAMPDIFF(YEAR, doj, NOW()) > 2 AND sex='Female';

-- 43) What is the length of the shortest name in the programmer table?
SELECT MIN(CHAR_LENGTH(name)) FROM programmer;

-- 44) What is the average development cost of a package developed in COBOL?
SELECT AVG(dcost) FROM software WHERE dev_in="COBOL";

-- 45) Display the name, sex, dob (DD/MM/YY format), doj for all the programmers without using
-- conversion function?
SELECT  name, sex, CONCAT(RIGHT(dob, 2), '/', SUBSTRING(dob, 6, 2), '/', LEFT(dob, 4)) AS dob, CONCAT(RIGHT(doj, 2), '/', SUBSTRING(doj, 6, 2), '/', LEFT(doj, 4)) AS doj FROM programmer;

-- 46) Who are the programmers who were born on the last day of the month?
SELECT name FROM programmer WHERE DAY(LAST_DAY(dob)) = DAY(dob);

-- 47) What is the amount paid in salaries of the male programmers who do not know Cobol?
SELECT SUM(salary) as Salary FROM programmer WHERE  prof1 NOT IN ('COBOL') AND  prof2 NOT IN ('COBOL') AND sex='Male';

-- 48) Display the title, scost, dcost and difference between scost and dcost in descending order of
-- difference?
SELECT title, scost, dcost FROM software ORDER BY (scost-dcost) DESC;

-- 49) Display the name, dob, doj of those month of birth and month of joining are same?
SELECT name, dob, doj FROM programmer WHERE MONTH(dob) = MONTH(doj);

-- 50) Display the names of the packages whose names contain more than 1 word?
SELECT title FROM software WHERE title LIKE '% %';
