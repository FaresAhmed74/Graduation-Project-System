--Student Table
Create Table STUDENT
(
    S_ID number(6) PRIMARY KEY,
    S_SSN number(10) not null,
    S_DEPARTMENT varchar2(10) not null,
    S_SEX varchar2(10),
    S_EMAIL varchar2(30) not null,
    T_ID NUMBER(6) NOT NULL,
    S_FNAME varchar2(10) not null,
    S_LNAME varchar2(10),
    S_MNAME varchar2(10)
)
--insert
Insert into STUDENT(S_ID,S_SSN,S_DEPARTMENT,S_SEX,S_EMAIL,T_ID,S_FNAME,S_LNAME,S_MNAME)
values (1,30204,'CS','male','faresahmed9',1,'fares','Ahmed','Desouky');
--2nd
Insert into STUDENT(S_ID,S_SSN,S_DEPARTMENT,S_SEX,S_EMAIL,T_ID,S_FNAME,S_LNAME,S_MNAME)
values (2,30203,'CS','male','amrkhaled7',1,'Amr','Khaled','Abobakr');
--3rd
Insert into STUDENT(S_ID,S_SSN,S_DEPARTMENT,S_SEX,S_EMAIL,T_ID,S_FNAME,S_LNAME,S_MNAME)
values (3,30200,'CS','male','mohamedes5',1,'Mohamed','Fahmy','Essam');
--4th
Insert into STUDENT(S_ID,S_SSN,S_DEPARTMENT,S_SEX,S_EMAIL,T_ID,S_FNAME,S_LNAME,S_MNAME)
values (4,30207,'CS','male','HamedReda45',1,'Hamed','Reda','Saad');
--5th
Insert into STUDENT(S_ID,S_SSN,S_DEPARTMENT,S_SEX,S_EMAIL,T_ID,S_FNAME,S_LNAME,S_MNAME)
values (5,30208,'CS','male','AhmedHaitham66',1,'Ahmed','Haitham','Ahmed');

Insert into STUDENT(S_ID,S_SSN,S_DEPARTMENT,S_SEX,S_EMAIL,T_ID,S_FNAME,S_LNAME,S_MNAME)
values (10,30508,'IS','male','AymanAhmed2020',5,'Ayman','Mohamed','Ahmed');


/* Team_Project table*/
create table Team_Project(
    T_ID number(10) PRIMARY KEY,
    T_NumOfStud number(2) NOT NULL,
    T_Name varchar2(20) NOT NULL,
    T_LeaderID number(10) NOT NULL,
    Pro_ID number(10) NOT NULL UNIQUE,
    Pro_Name varchar2(30)NOT NULL,
    Pro_Description varchar2(250),
    Pro_Field varchar2(15),
    SU_ID number(10) not null
    )
/*Insert Statment*/
/* first row*/
Insert into Team_Project(T_ID,T_NumOfStud,T_Name,T_LeaderID,Pro_ID,pro_Name,pro_Field,pro_Description,su_ID)
values (1,6,'Error_404',20211703,213,'Building Chatbots','AI','A chatbot is a support system for your customer service',10001);
/* second row*/
Insert into Team_Project(T_ID,T_NumOfStud,T_Name,T_LeaderID,Pro_ID,pro_Name,pro_Field,pro_Description,su_ID)
values (2,5,'Byte me',20211705,214,'Library Management System','Systems','software that is designed to manage all the functions of a library.',10002);
/* third row*/
Insert into Team_Project(T_ID,T_NumOfStud,T_Name,T_LeaderID,Pro_ID,pro_Name,pro_Field,pro_Description,su_ID)
values (3,6,'Wrong Answer',20211706,215,'Face detection','AI',' an artificial intelligence (AI) based computer technology',10003);
/* 4th row*/
Insert into Team_Project(T_ID,T_NumOfStud,T_Name,T_LeaderID,Pro_ID,pro_Name,pro_Field,pro_Description,su_ID)
values (4,7,'CodeX',20211718,216,'OpenCV Face Detection','AI',' This computer science project aims to detect an object of interest, such as a human face',10004);
/* 5th row*/
Insert into Team_Project(T_ID,T_NumOfStud,T_Name,T_LeaderID,Pro_ID,pro_Name,pro_Field,pro_Description,su_ID)
values (5,6,'RunTime terror',20211709,217,'Wireless Sound Control','IoT',' this Project provide a contactless experience to the users while controlling the system volume.',10005);

