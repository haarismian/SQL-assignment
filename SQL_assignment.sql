mysql;
USE COMPANY1;

--List all Employees whose salary is between 1,000 AND 2,000. Show the Employee Name, Department and Salary
SELECT ENAME AS 'Name', DEPTNO AS 'Department #', SAL AS 'Salary'FROM EMP WHERE SAL BETWEEN 1000 AND 2000;
-- Alternative: SELECT ENAME AS 'Name', DEPTNO AS 'Department #', SAL AS 'Salary'FROM EMP WHERE SAL > 1000 AND SAL < 2000;

--Count the number of people in department 30 who receive a salary and the number of people who receive a commission
SELECT COUNT(SAL) AS 'Dept 30 salary count', COUNT(COMM) AS 'Dept 30 commission count' FROM EMP WHERE DEPTNO=30;

--Find the name and salary of employees in Dallas
-- Because the name of the  dept is not in the emp table, we must join the emp table with the dept table to find employees in Dallas
SELECT EMP.ENAME AS 'Dallas employee name', EMP.SAL AS 'Salary' FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE LOC='DALLAS';

-- List all departments that do not have any employees
-- Because the name of the  dept is not in the emp table, we must join the emp table with the dept table to count the number of employees in each dept, and then search where emp count is 0
SELECT DEPT.DEPTNO AS 'Department #', COUNT(EMP.EMPNO) AS '# of employees' FROM DEPT LEFT JOIN EMP ON EMP.DEPTNO=DEPT.DEPTNO GROUP BY(DEPT.DEPTNO) HAVING COUNT(EMP.EMPNO)=0;

-- List the department number and average salary of each department
SELECT DEPTNO AS 'Department #', AVG(SAL) AS 'Average employee salary' FROM EMP GROUP BY DEPTNO;