-- QUERIES - II

-- 1) Display THE NUMBER OF packages developed in EACH language
SELECT dev_in, COUNT(*) AS number_of_packages FROM software GROUP BY dev_in;

-- 2) Display THE NUMBER OF packages developed by EACH person.
SELECT name, COUNT(*) as no_of_packages FROM software GROUP BY name;

-- 3) Display THE NUMBER OF male and female programmer
SELECT COUNT(*) as gender_count FROM programmer GROUP BY sex;

-- 4) Display THE COSTLIEST packages and HIGEST selling developed in EACH language
SELECT title, dev_in, MAX(scost), MAX(sold) FROM software GROUP BY dev_in;

-- 5) Display THE NUMBER OF people BORN in EACH YEAR
SELECT DOB, COUNT(*) as year FROM programmer GROUP BY YEAR(dob);

-- 6) Display THE NUMBER OF people JOINED in EACH YEAR
SELECT DOJ, COUNT(*) as year FROM programmer GROUP BY YEAR(doj);

-- 7) Display THE NUMBER OF people BORN in EACH MONTH.
SELECT DOB, COUNT(*) as year FROM programmer GROUP BY MONTH(dob);

-- 8) Display THE NUMBER OF people JOINED in EACH MONTH
SELECT DOJ, COUNT(*) as year FROM programmer GROUP BY MONTH(doj);

-- 9) Display the language wise COUNTS of prof1.
SELECT prof1, COUNT(*) as LANGUAGE FROM programmer GROUP BY prof1;

-- 10) Display the language wise COUNTS of prof2
SELECT prof2, COUNT(*) as LANGUAGE FROM programmer GROUP BY prof2;

-- 11) Display THE NUMBER OF people in EACH salary group
SELECT salary, COUNT(*) FROM programmer GROUP BY salary;

-- 12) Display THE NUMBER OF people who studied in EACH institute.
SELECT splace, COUNT(*) FROM studies GROUP BY splace;

-- 13) Display THE NUMBER OF people who studied in EACH course
SELECT course, COUNT(*) FROM studies GROUP BY course;

-- 14) Display the TOTAL development COST of the packages developed in EACH language.
SELECT title,dev_in, SUM(dcost) FROM software GROUP BY dev_in;

-- 15) Display the selling cost of the package developed in EACH language
SELECT title,dev_in, SUM(scost) as selling_cost FROM software GROUP BY dev_in;

-- 16) Display the cost of the package developed by EACH programmer.
SELECT name, SUM(dcost) as Development_cost FROM software GROUP BY name;

-- 17) Display the sales values of the package developed in EACH programmer
SELECT name, SUM(scost*sold) as sales FROM software GROUP BY name;

-- 18) Display the NUMBER of packages developed by EACH programmer.
SELECT name, COUNT(*) FROM software GROUP BY name;

-- 19) Display the sales COST of packages developed by EACH programmer language wise
SELECT title, SUM(scost*sold) as sales FROM software GROUP BY dev_in;

-- 20) Display EACH programmers name, costliest package and cheapest packages developed by
-- Him/Her
SELECT name, MAX(scost), MIN(scost) FROM software GROUP BY name;

-- 21) Display EACH language name with AVERAGE development cost, AVERAGE cost, selling cost
-- and AVERAGE price per copy
SELECT title, AVG(dcost) as avg_dcost, AVG(scost) as avg_scost, AVG(scost) as price_per_copy FROM software GROUP by dev_in;

-- 22) Display EACH institute name with NUMBER of courses, AVERAGE cost per course.
SELECT splace, COUNT(course), AVG(ccost) FROM studies GROUP BY splace;

-- 23) Display EACH institute name with NUMBER of students
SELECT splace, COUNT(name) FROM studies GROUP BY splace;

-- 24) Display names of male and female programmers
SELECT name FROM programmer WHERE sex = 'Male' OR sex = 'Female';

-- 25) Display the programmer's name and their packages.
SELECT name, title FROM software;

-- 26) Display the NUMBER of packages in EACH language
SELECT dev_in, COUNT(*) FROM software GROUP by dev_in;

-- 27) Display the NUMBER of packages in EACH language for which development cost is less than
-- 1000
SELECT dev_in, COUNT(*) FROM software WHERE dcost < 1000 GROUP by dev_in;

-- 28) Display the AVERAGE difference BETWEEN scost and dcost for EACH language.
SELECT dev_in, AVG(scost-dcost) as average FROM software GROUP by dev_in;

-- 29) Display the TOTAL scost, dcsot and amount TOBE recovered for EACH programmer for
-- whose dcost HAS NOT YET BEEN recovered.
SELECT SUM(scost) as total_scost, SUM(dcost) as total_dcost, SUM(dcost-(sold*scost)) as recovery FROM software GROUP by name HAVING SUM(dcost)>SUM(sold*scost);

-- 30) Display highest, lowest and average salaries for THOSE earning MORE than 2000.
SELECT MAX(salary), MIN(salary), AVG(salary) FROM programmer WHERE salary > 2000;