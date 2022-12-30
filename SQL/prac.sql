-- creating database
CREATE DATABASE emp;

-- using database 
USE emp;

-- creating table employeeinfo
CREATE TABLE employeeinfo (
	empid INT PRIMARY KEY,
    empfname VARCHAR(100),
    emplname VARCHAR(100),
    department VARCHAR(100),
    project VARCHAR(100),
    address VARCHAR(100),
    DOB DATE,
    gender VARCHAR(1)
);

-- creating table employeeposition
CREATE TABLE employeeposition (
	empid INT,
    empposition VARCHAR(100),
    DOJ DATE,
    salary int
);

-- Adding data for employeeinfo
INSERT INTO employeeinfo
VALUES (1, 'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976-12-01','M'),
	   (2, 'Ananya','Mishra','Admin','P2','Delhi(DEL)','1968-05-02', 'F'),
       (3, 'Rohan','Diwan','Account','P3','Mumbai(BOM)','1980-01-01', 'M'),
       (4, 'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992-05-02', 'F'),
       (5, 'Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994-07-03', 'M');

-- Adding 1-record for employeeinfo       
INSERT INTO employeeinfo
VALUES (6, "Sid", "Vyas", "HR", 'P3', 'Ahmedabad(AHB)', '1973-12-01', 'M');
       
-- Adding data for employeeposition
INSERT INTO employeeposition
VALUES (1,'manager', '2022-05-01', 500000),
	   (2,'executive', '2022-05-02', 75000),
	   (3,'manager', '2022-05-01', 90000),
	   (2,'lead', '2022-05-02', 85000),
	   (1,'executive', '2022-05-01', 300000);


-- Solution-1 
SELECT upper(empfname) AS EmpName FROM employeeinfo;


-- Solution-2
SELECT count(*)
FROM employeeinfo
WHERE department = 'HR';


-- Solution-3
SELECT sysdate();


-- Solution-4 
SELECT substring(emplname, 1, 4)
FROM employeeinfo;


-- Solution-5
SELECT substring(address, 1, (position('(' IN Address)-1))
FROM employeeinfo;


-- Solution-6
CREATE TABLE newtable1 AS
SELECT * FROM employeeinfo;


-- Solution-7
SELECT * FROM employeeposition
WHERE salary BETWEEN 50000 AND 100000;


-- Solution-8
SELECT empfname FROM employeeinfo
WHERE empfname LIKE 'S%';


-- Solution-9
SELECT * FROM employeeposition
ORDER BY salary DESC LIMIT 3;


-- Solution-10
SELECT concat(empfname, ' ', emplname) AS Fullname
FROM employeeinfo;


-- Solution-11
SELECT gender, count(*)
FROM employeeinfo
WHERE DOB BETWEEN '1970/05/02' AND '1975/12/31'
GROUP BY gender;


-- TODAY
-- Solution-12
SELECT *
FROM employeeinfo
ORDER BY emplname DESC, department ASC;


-- Solution-13
SELECT *
FROM employeeinfo
WHERE emplname LIKE '____A';


-- Solution-14
SELECT *
FROM employeeinfo
WHERE empfname != "Sanjay" AND empfname != "Sonia";


-- Solution-15
SELECT *
FROM employeeinfo
WHERE address = "DELHI(DEL)";


-- Solution-16
SELECT empfname, emplname, empposition
FROM employeeinfo
INNER JOIN employeeposition
ON employeeinfo.empid = employeeposition.empid
WHERE empposition = "manager";


-- Solution-17
SELECT department, count(department)
FROM employeeinfo
GROUP BY department
ORDER BY department;


-- Solution-18
SELECT *
FROM employeeinfo
WHERE empid % 2 = 0;

SELECT *
FROM employeeinfo
WHERE empid % 2 != 0;


-- Solution-19
SELECT *
FROM employeeposition
INNER JOIN employeeinfo ON
employeeposition.empid = employeeinfo.empid;


-- Solution-20
SELECT *                   -- Minimum Salaries
FROM employeeposition
ORDER BY salary LIMIT 2;

SELECT *				   -- Maximum salaries
FROM employeeposition
ORDER BY salary DESC LIMIT 2;


-- Solution-21 (incomplete)


-- Solution-22
SELECT *
FROM employeeinfo
GROUP BY empid
HAVING count(empid) > 1;


-- Solution-23
SELECT department, group_concat(empfname)
FROM employeeinfo
GROUP BY department;


-- Solution-24
SELECT *
FROM employeeinfo
ORDER BY empid DESC LIMIT 3;


-- Solution-25
SELECT salary
FROM (
	SELECT salary
    FROM employeeposition
    ORDER BY salary DESC LIMIT 3
) as u_salary
ORDER BY salary LIMIT 1;


-- Solution-26
SELECT *
FROM employeeinfo
WHERE empid = (SELECT MIN(empid) FROM employeeinfo) 
   OR empid = (SELECT MAX(empid) FROM employeeinfo);


-- Solution-27 (incomplete)


-- Solution-28
SELECT *
FROM employeeposition
WHERE datediff(curdate(), DOJ) < 2;


-- Solution-29
SELECT empposition, sum(salary) AS "Total Salary"
FROM employeeposition
GROUP BY empposition;


-- Solution-30
SELECT *
FROM employeeinfo
where empid <= (SELECT count(*)/2 FROM employeeinfo);