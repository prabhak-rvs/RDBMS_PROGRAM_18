SET SERVEROUTPUT ON;

-- Student table
CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(50),
    DepartmentID NUMBER(5)
);

-- Write a PL/SQL function named COUNT_STUDENTS
-- to count the number of students in a particular department.
--
-- The function should:
-- 1. Accept DepartmentID as an input parameter.
-- 2. Return the number of students belonging to that department.
-- 3. Use COUNT(*) to calculate the number of students.
