create database assignment3;
use assignment3;
create table Department(
dept_id int(20),
dept_name varchar (50),
constraint pk_Department_dept_id primary key (dept_id)
);
drop table department;


CREATE TABLE employee(
empid int(20),
emp_name varchar(20),
dept_id int(20),
salary int(20),
manager varchar(20),
constraint pk_Employee_empid primary key(empid)
);
alter table Employee add constraint FK_Employee_dept_id foreign key (dept_id) references department(dept_id);
alter table Employee add constraint FK_Employee_manager foreign key (manager) references employee(empid);
alter table employee modify manager int(20);
drop table employee;
desc employee;
insert into department values(1,'Finance');
insert into department values(2,'Training');		
insert into department values(3,'Marketing');		

insert into employee (empid ,
emp_name ,
dept_id ,
salary )values(1,'Arun',1,	8000);
insert into employee(empid ,
emp_name ,
dept_id ,
salary ) values(2,'kiran',1,7000),
(3,'Scott',1,3000),
(4,'Max',2,9000),	
(5,'Jack',2,8000),
(6,'King',null,6000);

update employee set manager = 4 where empid=1;
update employee set manager = 1 where empid=2;
update employee set manager = 1 where empid=3;
update employee set manager = 4 where empid=5;
update employee set manager = 1 where empid=6;
select *from employee;
CREATE TABLE  AUTHORS
(
    AUID     int  PRIMARY KEY,
    ANAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);

CREATE TABLE PUBLISHERS
(
    PUBID      int   PRIMARY KEY,
    PNAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);

 INSERT INTO PUBLISHERS VALUES (1,'WILLEY','WDT@VSNL.NET','91-11-23260877');
 INSERT INTO PUBLISHERS VALUES (2,'WROX','INFO@WROX.COM',NULL);
 INSERT INTO PUBLISHERS VALUES (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322');
 INSERT INTO PUBLISHERS VALUES (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');
 
  INSERT INTO AUTHORS VALUES (101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL);
 INSERT INTO AUTHORS VALUES (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL);
 INSERT INTO AUTHORS VALUES (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);
  SELECT * FROM AUTHORS;
 SELECT * FROM AUTHORS  ORDER BY ANAME; 
 SELECT * FROM AUTHORS  ORDER BY ANAME DESC;
  SELECT * FROM PUBLISHERS  ORDER BY PNAME; 

 SELECT  SUM(salary) ,empid ,
emp_name ,
dept_id ,
manager  FROM employee  group by dept_id; 

  SELECT  dept_id ,SUM(salary)  FROM employee  group by dept_id and  salary >17000;  
    SELECT  dept_id ,SUM(salary)  FROM employee  group by dept_id having sum(salary <18000) ;  

 SELECT  dept_id ,SUM(salary)  FROM employee  group by dept_id having sum(salary) <20000 ;  












