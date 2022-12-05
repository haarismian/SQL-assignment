# UoE SQL Assignment

# What Is This?

This is a simple SQL file to answer the assigned questions

## 1. List all Employees whose salary is between 1,000 AND 2,000. Show the Employee Name, Department and Salary

![image](https://user-images.githubusercontent.com/13083798/205739799-2c5ed9d7-0526-485b-999e-dd03d0092c73.png)

#### SOLUTION EXPLANATION

1. The script selects the employee name, department number, and the salary values and sets the criteria for Salary to be between 1000 and 2000
2. For better user readability, the columns have been renamed to something that makes a little more sense to human readers

#### Alternatives

Instead of using the _BETWEEN_ keyword, I could have searched for Salary above 1000 and salary below 2000

`SELECT ENAME AS 'Name', DEPTNO AS 'Department #', SAL AS 'Salary'FROM EMP WHERE SAL > 1000 AND SAL < 2000;`

## 2. Count the number of people in department 30 who receive a salary and the number of people who receive a commission

![image](https://user-images.githubusercontent.com/13083798/205739830-9444eaeb-3ff8-41f4-9ebc-a273bcd65340.png)

#### SOLUTION EXPLANATION

1. The script selects count of salary (SAL) and count of commission (COMM) from the employee table where the deptno is 30
2. For better user readability, the columns have been renamed to something that makes a little more sense to human readers

#### Alternatives

I believe there is no real alternative approach

## 3. Find the name and salary of employees in Dallas

![image](https://user-images.githubusercontent.com/13083798/205740000-fabfe140-edc9-4986-86e2-c66a34c1271e.png)

#### SOLUTION EXPLANATION

1. This problem required us to join the employee and dept tables together because the solution required us to use the department name when the name is located in the dept table
2. The tables were joined using the department number and then the employee names and salaries were selected where the location of the new joined table was Dallas
3. For better user readability, the columns have been renamed to something that makes a little more sense to human readers

#### Alternatives

1. Alternatively, we could have stored the department number that corresponds to Dallas and then selected the employee table where employees were in the dallas dept

## 4. List all departments that do not have any employees

![image](https://user-images.githubusercontent.com/13083798/205740281-e557a2a0-f19b-4c96-b55b-eee8b5e9bd9e.png)

#### SOLUTION EXPLANATION

1. This problem required us to join the employee and dept tables together because the solution required us to find the department with no employees, however the employee table would not list such a thing
2. The tables were joined using the department number and then I selected the department number and count of employees grouping by department number and where the count of employees was 0
3. For better user readability, the columns have been renamed to something that makes a little more sense to human readers

#### Alternatives

I believe there is no real alternative approach

## 5. List the department number and average salary of each department

![image](https://user-images.githubusercontent.com/13083798/205743051-8d11fd34-8631-4130-bef1-3054c62de096.png)

#### SOLUTION EXPLANATION

1. I selected for the average salary from the employee table and grouped by department number
2. For better user readability, the columns have been renamed to something that makes a little more sense to human readers

#### Alternatives

I believe there is no real alternative approach to this one
