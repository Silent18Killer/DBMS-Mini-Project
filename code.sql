CREATE TABLE billinginformation (
  BillNumber int NOT NULL,
  IncludedData int NOT NULL,
  DataUsed int NOT NULL,
  BalancedData int NOT NULL,
  TaxDouble int NOT NULL,
  PRIMARY KEY (BillNumber)
);

INSERT INTO billinginformation 
VALUES (1,50,40,10,15.1);
INSERT INTO billinginformation 
VALUES (2,100,60,40,20.3);
INSERT INTO billinginformation 
VALUES (3,200,100,100,30.3);
INSERT INTO billinginformation 
VALUES (4,500,200,300,40.3);
INSERT INTO billinginformation 
VALUES (5,500,100,400,50);
INSERT INTO billinginformation 
VALUES (6,1000,100,900,70);
INSERT INTO billinginformation 
VALUES (7,800,300,500,60);
INSERT INTO billinginformation 
VALUES (8,1200,400,800,100);
INSERT INTO billinginformation 
VALUES (9,1500,400,1100,100);
INSERT INTO billinginformation 
VALUES (10,1500,600,900,300);
INSERT INTO billinginformation 
VALUES (11,1500,800,700,180);
INSERT INTO billinginformation 
VALUES (12,2000,900,1100,180);
INSERT INTO billinginformation 
VALUES (13,2000,500,1500,170);
INSERT INTO billinginformation 
VALUES (14,2000,500,1500,200);
INSERT INTO billinginformation 
VALUES (15,2000,1800,200,200);


select * from billinginformation;







CREATE TABLE department 
(
  DepartmentDId int NOT NULL,
  DepartmentName varchar(30) NOT NULL,
  Salary int NOT NULL,
  PRIMARY KEY (DepartmentDId)
);

INSERT INTO department VALUES (1,'Information Technology',10000);
INSERT INTO department VALUES (2,'Sales and Marketing', 5000);
INSERT INTO department VALUES (3,'Finance', 2500);
INSERT INTO department VALUES (4,'Human Resource',7500);
INSERT INTO department VALUES (5,'Customer Care',1000);


select * from department;




select * from employee;
select * from employeeworklocation;
select * from phonenumber;
select * from callrecords;
select * from planinclusions;
select * from plans;
select * from salary;
select * from salesperson;
select * from customer;
select * from orders;
select * from simdata;
select * from tracking;
select * from worklocation;