/*Contest Table*/
create table Contest
(
    C_Name varchar2(30) not null,
    Pro_ID number(10) not null,
    PRIMARY KEY (C_Name,PRO_ID),
    C_field varchar2(30) not null, -- i have to increase the size of this var 
    C_Region varchar2(15)
)
/*Insert statment*/
Insert Into Contest (C_name,Pro_ID,c_field,c_region)
values ('Cairo ICT',214,'Information Technology','Global');
/*2nd*/
Insert Into Contest (C_name,Pro_ID,c_field,c_region)
values ('Hackathon',215,'Computer Science','Global');
/*3rd*/
Insert Into Contest (C_name,Pro_ID,c_field,c_region)
values ('Egypt IoT',217,'Internet of things','Local');
/*4th*/
Insert Into Contest (C_name,Pro_ID,c_field,c_region)
values ('DataHack',213,'AI','Global');
/*5th*/
Insert Into Contest (C_name,Pro_ID,c_field,c_region)
values ('DataHack',216,'AI','Global');

-- Sponsor Table
create table SPONSOR
(
    SPON_NAME varchar2(20) NOT NULL UNIQUE,
    Pro_ID number(10) NOT NULL UNIQUE,
    PRIMARY KEY (Spon_Name,Pro_ID)
)
/*Insert statment*/
Insert Into Sponsor( Spon_Name,Pro_ID)
values ('Intel AI', 213 );
--2nd 
Insert Into Sponsor( Spon_Name,Pro_ID)
values ('Sisu Data', 215 );
--3rd
Insert Into Sponsor( Spon_Name,Pro_ID)
values ('OReilly', 216 );
--4th
Insert Into Sponsor( Spon_Name,Pro_ID)
values ('H2O.ai', 217 );

--Contact Table
create table CONTACT
(
    P_ID number(3) NOT NULL,
    SU_ID number(10) NOT NULL,
    PRIMARY KEY (P_ID,SU_ID)
)
--Insert statment
Insert into Contact (P_ID,SU_ID)
values(103,10003);
--2nd
Insert into Contact (P_ID,SU_ID)
values(104,10005);
--3rd
Insert into Contact (P_ID,SU_ID)
values(100,10001);
--4th
Insert into Contact (P_ID,SU_ID)
values(101,10002);
--5th
Insert into Contact (P_ID,SU_ID)
values(102,10004);

-- professor table
create table Professor
(
    P_ID number(3) PRIMARY KEY,
    P_SSN number(10) not null,
    P_DEPARTMENT varchar2(10) not null,
    P_SEX varchar2(10),
    P_EMAIL varchar2(30) not null,
    P_FNAME varchar2(10) not null,
    P_LNAME varchar2(10),
    P_MNAME varchar2(10)
)
--Insert Statment
Insert into Professor(P_ID,P_SSN,P_DEPARTMENT,P_SEX,P_EMAIL,P_FNAME,P_LNAME,P_MNAME)
values (100,10204,'Csys','male','Mahmoudmounir21','Mahmoud','Ashraf','Mounir');
--2nd
Insert into Professor(P_ID,P_SSN,P_DEPARTMENT,P_SEX,P_EMAIL,P_FNAME,P_LNAME,P_MNAME)
values (101,10503,'CS','male',' Mohamedhassan4 ','Mohamed','Hassan','Ahmed');
--3rd
Insert into Professor(P_ID,P_SSN,P_DEPARTMENT,P_SEX,P_EMAIL,P_FNAME,P_LNAME,P_MNAME)
values (102,10602,'IS','female',' AyatKhaled21','Ayat','Khaled','Yasser');
--4th
Insert into Professor(P_ID,P_SSN,P_DEPARTMENT,P_SEX,P_EMAIL,P_FNAME,P_LNAME,P_MNAME)
values (103,10303,'AI','female','FatmaAyman50','Fatma','Mohamed','Ayman');
--5th
Insert into Professor(P_ID,P_SSN,P_DEPARTMENT,P_SEX,P_EMAIL,P_FNAME,P_LNAME,P_MNAME)
values (104,10904,'AI','Male','AhmedAli24','Ahmed','Ali','Ahmed');


