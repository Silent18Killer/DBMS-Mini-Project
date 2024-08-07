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








CREATE TABLE employee 
(
  EmployeeId int NOT NULL,
  Employee_Name varchar(30) NOT NULL,
  SSN varchar(20) NOT NULL,
  Age int NOT NULL,
  DepartmentId int DEFAULT NULL,
  Salary int DEFAULT NULL,
  PRIMARY KEY (EmployeeId),
  CONSTRAINT DepartmentId FOREIGN KEY (DepartmentId) REFERENCES department (DepartmentDId)
);

INSERT INTO employee VALUES (1,'Ojas Phansekar','123456789',24,1,1000);
INSERT INTO employee VALUES (2,'Shreyas Kalayanaraman','245987675',24,1,1000);
INSERT INTO employee VALUES (3,'Saurabh Kulkarni','734756953',24,1,1000);
INSERT INTO employee VALUES (4,'Vivek Shetye','572364526',26,1,1000);
INSERT INTO employee VALUES (5,'Mihir Patil','238745784',27,1,1000);
INSERT INTO employee VALUES (6,'Karan Thevar','968374657',28,4,7500);
INSERT INTO employee VALUES (7,'Chetan Mistry','623784983',30,4,7500);
INSERT INTO employee VALUES (8,'Shantanu Sawant','527473298',24,4,7500);
INSERT INTO employee VALUES (9,'Pooja Patil','286436778',24,4,7500);
INSERT INTO employee VALUES (10,'Kalpita Malvankar','863476236',34,4,7500);


select * from employee;








CREATE TABLE worklocation 
(
  LocationId int NOT NULL,
  LocationName varchar(20) NOT NULL,
  NumberOfEmployees int NOT NULL,
  PRIMARY KEY (LocationId)
);

insert into worklocation values(1,'Seattle',5);
insert into worklocation values(2,'Washington DC',5);
insert into worklocation values(3,'New York',5);
insert into worklocation values(4,'Boston',5);


select * from worklocation;








CREATE TABLE employeeworklocation 
(
  WorkEmployeeId int NOT NULL,
  LocationId int NOT NULL,
  CONSTRAINT LocationId FOREIGN KEY (LocationId) REFERENCES worklocation (LocationId),
  CONSTRAINT WorkEmployeeId FOREIGN KEY (WorkEmployeeId) REFERENCES employee (EmployeeId)
);

INSERT INTO employeeworklocation VALUES (1,2);
INSERT INTO employeeworklocation VALUES (2,4);
INSERT INTO employeeworklocation VALUES (3,3);
INSERT INTO employeeworklocation VALUES (4,1);
INSERT INTO employeeworklocation VALUES (5,2);
INSERT INTO employeeworklocation VALUES (6,4);
INSERT INTO employeeworklocation VALUES (7,3);
INSERT INTO employeeworklocation VALUES (8,1);
INSERT INTO employeeworklocation VALUES (9,2);
INSERT INTO employeeworklocation VALUES (10,4);


select * from employeeworklocation;








CREATE TABLE phonenumber 
(
  AccountNumber int NOT NULL,
  PhoneNumber int NOT NULL,
  PhoneBillNumber int NOT NULL,
  PRIMARY KEY (AccountNumber)
);

insert into phonenumber values(10,1235465768,1);
insert into phonenumber values(11,1675849305,3);
insert into phonenumber values(12,1345267859,4);
insert into phonenumber values(13,1578893409,5);
insert into phonenumber values(14,1876509876,7);
insert into phonenumber values(15,1657483948,8);
insert into phonenumber values(16,1236564789,9);
insert into phonenumber values(17,1784967348,10);
insert into phonenumber values(18,1758483934,11);
insert into phonenumber values(19,1745889839,12);


select * from phonenumber;








CREATE TABLE callrecords (
  CallId int NOT NULL,
  CallStartTime varchar(15) NOT NULL,
  CallEndTime varchar(15) NOT NULL,
  CallDuration varchar(15) NOT NULL,
  CallAccountNumber int NOT NULL,
  PRIMARY KEY (CallId),
  CONSTRAINT CallAccountNumber FOREIGN KEY (CallAccountNumber) REFERENCES phonenumber (AccountNumber)
);

INSERT INTO callrecords VALUES (1,'12:20:20','12:21:20','00:01:00',10);
INSERT INTO callrecords VALUES (2,'11:23:24','15:40:30','04:17:06',10);
INSERT INTO callrecords VALUES (3,'08:30:10','08:32:20','00:02:10',11);
INSERT INTO callrecords VALUES (4,'21:45:30','21:50:34','00:05:04',14);
INSERT INTO callrecords VALUES (5,'12:32:21','12:34:20','00:01:59',10);
INSERT INTO callrecords VALUES (6,'19:10:13','19:55:20','00:45:07',10);
INSERT INTO callrecords VALUES (7,'20:30:25','21:21:20','00:50:55',10);
INSERT INTO callrecords VALUES (8,'13:40:56','14:34:20','00:53:24',10);
INSERT INTO callrecords VALUES (9,'16:20:20','18:21:20','02:01:00',10);


