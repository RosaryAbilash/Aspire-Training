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


-- 10) Which female programmer earns MORE than 3000/- but DOES NOT know C, C++, Oracle or
-- Dbase?
SELECT * FROM PROGRAMMER WHERE SEX LIKE 'F' AND SALARY >3000 AND (PROF1 NOT IN('C','C++','ORACLE','DBASE') OR PROF2 NOT IN('C','C++','ORACLE','DBASE'))

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
SELECT SPLACEFROM STUDIES WHERE COURSE IN (SELECT COURSE   FROM STUDIES GROUP BY COURSE HAVING COUNT(NAME) < (    SELECT AVG(cnt)  FROM (   SELECT COUNT(NAME) AS cnt   FROM STUDIES   GROUP BY COURSE ) AS course_counts ));


-- 17) Display names of the course WHOSE fees are within 1000(+ or -) of the AVERAGE fee.
SELECT COURSE FROM STUDIES WHERE CCOST < (SELECT AVG(CCOST)+1000 FROM STUDIES) AND CCOST > (SELECT AVG(CCOST)-1000 FROM STUDIES);

-- 18) Which package has the HIGEST development cost?
SELECT TITLE,DCOST FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE)

-- 19) Which package has the LOWEST selling cost?
SELECT TITLE,DCOST FROM SOFTWARE WHERE DCOST = (SELECT MIN(DCOST) FROM SOFTWARE;


-- 20) Who developed the package, which has sold the LEAST number of copies?
SELECT NAME,SOLD FROM SOFTWARE WHERE SOLD = (SELECT MIN(SOLD) FROM SOFTWARE);


-- 21) Which language was used to develop the package WHICH has the HIGEST sales amount?
SELECT DEV_IN,SCOST FROM SOFTWARE WHERE SCOST = (SELECT MAX(SCOST) FROM SOFTWARE)

-- 22) How many copies of the package that has the LEAST DIFFRENCE between development and
-- selling cost were sold?
SELECT TITLE FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE WHERE DEV_IN LIKE 'PASCAL')
