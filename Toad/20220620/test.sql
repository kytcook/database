Q1.

SELECT
       empno, ename, deptno, dname
  FROM emp
  JOIN dept USING(deptno);
 
---------------------------------------------------------- 
Q2.
  
CREATE TABLE DEPARTMENT(
    DEPTCODE NUMBER PRIMARY KEY,
    DEPTNAME NVARCHAR2(10) NOT NULL
);

CREATE TABLE EMPLOYEE(
    EMPNO NUMBER PRIMARY KEY,
    EMPNAME VARCHAR2(10) NOT NULL,
    DEPTNO NUMBER REFERENCES DEPARTMENT(DEPTCODE)
);

SELECT EMPNO, EMPNAME, DEPTNO, DEPTNAME
FROM EMPLOYEE
JOIN DEPARTMENT USING(DEPTNO);

SELECT EMPNO, EMPNAME, DEPTNO, DEPTNAME
  FROM EMPLOYEE E JOIN DEPARTMENT D 
    ON E.DEPTNO = d.DEPTCODE
    
SELECT *
  FROM emp e join dept d
    ON e.deptno = d.deptno


SELECT 1 FROM dual
UNION ALL
SELECT 2 FROM dual


SELECT 1 FROM dual
UNION
SELECT 2 FROM dual