select * from callrecords;








CREATE TABLE planinclusions 
(
  PlanId int NOT NULL,
  Data varchar(10) NOT NULL,
  Talktime varchar(30) NOT NULL,
  TextMessages varchar(20) NOT NULL,
  PRIMARY KEY (PlanId)
);

insert into PlanInclusions values(1,'500MB','60 Minutes','100');
insert into PlanInclusions values(2,'500MB','120 Minutes','200');
insert into PlanInclusions values(3,'500MB','180 Minutes','300');
insert into PlanInclusions values(4,'500MB','240 Minutes','400');
insert into PlanInclusions values(5,'500MB','300 Minutes','500');
insert into PlanInclusions values(6,'1GB','360 Minutes','600');
insert into PlanInclusions values(7,'1GB','420 Minutes','700');
insert into PlanInclusions values(8,'1GB','480 Minutes','800');
insert into PlanInclusions values(9,'1GB','540 Minutes','900');
insert into PlanInclusions values(10,'1GB','600 Minutes','1000');
insert into PlanInclusions values(11,'1.5 GB','660 Minutes','1100');
insert into PlanInclusions values(12,'1.5 GB','720 Minutes','1200');
insert into PlanInclusions values(13,'1.5 GB','780 Minutes','1300');
insert into PlanInclusions values(14,'1.5 GB','840 Minutes','1400');
insert into PlanInclusions values(15,'1.5 GB','900 Minutes','1500');
insert into PlanInclusions values(16,'2 GB','960 Minutes','Unlimited');
insert into PlanInclusions values(17,'2 GB','1020 Minutes','Unlimited');
insert into PlanInclusions values(18,'2 GB','1080 Minutes','Unlimited');
insert into PlanInclusions values(19,'2 GB','1140 Minutes','Unlimited');
insert into PlanInclusions values(20,'2 GB','1200 Minutes','Unlimited');


select * from planinclusions;







CREATE TABLE plans
(
  PlansId int NOT NULL,
  PlansType varchar(15) NOT NULL,
  PlanName varchar(20) NOT NULL,
  PlanInclusionId int NOT NULL,
  PRIMARY KEY (PlansId),
  CONSTRAINT PlanInclusionId FOREIGN KEY (PlanInclusionId) REFERENCES planinclusions (PlanId)
);

insert into plans values(2,'Prepaid','Every Minute Counts',2);
insert into plans values(3,'Postpaid','Family',3);
insert into plans values(4,'Postpaid','Enjoy Data',4);
insert into plans values(5,'Postpaid','Finger tips',5);
insert into plans values(6,'Prepaid','Talk For Hours',6);
insert into plans values(7,'Postpaid','Do not disturb',7);
insert into plans values(8,'Prepaid','Enjoy surfing',8);
insert into plans values(9,'Prepaid','Continuous Texting',18);
insert into plans values(10,'Postpaid','Powerful Speed',20);


select * from plans;








CREATE TABLE salary 
(
  EmployeeId int NOT NULL,
  EmployeeName varchar(20) NOT NULL,
  DepartmentId int DEFAULT NULL,
  Salary int NOT NULL,
  PRIMARY KEY (EmployeeId)
);

INSERT INTO salary VALUES (27,'Devdip Sen',5,10000);
INSERT INTO salary VALUES (28,'Alpana Sharan',3,2500);
INSERT INTO salary VALUES (29,'Priyanka Singh',3,2500);
INSERT INTO salary VALUES (30,'Ranjani Iyer',2,5000);
INSERT INTO salary VALUES (31,'Amlan Bhuyan',4,7500);
INSERT INTO salary VALUES (32,'Manoj Prabhakar',1,1000);
INSERT INTO salary VALUES (33,'Raj Phadke',5,10000);
INSERT INTO salary VALUES (34,'Priya Yadav',1,1000);
INSERT INTO salary VALUES (35,'Sayali Joshi',4,7500);
INSERT INTO salary VALUES (36,'Pranav Patil',5,10000);
INSERT INTO salary VALUES (37,'Rohit Patil',3,2500);
INSERT INTO salary VALUES (38,'Swanand Sapre',5,10000);


select * from salary;








CREATE TABLE salesperson 
(
  SalesPersonId int NOT NULL,
  IdEmployeeSalesPerson int NOT NULL,
  PRIMARY KEY (SalesPersonId, IdEmployeeSalesPerson),
  CONSTRAINT IdEmployeeSalesPerson FOREIGN KEY (IdEmployeeSalesPerson) REFERENCES employee (EmployeeId)
);

insert into salesperson values(1,5);
insert into salesperson values(2,6);
insert into salesperson values(3,7);
insert into salesperson values(4,8);


select * from salesperson;








CREATE TABLE customer 
(
  CustomerId int NOT NULL,
  CustomerName varchar(20) NOT NULL,
  Sex char(1) NOT NULL,
  Age int NOT NULL,
  DateOfBirth varchar(15) NOT NULL,
  SocialSecurityNumber int NOT NULL,
  CustomerSalesPersonId int NOT NULL,
  PRIMARY KEY (CustomerId, CustomerSalesPersonId)
);

