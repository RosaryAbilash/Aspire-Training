-- QUERY - IV

-- 1) Display the details of THOSE WHO are drawing the same salary
SELECT name, salary FROM programmer WHERE salary IN (SELECT salary FROM programmer GROUP by salary HAVING COUNT(*) > 1);

-- 2) Display the details of software developed by male programmers earning MORE than 3000
SELECT * FROM software WHERE name IN (SELECT name FROM programmer WHERE sex="Male" AND salary > 3000);

-- 3) Display details of packages developed in PASCAL by female programmers.
SELECT * FROM software WHERE name IN (SELECT name FROM programmer WHERE sex="Female") AND dev_in="PASCAL";

-- 4) Display the details of the programmer WHO joined BEFORE 1990.
SELECT * FROM programmer WHERE year(doj) < '1990';

-- 5) Display details of software developed in C by female programmers of PRAGATHI
SELECT * FROM software WHERE name IN (SELECT name FROM programmer WHERE sex="Female") AND dev_in="COBOL" AND name IN (SELECT name FROM studies WHERE splace="Villupuram");

SELECT * FROM software s JOIN programmer p ON s.name = p.name JOIN studies st ON p.name = st.name WHERE p.sex="Female" AND s.dev_in="COBOL" AND st.splace="Villupuram";


-- 6) Display NUMBER of packages NUMBER of copies sold and sales value of EACH programmer
-- Institute-wise
SELECT st.splace, COUNT(s.dev_in) from software s JOIN studies st ON s.name = st.name GROUP BY st.splace;

-- 7) Display details of software developed in DBASE by male programmers WHO belong to the
-- institute on which MOST NUMBER OF programmer’s studies.


-- 8) Display the details of the software that was developed by male programmers born BEFORE
-- 1965 and female programmers born AFTER 1975
SELECT * FROM programmer,  software WHERE  programmer.name = software.name AND (sex="Male" AND year(dob)) <1965 AND (sex="Female" AND year(dob) > 1975);

-- 9) Display the details of the software that was developed in the language that is NOT the
-- programmer’s first proficiency
SELECT * FROM software, programmer WHERE programmer.name=software.name AND software.dev_in <> programmer.prof1;

-- 10) Display details of software that was developed in the language which is NEITHER first NOR
-- second proficiency of the programmer
SELECT * FROM software, programmer WHERE programmer.name=software.name AND software.dev_in <> programmer.prof1 AND software.dev_in <> programmer.prof2;

-- 11) Display details of software developed by male students of SABHARI
SELECT * from software, studies, programmer WHERE software.name = programmer.name AND software.name = studies.name AND studies.splace="SABHARI" AND programmer.sex="Male";

-- 12) Display the names of programmers WHO HAVE NOT developed any package.
select name from programmer where name not in(select name from software);

-- 13) What is the total cost of the software developed by the programmers byAPPLE?
select sum(scost) from software s,studies st where s.name=st.name and splace='apple';

-- 14) Who are the programmers WHO JOINED in the same day?
SELECT p1.name FROM programmer p1 ,  programmer p2 WHERE DAY(p1.doj) = DAY(p2.doj) AND p1.name <> p2.name;

-- 15) Who are the programmers WHO HAVE THE SAME PROF2?
SELECT p1.name FROM programmer p1 ,  programmer p2 WHERE p1.prof2= p2.prof2 AND p1.name <> p2.name;

-- 16) Display the total sales values of software, institutes-wise.
SELECT splace, (software.scost*software.sold) AS sales FROM software, studies WHERE software.name=studies.name GROUP BY studies.splace;

-- 17) In which institutes did the person who developed the COSTLIEST package study?
SELECT splace FROM software, studies WHERE studies.name = software.name GROUP BY splace HAVING MAX(dcost) = (SELECT MAX(dcost) FROM software);


-- 18) Which language listed in prof1 and prof2 HAS NOT BEEN used to develop any package?
select prof1 from programmer where prof1 not in(select dev_in from software) union select prof2 from programmer where prof2 not in(select dev_in from software);

-- 19) How much does the person WHO developed the HIGHEST selling package earn and WHAT
-- course did he/she undergo?
SELECT studies.name, course FROM software, studies WHERE software.name=studies.name ORDER BY scost DESC LIMIT 1;

-- 20) How many months will it take for each programmer to recover the cost of the course
-- underwent?
SELECT programmer.name, CEIL(studies.ccost/programmer.salary) AS months FROM programmer, studies WHERE programmer.name=studies.name;

-- 21) Which is the COSTLIEST package developed by a person with under 3 year’s expenences?
SELECT dev_in FROM programmer, software WHERE programmer.name=software.name and dcost= (select max(software.dcost) FROM programmer, software WHERE programmer.name=software.name AND TIMESTAMPDIFF(YEAR, doj, NOW()) < 3);

-- 22) What is the AVERAGE salary for those WHOSE software's sales value is more than 50,000?
select avg(salary) from programmer p,software s where p .name=s.name and sold*scost>50000;

-- 23) How many packages were developed by the students WHO studied in the institute that Charge
-- the LOWEST course fee?
select count(s.name) from software s,studies st where s.name=st.name group by s.name,ccost having min(ccost)=(select min(ccost) from studies);

-- 24) How many packages were developed by the person WHO developed the CHEAPEST package?
-- Where did he\she study?
select count(*) from programmer p,software s where s .name=p.name group by dev_in having min(dcost)=(select min(dcost) from software);

-- 25) How many packages were developed by female programmers earning MORE than the
-- HIGHEST paid male programmer?
select count(dev_in) from programmer p,software s where s.name=p.name and sex='f' and salary>(select max(salary) from programmer p,software s where s.name=p.name and sex='m');

-- 26) How many packages were developed by the MOST experienced programmers from BDPS?
select count(*) from software s,programmer p where p.name=s.name group by doj having max(doj)=(select max(doj) from studies st,programmer p, software s where p.name=s.name and st.name=p.name and (splace='bdps'));

-- 27) List the programmers (from software table) and institutes they studied, including those WHO
-- DIDN'T develop any package.
select name,splace from studies where name not in(select name from software);


-- 28) List each profit with the number of programmers having that prof1 and the number of packages
-- developed in that prof1.
select count(*),sum(scost*sold-dcost) "PROFIT" from software where dev_in in (select prof1 from programmer) group by dev_in;

-- 29) List programmer names (from programmer table) and number of packages EACH developed.
select s.name,count(dev_in) from programmer p1,software s where p1.name=s.name group by s.name;

-- 30) List all the details of programmers who have done a course at S.S.I.L
select programmer.* from programmer,software,studies where splace='SSIL' and programmer.name=software.name and programmer.name=studies.name and studies.splace='S.S.I.L';