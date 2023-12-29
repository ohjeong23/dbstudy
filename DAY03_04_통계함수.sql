/*
   통계 함수(집계 함수)
   1. 합계  : SUM(EXPR)
   2. 평균  : AVG(EXPR)
   3. 최대  : MAX(EXPR)
   4. 최소  : MIN(EXPR)
   5. 개수  : COUNT(EXPR)
*/

-- EMPLOYEE_T 테이블

-- 1. 전체 사원의 기본급 합계 조회하기
SELECT SUM(SALARY)
FROM EMPLOYEE_T;
-- 2. 전체 사원의 기본급 평균 조회하기
SELECT AVG(SALARY)
FROM EMPLOYEE_T;
-- 3. 전체 사원의 기본급 최대 조회하기
SELECT MAX(SALARY)
FROM EMPLOYEE_T;
-- 4. 전체 사원의 기본급 최소 조회하기
SELECT MIN(SALARY)
FROM EMPLOYEE_T;
--5. 전체 사원 수 조회하기
SELECT COUNT(EMP_NO)
FROM EMPLOYEE_T;--사원번호의 개수
SELECT COUNT(NAME)
FROM employee_t;-- 이름의 개수
SELECT COUNT(*)-- 모든 칼럼을 참조해서 개수(사원 수 구하는 용도로 추천)
FROM employee_t;
--SMAPLE_T 테이블
CREATE TABLE SAMPLE_T (
   NAME VARCHAR2(20 BYTE),
   KOR NUMBER(3),
   ENG NUMBER(3),
   MATH NUMBER(3)
);

INSERT INTO SAMPLE_T(NAME,KOR,ENG,MATH) VALUES('A',100,100,NULL);
INSERT INTO SAMPLE_T(NAME,KOR,ENG,MATH) VALUES('B',100,NULL,100);
INSERT INTO SAMPLE_T(NAME,KOR,ENG,MATH) VALUES('C',NULL,100,100);



--1.국어 점수 합계
SELECT SUM(KOR)
FROM SAMPLE_T;
--2.국어 점수 평균
SELECT AVG(KOR)
FROM SAMPLE_T;
--3.국어 점수 최대
SELECT MAX(KOR)
FROM SAMPLE_T;
--4.국어 점수 최소
SELECT MIN(KOR)
FROM SAMPLE_T;
--5.전체 학생 수
SELECT COUNT(*)
FROM SAMPLE_T;


SELECT SUM(SALARY)
FROM employees;
--커미션을 받는 사원들의 평균 NULL과 커미션 조합
SELECT COMMISSION_PCT *SALARY
FROM employees;

SELECT AVG(COMMISSION_PCT*SALARY) --NULL과 커미션 조합의 평균
FROM employees;

SELECT NVL(COMMISSION_PCT,0)*SALARY -- 0과 커미션 조합
FROM employees;

SELECT AVG(NVL(COMMISSION_PCT,0)*SALARY) -- 0과 커미션 조합의 평균 
FROM employees;


SELECT AVG(COMMISSION_PCT*SALARY) 
FROM employees
WHERE COMMISSION_PCT IS NOT NULL;

SELECT MAX(HIRE_DATE)
FROM employees;

SELECT MIN(HIRE_DATE)
FROM employees;

SELECT DISTINCT COUNT(DEPARTMENT_ID)
FROM employees;



