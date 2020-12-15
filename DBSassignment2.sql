use assignment2;
CREATE TABLE PUBLISHERS
(
    PUBID      int   PRIMARY KEY,
    PNAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);


CREATE TABLE  SUBJECTS
(
    SUBID      VARCHAR(5) PRIMARY KEY,
    SNAME      VARCHAR(30)
);


CREATE TABLE  AUTHORS
(
    AUID     int  PRIMARY KEY,
    ANAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);



CREATE TABLE  TITLES
(
    TITLEID    int PRIMARY KEY,
    TITLE      VARCHAR(30),
    PUBID      int,
    SUBID      VARCHAR(5),
    PUBDATE    DATE,
    COVER      CHAR(1)  CHECK ( COVER IN ('P','H','p','h')),
    PRICE      int,
	CONSTRAINT TITLES_PUBID_FK FOREIGN KEY (PUBID) REFERENCES PUBLISHERS(PUBID),
	CONSTRAINT TITLES_SUBID_FK FOREIGN KEY (SUBID) REFERENCES SUBJECTS(SUBID)
);



CREATE TABLE  TITLEAUTHORS
(
    TITLEID    int,
    AUID       int,
    IMPORTANCE int,
   PRIMARY KEY(TITLEID,AUID),
   CONSTRAINT  TITLESAUTHORS_TITLEID_FK FOREIGN KEY (TITLEID) REFERENCES TITLES(TITLEID),
   CONSTRAINT  TITLESAUTHORS_AUTHID_FK FOREIGN KEY (AUID) REFERENCES AUTHORS(AUID)
);

CREATE TABLE  SUBJECTS_BACKUP
(
    SUBID      VARCHAR(5) PRIMARY KEY,
    SNAME      VARCHAR(30)
);

create table employee(
emp_id int,
emp_name char(50)
); 


 INSERT INTO SUBJECTS VALUES ('ORA','ORACLE DATABASE 10g');
 INSERT INTO SUBJECTS VALUES ('JAVA','JAVA LANGUAGE');
 INSERT INTO SUBJECTS VALUES ('JEE','JAVA ENTEPRISE EDITION');
 INSERT INTO SUBJECTS VALUES ('VB','VISUAL BASIC.NET');
 INSERT INTO SUBJECTS VALUES ('ASP','ASP.NET');
 



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



INSERT INTO TITLES VALUES (1001,'ASP.NET UNLEASHED',4,'ASP','2002-04-12','P',540);
INSERT INTO TITLES VALUES (1002,'ORACLE10G COMP. REF.',3,'ORA','2005-05-01','P',575);
INSERT INTO TITLES VALUES (1003,'MASTERING EJB',1,'JEE','2005-02-03','P',475);
INSERT INTO TITLES VALUES (1004,'JAVA COMP. REF',3,'JAVA','2005-04-03','P',499);
INSERT INTO TITLES VALUES (1005,'PRO. VB.NET',2,'VB','2005-06-15','P',450);



INSERT INTO TITLEAUTHORS VALUES (1001,104,1);
INSERT INTO TITLEAUTHORS VALUES (1002,105,1);

INSERT INTO TITLEAUTHORS VALUES (1003,106,1);

INSERT INTO TITLEAUTHORS VALUES (1004,101,1);

INSERT INTO TITLEAUTHORS VALUES (1005,103,1);
INSERT INTO TITLEAUTHORS VALUES (1005,102,2);
SELECT * FROM Subjects WHERE SName LIKE 'Oracle%';
SELECT * FROM Subjects WHERE SName LIKE 'j%';
SELECT * FROM Subjects WHERE SName LIKE '%.net';
SELECT * FROM Authors WHERE AName LIKE '%er';
SELECT * FROM PUBLISHERS WHERE PName LIKE '%hill%';

SELECT * FROM titles WHERE price<500;
SELECT title FROM titles WHERE  PUBDATE<'2005-04-03';
SELECT Sname FROM subjects WHERE  SUBID = 'java' or SUBID ='jee';
SELECT Aname FROM Authors WHERE AUID>103;
SELECT * FROM titles WHERE  titleid=1001 or price > 400;

SELECT * FROM PUBLISHERS WHERE PName in ('TECHMEDIA','WROX');

SELECT MAX(price) FROM titles;


