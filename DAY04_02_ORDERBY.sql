/*
ORDER BY
1. 조회 결과를 정렬할 때 사용한다.
2.정렬 방식
1)오름차순 정렬: ASC또는 생략
2)내림차순 정렬:DESC
3.2개 이상의 정렬 기준을 추가할 수 있다.
*/

--1.연봉이 높은 순으로 사원 정보를 조회하시오.
SELECT *
FROM EMPLOYEE_T
ORDER BY SALARY DESC;
--2.입사순으로 사원 정보를 조회하시오.
SELECT *
FROM EMPLOYEE_T
ORDER BY HIRE_DATE ; --ASC 생략
--3.성별의 오름차순으로 정렬하시오. 동일한 성별 내에서는 이름순의 내림차순으로 정렬
SELECT *
FROM EMPLOYEE_T
ORDER BY gender,NAME DESC;


SELECT 칼럼1,2....
FROM 테이블_이름
WHRER 조회 조건
GROUP BY
HAVING
ORDER BY
