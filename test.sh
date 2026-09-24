#!/bin/bash

echo "=========================================="
echo " PL/SQL FUNCTION AUTOGRADING"
echo "=========================================="

FILE="answers.sql"

# Check answers.sql
if [ ! -f "$FILE" ]; then
    echo "FAIL: answers.sql not found."
    exit 1
fi

echo "PASS: answers.sql found."

# Convert content to lowercase
CONTENT=$(cat "$FILE" | tr '[:upper:]' '[:lower:]')

# Test 1: CREATE OR REPLACE FUNCTION
if echo "$CONTENT" | grep -q "create or replace function"; then
    echo "PASS: CREATE OR REPLACE FUNCTION found."
else
    echo "FAIL: CREATE OR REPLACE FUNCTION not found."
    exit 1
fi

# Test 2: Function name
if echo "$CONTENT" | grep -q "function count_students"; then
    echo "PASS: COUNT_STUDENTS function found."
else
    echo "FAIL: COUNT_STUDENTS function not found."
    exit 1
fi

# Test 3: DepartmentID parameter
if echo "$CONTENT" | grep -q "p_departmentid"; then
    echo "PASS: DepartmentID parameter found."
else
    echo "FAIL: DepartmentID parameter not found."
    exit 1
fi

# Test 4: RETURN NUMBER
if echo "$CONTENT" | grep -Eq "return[[:space:]]+number"; then
    echo "PASS: RETURN NUMBER found."
else
    echo "FAIL: RETURN NUMBER not found."
    exit 1
fi

# Test 5: SELECT COUNT
if echo "$CONTENT" | grep -Eq "select[[:space:]]+count"; then
    echo "PASS: COUNT function found."
else
    echo "FAIL: SELECT COUNT not found."
    exit 1
fi

# Test 6: FROM Student
if echo "$CONTENT" | grep -q "from student"; then
    echo "PASS: FROM Student found."
else
    echo "FAIL: FROM Student not found."
    exit 1
fi

# Test 7: WHERE DepartmentID
if echo "$CONTENT" | grep -q "where departmentid"; then
    echo "PASS: DepartmentID condition found."
else
    echo "FAIL: WHERE DepartmentID condition not found."
    exit 1
fi

# Test 8: INTO variable
if echo "$CONTENT" | grep -q "into v_count"; then
    echo "PASS: INTO variable found."
else
    echo "FAIL: INTO variable not found."
    exit 1
fi

# Test 9: RETURN v_count
if echo "$CONTENT" | grep -q "return v_count"; then
    echo "PASS: RETURN v_count found."
else
    echo "FAIL: RETURN v_count not found."
    exit 1
fi

# Test 10: END
if echo "$CONTENT" | grep -q "end;"; then
    echo "PASS: END statement found."
else
    echo "FAIL: END statement not found."
    exit 1
fi

echo ""
echo "=========================================="
echo " ALL TESTS PASSED"
echo "=========================================="

exit 0