INSERT INTO customer VALUES (1,'Jishnu Vasudevan','M',24,'1993-12-28',232498675,1);
INSERT INTO customer VALUES (2,'Harsh Shah','M',24,'1993-09-12',456498675,2);
INSERT INTO customer VALUES (3,'Rachana Rambhad','F',24,'1993-08-19',543498675,3);
INSERT INTO customer VALUES (4,'Lagan Gupta','F',24,'1993-08-08',765498675,4);
INSERT INTO customer VALUES (5,'Neha Verma','F',24,'1993-08-27',987498675,1);
INSERT INTO customer VALUES (6,'Aniel Patel','M',24,'1993-11-28',235468675,2);
INSERT INTO customer VALUES (7,'Anubhav Gupta','M',27,'1990-12-28',555698675,3);
INSERT INTO customer VALUES (8,'Aditya Joshi','M',24,'1993-10-28',232434575,4);
INSERT INTO customer VALUES (9,'Parnal Dighe','F',24,'1993-09-28',232498765,1);
INSERT INTO customer VALUES (10,'Dharit Shah','M',24,'1993-12-27',123498675,2);


select * from customer;








CREATE TABLE orders 
(
  OrderId int NOT NULL,
  OrderType varchar(30) NOT NULL,
  OrderStatus varchar(20) NOT NULL,
  OrderCustomerId int NOT NULL,
  PRIMARY KEY (OrderId),
);

insert into orders values(1,'2 day shipping','Shipped',1);
insert into orders values(2,'Priority Shipping','Partially Shipped',2);
insert into orders values(3,'Standard','Payment Incomplete',3);
insert into orders values(4,'2 day shipping','Order Cancelled',4);
insert into orders values(5,'Standard','Pending',5);
insert into orders values(6,'Priority Shipping','Refund Initiated',6);
insert into orders values(7,'2 day shipping','Order Cancelled',7);
insert into orders values(8,'Standard','Pending',8);
insert into orders values(9,'Priority Shipping','Partially Shipped',9);
insert into orders values(10,'2 day shipping','Shipped',10);
insert into orders values(11,'Standard','Order Cancelled',11);
insert into orders values(12,'Priority Shipping','Partially Shipped',12);
insert into orders values(13,'2 day shipping','Payment Incomplete',13);
insert into orders values(14,'Standard','Shipped',14);
insert into orders values(15,'Priority Shipping','On The way',15);
insert into orders values(16,'2 day shipping','Order Cancelled',16);
insert into orders values(17,'Standard','Order Decilned',17);
insert into orders values(18,'Priority Shipping','Refund Initiated',18);
insert into orders values(19,'2 day shipping','Pending',19);
insert into orders values(20,'Standard','On The way',20);


select * from orders;








CREATE TABLE simdata 
(
  SimNumber varchar(16) NOT NULL,
  SimType varchar(10) NOT NULL,
  SimCustomerId int NOT NULL,
  SimAccountNumber int NOT NULL,
  SimPlanNumber int DEFAULT NULL,
  PRIMARY KEY (SimNumber),
  CONSTRAINT SimAccountNumber FOREIGN KEY (SimAccountNumber) REFERENCES phonenumber (AccountNumber),
  CONSTRAINT SimPlanNumber FOREIGN KEY (SimPlanNumber) REFERENCES plans (PlansId)
);


insert into simdata values(1234567890123461,'Prepaid',16,10,1);
insert into simdata values(1234567890123462,'Postpaid',14,12,3);
insert into simdata values(1234567890123463,'Postpaid',1,14,5);
insert into simdata values(1234567890123464,'Prepaid',12,16,8);
insert into simdata values(1234567890123465,'Postpaid',13,11,7);
insert into simdata values(1234567890123466,'Prepaid',15,13,9);
insert into simdata values(1234567890123467,'Postpaid',10,18,10);
insert into simdata values(1234567890123468,'Postpaid',7,15,4);
insert into simdata values(1234567890123469,'Prepaid',5,17,6);
insert into simdata values(1234567890123460,'Postpaid',2,19,3);


select * from simdata;








CREATE TABLE tracking 
(
  TrackingId int NOT NULL,
  TrackingStatus varchar(40) NOT NULL,
  TrackingOrderId int NOT NULL,
  PRIMARY KEY (TrackingId),
  CONSTRAINT TrackingOrderId FOREIGN KEY (TrackingOrderId) REFERENCES orders (OrderId)
);

insert into tracking values(1,'On the way',10);
insert into tracking values(2,'Arrived to courier service',9);
insert into tracking values(3,'Near by closest dispatch location',14);
insert into tracking values(4,'Arrived to courier service',16);
insert into tracking values(5,'Arrived to courier service',17);
insert into tracking values(6,'On the way',19);
insert into tracking values(7,'Near by dispatch location',7);
insert into tracking values(8,'Arriving Tomorrow',2);
insert into tracking values(9,'Arriving Today',13);


select * from tracking;
