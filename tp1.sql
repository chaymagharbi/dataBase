select * from emp;
select * from EMP where JOB='MANAGER' and deptno in (20,30);
select * from EMP where JOB not in ('MANAGER')and HIREDATE between '01/01/81' and '31/12/81';
/*on peut ecrire  JOB!='MANAGER' au place de not in et TO_char(hiredate,'YY')='81'  */
select * from EMP where ENAME LIKE '%A%' and ename like '%M%'; 
/*% chaine de caracteres et _ un seul caractere */
select * from EMP where ename like '%A%A%';
select * from EMP where comm >0 ;/*is not NULL*/
select ENAME,DEPTNO,JOB,HIREDATE FROM EMP ORDER BY deptno ASC;
select ENAME,DEPTNO,JOB,HIREDATE FROM EMP ORDER BY JOB ASC;
select ENAME,DEPTNO,JOB,HIREDATE FROM EMP ORDER BY hiredate DESC;
select ENAME,DEPTNO,JOB,HIREDATE FROM EMP ORDER BY deptno,job,hiredate DESC;
select * from dept;
select * from dept,emp where dept.deptno=emp.deptno and dept.loc='DALLAS';/*si on veut selctionner seulemet de dept on ecrit dept* */
select E2.ename,E1.ename from EMP E1,EMP E2 where E1.empno=E2.mgr;/*auto jointure*/
select E2.ename,E1.ename,E1.hiredate from EMP E1,EMP E2 where E1.empno=E2.mgr and E1.hiredate<E2.hiredate ;/*auto jointure*/

