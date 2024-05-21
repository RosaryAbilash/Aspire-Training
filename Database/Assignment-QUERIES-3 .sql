-- QUERIES - III



-- 1) Who is the highest paid C programmer?
SELECT * FROM programmer WHERE salary = (SELECT max(salary) FROM programmer WHERE prof1 LIKE'C' OR prof2 LIKE 'c');

-- 2) Who is the highest paid female cobol programmer?
SELECT * FROM programmer WHERE salary = (SELECT max(salary) FROM programmer WHERE prof1 LIKE'COBOL' OR prof2 LIKE 'COBOL') AND sex="Female";

-- 3) Display the name of the HIGEST paid programmer for EACH language (prof1)
SELECT * FROM programmer WHERE (salary, prof1) IN (SELECT max(salary), prof1 FROM programmer GROUP BY prof1);

-- 4) Who is the LEAST experienced programmer?
SELECT * FROM programmer WHERE TIMESTAMPDIFF(YEAR, doj, NOW()) = (SELECT MIN(TIMESTAMPDIFF(YEAR, doj, NOW())) FROM programmer);

-- 5) Who is the MOST experienced programmer?\
SELECT * FROM programmer WHERE TIMESTAMPDIFF(YEAR, doj, NOW()) = (SELECT MAX(TIMESTAMPDIFF(YEAR, doj, NOW())) FROM programmer);

-- 6) Which language is known by ONLY ONE programmer?


-- 7) Who is the YONGEST programmer knowing DBASE?
SELECT name FROM programmer WHERE TIMESTAMPDIFF(YEAR, dob, NOW()) = (SELECT MIN(TIMESTAMPDIFF(YEAR, dob, NOW())) FROM programmer WHERE prof1 LIKE 'Dbase' OR prof2 LIKE 'Dbase');

-- 8) Which institute has MOST NUMBER of students?
SELECT SPLACE FROM STUDIES GROUP BY SPLACE ORDER BY COUNT(*) DESC LIMIT 1;

-- 9) Who is the above programmer?
SELECT NAME FROM STUDIES GROUP BY SPLACE ORDER BY COUNT(*) DESC LIMIT 1;


-- 10) Which female programmer earns MORE than 3000/- but DOES NOT know C, C++, Oracle or
-- Dbase?
SELECT * FROM PROGRAMMER WHERE SEX = 'Female' AND SALARY >3000 AND (PROF1 NOT IN('C','C++','ORACLE','DBASE') OR PROF2 NOT IN('C','C++','ORACLE','DBASE'))

-- 11) Which is the COSTLIEST course?
SELECT COURSE FROM STUDIES WHERE CCOST = (SELECT MAX(CCOST) FROM STUDIES);


-- 12) Which course has been done by MOST of the students?
SELECT COURSE FROM STUDIES GROUP BY COURSE ORDER BY COUNT(*) DESC LIMIT 1;

-- 13) Display name of the institute and course Which has below AVERAGE course fee?
SELECT SPLACE,COURSE FROM STUDIES WHERE CCOST < (SELECT AVG(CCOST) FROM STUDIES);

-- 14) Which institute conducts COSTLIEST course?
SELECT SPLACE FROM STUDIES WHERE CCOST = (SELECT MAX(CCOST) FROM STUDIES);

-- 15) Which course has below AVERAGE number of students?
SELECT COURSE FROM STUDIES GROUP BY COURSE HAVING COUNT(NAME) < ( SELECT AVG(cnt) FROM ( SELECT COUNT(NAME) AS cnt FROM STUDIES  GROUP BY COURSE) AS course_counts);

-- 16) Which institute conducts the above course?
SELECT SPLACE FROM STUDIES WHERE COURSE IN (SELECT COURSE   FROM STUDIES GROUP BY COURSE HAVING COUNT(NAME) < (    SELECT AVG(cnt)  FROM (   SELECT COUNT(NAME) AS cnt   FROM STUDIES   GROUP BY COURSE ) AS course_counts ));


-- 17) Display names of the course WHOSE fees are within 1000(+ or -) of the AVERAGE fee.
SELECT COURSE FROM STUDIES WHERE CCOST < (SELECT AVG(CCOST)+1000 FROM STUDIES) AND CCOST > (SELECT AVG(CCOST)-1000 FROM STUDIES);