--SuperVisors table
Create Table SUPERVISOR
(
    SU_ID number(10) PRIMARY KEY,
    SU_SSN number(10) not null,
    SU_DEPARTMENT varchar2(10) not null,
    SU_SEX varchar2(10),
    SU_EMAIL varchar2(30) not null,
    SU_FNAME varchar2(10) not null,
    SU_LNAME varchar2(10),
    SU_MNAME varchar2(10)
)
--INSERT statment
Insert into supervisor(SU_ID,SU_SSN,SU_DEPARTMENT,SU_SEX,SU_EMAIL,SU_FNAME,SU_LNAME,SU_MNAME)
values ( 10001,20204,'Csys','male','MohamedKhaled23','Mohamed','Ayman','Khaled' );
--2nd
Insert into supervisor(SU_ID,SU_SSN,SU_DEPARTMENT,SU_SEX,SU_EMAIL,SU_FNAME,SU_LNAME,SU_MNAME)
values ( 10002,20503,'Cs','female','YasmineAhmed25','Yasmine','Hassan','Ahmed' );
--3rd
Insert into supervisor(SU_ID,SU_SSN,SU_DEPARTMENT,SU_SEX,SU_EMAIL,SU_FNAME,SU_LNAME,SU_MNAME)
values ( 10003,20206,'AI','female','AyaIbrahim50','Aya','Ibraihm','Ahmed' );
--4th
Insert into supervisor(SU_ID,SU_SSN,SU_DEPARTMENT,SU_SEX,SU_EMAIL,SU_FNAME,SU_LNAME,SU_MNAME)
values ( 10004,20207,'AI','male','HamedAyman404','Hamed','Ayman','Khaled' );
--5th
Insert into supervisor(SU_ID,SU_SSN,SU_DEPARTMENT,SU_SEX,SU_EMAIL,SU_FNAME,SU_LNAME,SU_MNAME)
values ( 10005,20304,'AI','female','HaninLotfy98','Hanin','Lotfy','Alaa' );


--Discuss Table
create table Discuss
(
    Pro_ID number(10) NOT NULL,
    P_ID number(3) NOT NULL,
    PRIMARY KEY (Pro_ID,P_ID)
)
--insert 
Insert into Discuss(Pro_ID,P_ID)
values(213,103);
--2nd
Insert into Discuss(Pro_ID,P_ID)
values(214,101);
--3rd
Insert into Discuss(Pro_ID,P_ID)
values(215,104);
--4th
Insert into Discuss(Pro_ID,P_ID)
values(217,100);
--5th
Insert into Discuss(Pro_ID,P_ID)
values(216,102);

--S_Phone
create table STD_PHONE
(
    S_Phone varchar2(15) NOT NULL,
    S_ID number(6) NOT NULL,
    PRIMARY KEY (S_Phone,S_ID)
)
--insert
Insert into Std_Phone(S_Phone,S_ID)
values('01225591309',1);

Insert into Std_Phone(S_Phone,S_ID)
values('01224391304',2);

Insert into Std_Phone(S_Phone,S_ID)
values('01225796334',3);

Insert into Std_Phone(S_Phone,S_ID)
values('01224335209',4);

Insert into Std_Phone(S_Phone,S_ID)
values('01155539509',5);

--SU Phone
create table SU_Phone
(
    SU_Phone varchar2(15) NOT NULL,
    SU_ID number(10) NOT NULL,
    PRIMARY KEY (SU_Phone,SU_ID)
)
--insert
Insert into SU_Phone(SU_Phone,SU_ID)
values('01225491378',10004);

Insert into SU_Phone(SU_Phone,SU_ID)
values('01124391334',10005);

Insert into SU_Phone(SU_Phone,SU_ID)
values('01024796334',10001);

Insert into SU_Phone(SU_Phone,SU_ID)
values('01124535209',10002);

Insert into SU_Phone(SU_Phone,SU_ID)
values('011535349509',10003);


-- PROFESSOR PHONE
create table P_Phone
(
    P_Phone varchar2(15) NOT NULL,
    P_ID number(3) NOT NULL,
    PRIMARY KEY (P_Phone,P_ID)
)
--INSERT
Insert into P_Phone(P_Phone,P_ID)
values('011532343509',103);

Insert into P_Phone(P_Phone,P_ID)
values('011535542509',102);

Insert into P_Phone(P_Phone,P_ID)
values('012545359409',101);

