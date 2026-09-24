SET SERVEROUTPUT ON;

CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(50),
    DepartmentID NUMBER(5)
);

CREATE OR REPLACE FUNCTION count_students (
    p_departmentid IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE DepartmentID = p_departmentid;

    RETURN v_count;

END;
/