-- 18) Which package has the HIGEST development cost?
SELECT TITLE,DCOST FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE)

-- 19) Which package has the LOWEST selling cost?
SELECT TITLE,DCOST FROM SOFTWARE WHERE DCOST = (SELECT MIN(DCOST) FROM SOFTWARE);


-- 20) Who developed the package, which has sold the LEAST number of copies?
SELECT NAME,SOLD FROM SOFTWARE WHERE SOLD = (SELECT MIN(SOLD) FROM SOFTWARE);


-- 21) Which language was used to develop the package WHICH has the HIGEST sales amount?
SELECT DEV_IN,SCOST FROM SOFTWARE WHERE SCOST = (SELECT MAX(SCOST) FROM SOFTWARE)

-- 22) How many copies of the package that has the LEAST DIFFRENCE between development and
-- selling cost were sold?
SELECT TITLE FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE WHERE DEV_IN LIKE 'PASCAL')


-- 23) Which is the COSTLIEAST package developed in PASCAL?
SELECT title FROM software WHERE scost = (SELECT MAX(scost) FROM software WHERE dev_in="PASCAL");

-- 24) Which language was used to develop the MOST NUMBER of package?
SELECT dev_in FROM software GROUP BY dev_in ORDER by COUNT(*) DESC LIMIT 1;

-- 25) Which programmer has developed the HIGEST NUMBER of package?
SELECT  name FROM software GROUP BY name ORDER by COUNT(*) DESC LIMIT 1;

-- 26) Who is the author of the COSTLIEST package?
SELECT name FROM software WHERE scost IN (SELECT MAX(scost) FROM software);

-- 27) Display names of packages WHICH have been sold LESS THAN the AVERAGE number of
-- copies?
SELECT title FROM software WHERE sold < (SELECT AVG(sold) FROM software);

-- 28) Who are the female programmers earning MORE than the HIGEST paid male programmers?
SELECT name FROM programmer WHERE sex="Female" AND salary > (SELECT MAX(salary) FROM programmer WHERE sex="Male");

-- 29) Which language has been stated as prof1 by MOST of the programmers?
SELECT prof1 FROM programmer GROUP BY prof1 ORDER by COUNT(*) DESC LIMIT 1;

-- 30) Who are the authors of packages, WHICH have recovered MORE THAN double the
-- development cost?
SELECT DISTINCT name  FROM software WHERE sold*scost > 2*dcost;

-- 31) Display programmer names and CHEAPEST package developed by them in EACH language?
SELECT name FROM software WHERE dcost IN (SELECT MIN(dcost) FROM software GROUP BY dev_in);

-- 32) Who is the YOUNGEST male programmer born in 1965?
SELECT NAME FROM PROGRAMMER WHERE DOB=(SELECT (MAX(DOB)) FROM PROGRAMMER WHERE DATE_FORMAT(DOB,'Y') LIKE '1965');

-- 33) Display language used by EACH programmer to develop the HIGEST selling and LOWEST
-- selling package.
SELECT dev_in FROM software WHERE sold = (SELECT MAX(sold) FROM software GROUP by name ) UNION SELECT dev_in FROM software WHERE sold = (SELECT MIN(sold) FROM software GROUP by name )

-- 34) Who is the OLDEST female programmer WHO joined in 1992
SELECT NAME FROM PROGRAMMER WHERE DOB=(SELECT (MAX(DOB)) FROM PROGRAMMER WHERE DATE_FORMAT(DOB,'Y') LIKE '1992');


-- 35) In WHICH year where the MOST NUMBER of programmer born?
SELECT YEAR(dob) FROM PROGRAMMER WHERE DOB=(SELECT (MAX(DOB)) FROM PROGRAMMER );


-- 36) In WHICH month did MOST NUMBRER of programmer join?
SELECT MONTH(doj) FROM PROGRAMMER WHERE doj=(SELECT (MAX(doj)) FROM PROGRAMMER );


-- 37) In WHICH language are MOST of the programmer's proficient?
SELECT dev_in FROM software GROUP BY dev_in ORDER by COUNT(*) DESC LIMIT 1;


-- 38) Who are the male programmers earning BELOW the AVERAGE salary of female
-- programmers?
SELECT name FROM programmer WHERE sex="Male" AND salary > (SELECT AVG(salary) FROM programmer WHERE sex="Female");
