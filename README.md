# PL/SQL Function – Count Students by Department

## Objective

Write a PL/SQL function to count the number of students available in a particular department.

## Problem Statement

Create a PL/SQL function named:

```text
COUNT_STUDENTS
```

The function should accept a `DepartmentID` as an input parameter and return the number of students belonging to that department.

## Student Table

The table contains:

| Column       | Datatype     |
| ------------ | ------------ |
| StudentID    | NUMBER(5)    |
| StudentName  | VARCHAR2(50) |
| DepartmentID | NUMBER(5)    |

## Requirements

Your function must:

1. Use `CREATE OR REPLACE FUNCTION`.
2. Use the function name `COUNT_STUDENTS`.
3. Accept `DepartmentID` as an input parameter.
4. Return a `NUMBER`.
5. Use `COUNT(*)`.
6. Retrieve records from the `Student` table.
7. Use `DepartmentID` to filter the students.
8. Store the count in a variable.
9. Return the count.
10. End the function correctly.

## Starter File

Open:

```text
starter.sql
```

Complete the function.

## Submission File

Save your completed program as:

```text
answers.sql
```

## Expected Function Structure

```sql
CREATE OR REPLACE FUNCTION count_students (
    p_departmentid IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN

    -- Write your SELECT COUNT statement here.

    RETURN v_count;

END;
/
```

## Logic

The function should perform the following operation:

```text
DepartmentID
      ↓
Find students in that department
      ↓
COUNT the students
      ↓
Return the count
```

For example, if DepartmentID `101` has 5 students, the function should return:

```text
5
```

