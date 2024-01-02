/*
   GROUP BY
   1. 같은 값을 가진 데이터들을 하나의 그룹으로 묶어서 처리한다.
   2. 대부분 통계 함수와 함께 사용한다.
   3.지켜야 할 문법
      GROUP BY 절에 명시한 칼럼만 SELECT 절에서 조회할 수 있다.

*/
--1.사원 테이블에서 부서번호를 기준으로 그룹화하여 조회하시오.
SELECT DEPART
FROM EMPLOYEE_T
GROUP BY DEPART;

--2. 사원 테이블에서 부서번호별 연봉의 평균을 조회하시오.
SELECT DEPART AS 부서번호, AVG(SALARY) AS 연봉평균 
FROM EMPLOYEE_T
GROUP BY DEPART;
--3. 부서 테이블에서 지역별 부서 수를 조회하시오.
SELECT LOCATION AS 지역 ,COUNT(*) AS 부서수
FROM DEPARTMENT_T
GROUP BY LOCATION;
--4.사원 테이블에서 직급과 성별을 기준으로 그룹화하여 평균 급여를 조회하시오.
SELECT POSITION,GENDER,AVG(SALARY) AS 평균급여
FROM EMPLOYEE_T
GROUP BY POSITION,GENDER;
--5. 사원 테이블에서 입사월별 입사자 수를 조회하시오.
SELECT HIRE_DATE, COUNT(*)
FROM EMPLOYEE_T
GROUP BY EXTRACT(MONTH FROM HIRE_DATE);

/*SLEECT TO_CAHR(HIRE_DATE,'MM') AS 입사월,COUNT(*) AS 입사자수
FROM EMPLOYEE_T
GROUP BY TO_CHAR(HIRE_DATE,',MM');*/
/*
  HAVING 
   1.주로 GROUP BY 절과 함께 사용하낟.
   2.통계 함수에 조건을 지정하는 경우 사용한다.
   3.일반 조건은 WHERE 절에 작성한다.
   
*/
--1.사원 테이블에서 성별에 따른 연봉의 평균을 조회하시오.성별이 'M'인 사원만 조회하시오.
SELECT POSITION, FLOOR(AVG(SALARY))AS 연봉평균
FROM EMPLOYEE_T
WHERE GENDER ='M'
GROUP BY POSITION;


--1.사원 테이블에서 성별에 따른 연봉의 평균을 조회하시오. 각 성별의 사원 수가 2명 이상인 사원만 조회.
SELECT POSITION, FLOOR(AVG(SALARY))AS 연봉평균
FROM EMPLOYEE_T
GROUP BY POSITION
HAVING COUNT(*) >= 2;