SELECT avg(importance) FROM TITLEAUTHORS;
SELECT Aname FROM Authors WHERE AUID>103;
SELECT count(AUID) FROM authors;
SELECT SUM(price) FROM titles;

select title from titles where MONTHNAME(PUBDATE)<04;
SELECT YEAR(SYSDATE());
SELECT month(SYSDATE());
/*select () from titles where title='JAVA COMP. REF';*/

insert into employee value(1,'saurabh');
insert into employee value(2,'shivtej');
insert into employee value(3,'rutvij');
ALTER TABLE employee add COLUMN dept_id int after emp_name;
ALTER TABLE employee RENAME Scott;
truncate scott;

create table emp(
sal float(7,3)
);

insert into emp values(1234.567),
(1530.019),
(1652.786),
(1775.156);

SELECT ROUND(1234.567, 1);
SELECT ROUND(1530.019, 2);
SELECT ROUND(1652.786, 0);
SELECT ROUND(1775.156);

select sal, round(sal,-2)from emp; 
select sal, truncate(sal,1)from emp;
SELECT sal,CEILING(sal)from emp;
SELECT sal,floor(sal)from emp;
SELECT sal,sign(sal)from emp;
SELECT sal,mod(sal,10)from emp;
SELECT sal,sqrt(sal)from emp;
SELECT sal,pow(sal,2)from emp;


select	ASCII 	("CDAC juhu");
select	BIN 	("CDAC juhu");/*not understand*/
select	BIT_LENGTH 	("CDAC juhu");
select	CHAR 	("CDAC juhu"); /*not understand*/
select	CHAR_LENGTH 	("CDAC juhu");
select	CHARACTER_LENGTH 	("CDAC juhu");
select	CONCAT 	("CDAC juhu","saurabh");
select	CONCAT_WS 	(" ","CDAC juhu");/*not understand*/
select	ELT 	("CDAC juhu");/*not understand*/
select	EXPORT_SET 	("CDAC juhu");/*not understand*/
select	FIELD 	("CDAC juhu");/*not understand*/
select	FIND_IN_SET 	("CDAC juhu");/*not understand*/
select	FORMAT 	("CDAC juhu");/*not understand*/
select	FROM_BASE64 	("CDAC juhu");/*not understand*/
select	HEX 	("CDAC juhu");
select	INSERT 	("CDAC juhu",3, 4, 'What');
select	INSTR 	("CDAC juhu");/*not understand*/
select	LCASE 	("CDAC juhu");
select	LEFT 	("CDAC juhu",3);
select	LENGTH 	("CDAC juhu");

select	LOAD_FILE 	("CDAC juhu");/*not understand*/
select	LOCATE 	("CDAC juhu");/*not understand*/
select	LOWER 	("CDAC juhu");
select	LPAD 	("CDAC juhu");/*not understand*/
select	LTRIM 	("CDAC juhu");/*not understand*/
select	MAKE_SET 	("CDAC juhu");/*not understand*/

select	MID 	("CDAC juhu");/*not understand*/


select	OCT 	("CDAC juhu");/*not understand*/
select	OCTET_LENGTH 	("CDAC juhu");
select	ORD 	("CDAC juhu");/*not understand*/
select	POSITION 	("CDAC juhu");
select	QUOTE 	("CDAC juhu");

select	REGEXP_INSTR 	("CDAC juhu");
select	REGEXP_LIKE 	("CDAC juhu");
select	REGEXP_REPLACE 	("CDAC juhu");
select	REGEXP_SUBSTR 	("CDAC juhu");

select	REVERSE 	("CDAC juhu");

select	RPAD 	("CDAC juhu");
select	RTRIM 	("CDAC juhu");
select	SOUNDEX 	("CDAC juhu");
select	SOUNDS LIKE	("CDAC juhu");
select	SPACE 	("CDAC juhu");
select	STRCMP 	("CDAC juhu");
select	SUBSTR 	("CDAC juhu");
select	SUBSTRING 	("CDAC juhu");
select	SUBSTRING_INDEX 	("CDAC juhu");
select	TO_BASE64 	("CDAC juhu");
select	TRIM 	("CDAC juhu");
select	UCASE 	("CDAC juhu");
select	UNHEX 	("CDAC juhu");
select	UPPER 	("CDAC juhu");
select	WEIGHT_STRING 	("CDAC juhu");


 






 








      