Insert into P_Phone(P_Phone,P_ID)
values('010555346509',100);

Insert into P_Phone(P_Phone,P_ID)
values('012345543509',104);


-- sponsor address
create table Sponsor_address
(
    spon_name varchar2(20) NOT NULL,
    Pro_ID number(10) NOT NULL,
    spon_address varchar2(25),
    PRIMARY KEY (Spon_name,Pro_ID,Spon_address)
)
--insert
insert into sponsor_address (spon_name,pro_id,spon_address)
values ('Intel AI',213,'EL shiekh zaid' );

insert into sponsor_address (spon_name,pro_id,spon_address)
values ('Sisu Data',215,'Los anglos' );

insert into sponsor_address (spon_name,pro_id,spon_address)
values ('OReilly',216,'Paris' );

insert into sponsor_address (spon_name,pro_id,spon_address)
values ('H2O.ai',217,'Heliopolis' );

--join table
create table JOINE
(
    pro_id number(10) NOT NULL,
    c_name varchar2(30) NOT NULL,
    PRIMARY KEY (pro_id,c_name) 
)
--insert
insert into joinE(pro_id,c_name)
values(213,'DataHack');

insert into joinE(pro_id,c_name)
values(214,'Cairo ICT');

insert into joinE(pro_id,c_name)
values(215,'Hackathon');

insert into joinE(pro_id,c_name)
values(216,'DataHack');

insert into joinE(pro_id,c_name)
values(217,'Egypt IoT');

--Win
create table WIN
(
    pro_id number(10) NOT NULL,
    c_name varchar2(30) NOT NULL UNIQUE,
    PRIMARY KEY (PRO_ID,C_NAME)
)
--insert
insert into win(pro_id,c_name)
values(217,'Egypt IoT');

insert into win(pro_id,c_name)
values(214,'Cairo ICT');

--Sposnor Rel
create table SPONSOR_REL
(
    spon_name varchar2(20) NOT NULL,
    pro_id number(10) NOT NULL,
    amount varchar2(10)
)
insert into sponsor_rel(spon_name,pro_id,amount)
values('Sisu Data',215,'30k');

-- Insert Foreign Keys
ALTER TABLE STUDENT
ADD FOREIGN KEY (T_ID) REFERENCES TEAM_PROJECT(T_ID);

ALTER TABLE TEAM_PROJECT
ADD FOREIGN KEY (SU_ID) REFERENCES SUPERVISOR (SU_ID);

ALTER TABLE CONTEST
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT (PRO_ID);

ALTER TABLE SPONSOR
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT (PRO_ID);

ALTER TABLE SPONSOR_REL
ADD FOREIGN KEY (SPON_NAME) REFERENCES SPONSOR (SPON_NAME);
ALTER TABLE SPONSOR_REL
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT (PRO_ID);

ALTER TABLE CONTACT
ADD FOREIGN KEY (P_ID) REFERENCES PROFESSOR (P_ID);

ALTER TABLE DISCUSS
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT (PRO_ID);
ALTER TABLE DISCUSS
ADD FOREIGN KEY (P_ID) REFERENCES PROFESSOR (P_ID);

ALTER TABLE STD_PHONE
ADD FOREIGN KEY (S_ID) REFERENCES STUDENT (S_ID);

ALTER TABLE SU_PHONE
ADD FOREIGN KEY (SU_ID) REFERENCES SUPERVISOR (SU_ID);

ALTER TABLE P_PHONE
ADD FOREIGN KEY (P_ID) REFERENCES PROFESSOR (P_ID);

ALTER TABLE SPONSOR_ADDRESS
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT (PRO_ID);
--ALTER TABLE SPONSOR_ADDRESS
--ADD FOREIGN KEY (SPON_NAME) REFERENCES SPONSOR (SPON_NAME);

ALTER TABLE JOINE
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT (PRO_ID);
ALTER TABLE JOINE
ADD FOREIGN KEY (C_NAME) REFERENCES CONTEST (C_NAME);

ALTER TABLE WIN
ADD FOREIGN KEY (PRO_ID) REFERENCES TEAM_PROJECT(PRO_ID);
ALTER TABLE WIN
ADD FOREIGN KEY (C_NAME) REFERENCES CONTEST (C_NAME);


select * 
from SPONSER_REL;
