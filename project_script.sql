Create Database DBMS_PROJECT;
use DBMS_PROJECT;
select * from Employee;
select * from salary;

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
insert into PlanInclusions values(21,'2 GB','1200 Minutes','Unlimited');
insert into PlanInclusions values(22,'2 GB','1200 Minutes','Unlimited');
insert into PlanInclusions values(23,'2 GB','1200 Minutes','Unlimited');

select * from PlanInclusions;

desc billinginformation;

delimiter //
create procedure enterBillinginformation(IN includedData int, IN dataUsed int, IN tax double)
begin
insert into billinginformation (IncludedData,DataUsed,BalancedData,Tax)values(includedData, dataUsed,includedData-dataUsed,tax);
end //
drop procedure enterBillingInformation;
desc billinginformation;

select * from billingInformation;

call enterBillingInformation(2000,1800,200);


create trigger populateBillinginformation
before insert 
on billinginformation
for each row 
begin
insert into billinginformation values ()
end


insert into department values(1,'Information Technology');
insert into department values(2,'Sales & Marketing');
insert into department values(3,'Finance');
insert into department values(4,'Human Resource');
insert into department values(5,'Customer Care');

select * from department;


insert into worklocation values(1,'Seattle',5);
insert into worklocation values(2,'Washington DC',5);
insert into worklocation values(3,'New York',5);
insert into worklocation values(4,'Boston',5);

select * from worklocation;


select * from employeeworklocation;

desc employeeworklocation;
 insert into employeeworklocation values(
 
select * from salary;


select * from billinginformation;

alter table billinginformation 
drop column billnumber;


desc billinginformation;

desc phonenumber;

desc callrecords;
desc salary;
delimiter //
create procedure salary(IN inputId int,IN salary double)
begin
insert into salary (SalaryId,Salary,Commission)values(inputId,salary,salary*0.2);
end //
drop procedure salary;
call salary(1,5000);
call salary(2,8000);
call salary(3,10000);
call salary(4,12000);
call salary(5,15000);

select * from salary;
select * from employee;
desc employee;

insert into employee values(1,'Ojas Phansekar','123456789',24,1);
insert into employee values(2,'Shreyas Kalayanaraman','245987675',24,1);
insert into employee values(3,'Saurabh Kulkarni','734756953',24,1);
insert into employee values(4,'Vivek Shetye','572364526',26,1);
insert into employee values(5,'Mihir Patil','238745784',27,2);
insert into employee values(6,'Karan Thevar','968374657',28,2);
insert into employee values(7,'Chetan Mistry','623784983',30,2);
insert into employee values(8,'Shantanu Sawant','527473298',24,2);
insert into employee values(9,'Pooja Patil','286436778',24,3);
insert into employee values(10,'Kalpita Malvankar','863476236',34,3);
insert into employee values(11,'Vaibhav Parkar','123456789',24,3);
insert into employee values(12,'Sayali Sakhalkar','674378987',24,3);
insert into employee values(13,'Khushi Chavan','652134897',45,4);
insert into employee values(14,'Pratik Patre','677435432',24,4);
insert into employee values(15,'Pushkar','564321879',43,4);
insert into employee values(16,'Tushar Gupta','444777651',24,4);
insert into employee values(17,'Pranav Swaminathan','990077663',34,5);
insert into employee values(18,'Victor','563477778',44,5);
insert into employee values(19,'Yusuf Ozbek','995912563',45,5);
insert into employee values(20,'Sudharshan Poojary','763459876',24,5);

desc employeeworklocation;
desc worklocation;
select * from worklocation;

insert into employeeworklocation values(1,2);
insert into employeeworklocation values(2,4);
insert into employeeworklocation values(3,3);
insert into employeeworklocation values(4,1);
insert into employeeworklocation values(5,2);
insert into employeeworklocation values(6,4);
insert into employeeworklocation values(7,3);
insert into employeeworklocation values(8,1);
insert into employeeworklocation values(9,2);
insert into employeeworklocation values(10,4);
insert into employeeworklocation values(11,3);
insert into employeeworklocation values(12,1);
insert into employeeworklocation values(13,2);
insert into employeeworklocation values(14,4);
insert into employeeworklocation values(15,3);
insert into employeeworklocation values(16,1);
insert into employeeworklocation values(17,2);
insert into employeeworklocation values(18,4);
insert into employeeworklocation values(19,3);
insert into employeeworklocation values(20,1);

select * from employeeworklocation;

insert into employeeassignment values(1,1);
insert into employeeassignment values(2,1);
insert into employeeassignment values(3,1);
insert into employeeassignment values(4,1);
insert into employeeassignment values(5,2);
insert into employeeassignment values(6,2);
insert into employeeassignment values(7,2);
insert into employeeassignment values(8,2);
insert into employeeassignment values(9,3);
insert into employeeassignment values(10,3);
insert into employeeassignment values(11,3);
insert into employeeassignment values(12,3);
insert into employeeassignment values(13,4);
insert into employeeassignment values(14,4);
insert into employeeassignment values(15,4);
insert into employeeassignment values(16,4);
insert into employeeassignment values(17,5);
insert into employeeassignment values(18,5);
insert into employeeassignment values(19,5);
insert into employeeassignment values(20,5);
insert into employeeassignment values(20,NULL);
insert into employeeassignment values(NULL,NULL);

delete from employeeassignment where assignmentemployeeid = NULL;
select * from employeeassignment;

insert into salesperson values(1,5);
insert into salesperson values(2,6);
insert into salesperson values(3,7);
insert into salesperson values(4,8);

select * from salesperson;
select * from callrecords;
desc callrecords;
select * from billinginformation;
desc phonenumber;
delimiter //
create procedure callRecords(IN inputId int,IN salary double)
begin
insert into salary (SalaryId,Salary,Commission)values(inputId,salary,salary*0.2);
end //

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

insert into phonenumber values();
select * from phonenumber;
desc callrecords;
select * from callrecords;

insert into callrecords values(1,'12:20:20','12:21:20',timediff('12:21:20','12:20:20'),10);
insert into callrecords values(2,'11:23:24','15:40:30',timediff('15:40:30','11:23:24'),12);
insert into callrecords values(3,'08:30:10','08:32:20',timediff('08:32:20','08:30:10'),11);
insert into callrecords values(4,'21:45:30','21:50:34',timediff('21:50:34','21:45:30'),14);
insert into callrecords values(5,'12:32:21','12:34:20',timediff('12:34:20','12:32:21'),10);
insert into callrecords values(6,'19:10:13','19:55:20',timediff('19:55:20','19:10:13'),10);
insert into callrecords values(7,'20:30:25','21:21:20',timediff('21:21:20','20:30:25'),10);
insert into callrecords values(8,'13:40:56','14:34:20',timediff('14:34:20','13:40:56'),10);
insert into callrecords values(9,'16:20:20','18:21:20',timediff('18:21:20','16:20:20'),10);
insert into callrecords values(10,'17:42:59','18:21:20',timediff('18:21:20','17:42:59'),11);
insert into callrecords values(11,'22:48:13','23:21:13',timediff('23:21:13','22:48:13'),11);
insert into callrecords values(12,'23:12:20','23:33:45',timediff('23:33:45','23:12:20'),11);
insert into callrecords values(13,'17:15:20','17:50:20',timediff('17:50:20','17:15:20'),11);
insert into callrecords values(14,'16:35:13','16:59:59',timediff('16:59:59','16:35:13'),10);
insert into callrecords values(15,'14:36:54','14:40:23',timediff('14:40:23','14:36:54'),12);
insert into callrecords values(16,'11:52:56','12:21:20',timediff('12:21:20','11:52:56'),12);
insert into callrecords values(17,'09:31:43','10:21:28',timediff('10:21:28','09:31:43'),13);
insert into callrecords values(18,'06:14:54','06:57:56',timediff('06:57:56','06:14:54'),13);
insert into callrecords values(19,'22:48:13','23:21:13',timediff('23:21:13','22:48:13'),19);
insert into callrecords values(20,'14:51:54','14:59:23',timediff('14:59:23','14:51:54'),17);

desc phonenumber;
desc callrecords;
select * from phonenumber;
select * from callrecords;

update callrecords set CallStartTime = '19:10:13' AND CallEndTime = '19:55:20' where CallId = 6;

delete from callrecords where CallId = 6;
select * from planinclusions;
select * from plans;
desc plans;
insert into plans values(1,'prepaid','Basic Plan',1);

update plans set PlansType = 'Prepaid' where PlansId = 6;

insert into plans values(2,'Prepaid','Every Minute Counts',2);
insert into plans values(3,'Postpaid','Family',3);
insert into plans values(4,'Postpaid','Enjoy Data',4);
insert into plans values(5,'Postpaid','Finger tips',5);
insert into plans values(6,'Prepaid','Talk For Hours',6);
insert into plans values(7,'Postpaid','Do not disturb',7);
insert into plans values(8,'Prepaid','Enjoy surfing',8);
insert into plans values(9,'Prepaid','Continuous Texting',18);
insert into plans values(10,'Postpaid','Powerful Speed',20);


select * from salesperson;

select * from employee;

select * from customer;
insert into customer values(1,'Jishnu Vasudevan','M',24,'1993-12-28',232498675,1);
insert into customer values(2,'Harsh Shah','M',24,'1993-09-12',456498675,2);
insert into customer values(3,'Rachana Rambhad','F',24,'1993-08-19',543498675,3);
insert into customer values(4,'Lagan Gupta','F',24,'1993-08-08',765498675,4);
insert into customer values(5,'Neha Verma','F',24,'1993-08-27',987498675,1);
insert into customer values(6,'Aniel Patel','M',24,'1993-11-28',235468675,2);
insert into customer values(7,'Anubhav Gupta','M',27,'1990-12-28',555698675,3);
insert into customer values(8,'Aditya Joshi','M',24,'1993-10-28',232434575,4);
insert into customer values(9,'Parnal Dighe','F',24,'1993-09-28',232498765,1);
insert into customer values(10,'Dharit Shah','M',24,'1993-12-27',123498675,2);
insert into customer values(11,'Girish Sanai','M',24,'1993-07-22',645498675,3);
insert into customer values(12,'Kal Bugrara','M',57,'1960-12-28',145498675,4);
insert into customer values(13,'Neeraj Rajput','M',27,'1990-10-28',232555675,1);
insert into customer values(14,'Shruti Mehta','F',26,'1991-12-17',232444375,2);
insert into customer values(15,'Sameer Goel','M',28,'1989-12-30',276578675,3);
insert into customer values(16,'Vijayshree Uppili','F',26,'1991-08-23',654498675,4);
insert into customer values(17,'Rohit Kamble','M',24,'1993-06-28',453498675,1);
insert into customer values(18,'Priyanka Desai','F',26,'1991-04-23',189498675,2);
insert into customer values(19,'Komal Shirodkar','F',26,'1991-02-27',678498675,3);
insert into customer values(20,'Simmah Kazi','F',22,'1995-12-28',232834675,4);

select * from orders;
desc orders;
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
desc tracking;
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

select * from customer;
desc simdata;
select * from phonenumber;
select * from plans;
select * from simdata;
select * from callrecords;
select * from billinginformation;
select * from planinclusions;
select * from orders;
select * from tracking;
select * from salesperson;
select * from employee;
select * from salary;
select * from employeeworklocation;
select * from employeeassignment;
select * from worklocation;
select * from department;

/* Displays plan for a particular customer */
create view displayPlans as 
select * from planinclusions where PlanId =
(select PlanInclusionId from plans where PlansId =
(select SimPlanNumber from simdata where SimCustomerId =
(select CustomerId from customer where CustomerName = 'Jishnu Vasudevan')));

select * from displayPlans;
/* View displays the plan of a particular customer along with plan name */
create view displayCallRecords as
select CustomerId, CustomerName,planinclusions.data, planinclusions.talktime, planinclusions.textmessages from Customer inner join simdata on customer.customerid = simdata.simcustomerid inner join 
plans on simdata.simplannumber = plans.plansid inner join planinclusions on plans.planinclusionId = planinclusions.planid where CustomerId = 2;

drop view displayCallRecords;
select * from displayCallRecords;

/* Work Location for a particular employee */
create view displayWorkLocation as
select EmployeeId,Employee_Name,worklocation.locationname from Employee 
inner join employeeworklocation 
on employee.employeeid = employeeworklocation.workemployeeid 
inner join worklocation 
on employeeworklocation.workemployeeid = worklocation.locationid where EmployeeId = 3;

select * from displayWorkLocation;
/* Displaying the department for a particular employee */
select * from employee;
create view displayDepartment as
select EmployeeId,Employee_Name,department.DepartmentName from Employee
inner join department on employee.employeeid = department.departmentdid;
select * from displayDepartment;
/* Displaying call records of customer*/
select * from callrecords;
select * from simdata;


create view displayCallRecords as
select * from callrecords where callaccountnumber = 
( select accountnumber from phonenumber where accountnumber = 
(select simaccountnumber from simdata where simcustomerid = 
(select customerid from customer where customerid = 1)));

select * from displayCallRecords;
drop view displayCallRecords;

/*To display order status of a customer*/
create view displayOrderStatus as
select CustomerId,CustomerName,orders.orderstatus from customer inner join orders on customer.customerid = orders.ordercustomerid; 

select * from displayOrderStatus;
/* To display/view customer phone number */

create view displayPhoneNumber as
select CustomerId,CustomerName,simdata.simnumber,phonenumber.PhoneNumber from customer 
inner join simdata
on customer.customerid = simdata.simcustomerid 
inner join phonenumber 
on simdata.simaccountnumber = phonenumber.accountnumber;

drop view displayPhoneNumber;
select * from displayPhoneNumber;
/*To display sim number */
select * from simdata;

select CustomerId,CustomerName,simdata.SimNumber from customer inner join simdata on simdata.simcustomerid = customer.customerid;
select CustomerId,CustomerName,simdata.SimNumber from customer inner join simdata on simdata.simcustomerid = customer.customerid where customerid = 2;



/* Salary of an  particular type of employeee in a department*/

select distinct department.departmentname,salary.salary from employee inner join employeeassignment on employee.employeeid = employeeassignment.AssignmentEmployeeId inner join department on employeeassignment.departmentid = department.departmentid inner join salary on employee.salaryid = salary.salaryid where department.departmentid = 2 ;
select distinct department.departmentid,department.departmentname,salary.salary from employee inner join employeeassignment on employee.employeeid = employeeassignment.AssignmentEmployeeId inner join department on employeeassignment.departmentid = department.departmentid inner join salary on employee.salaryid = salary.salaryid;

/* Salesperson alloted to a particular customer*/
create view displaySalespersonAlloted as
select CustomerName ,employee.employee_name as SalesPersonAlloted from customer 
inner join salesperson 
on customer. customersalespersonid = salesperson.salespersonid 
inner join employee 
on salesperson.idemployeesalesperson = employee.employeeid;

select CustomerName ,employee.employee_name as SalesPersonAlloted from customer inner join salesperson on customer. customersalespersonid = salesperson.salespersonid inner join employee on salesperson.idemployeesalesperson = employee.employeeid;
where customer.customerid = 1
select * from displaySalespersonAlloted;
drop view displaySalespersonAlloted; 
/*Customer wants to know the tracking status using tracking id*/
create view displayTrackingStatus as
select customername,tracking.trackingid,tracking.trackingstatus from customer 
inner join orders 
on customer.customerid = orders.ordercustomerid 
inner join tracking 
on orders.orderid = tracking.trackingorderid; 

select * from displayTrackingStatus;
/*Tracking of one customer*/
select customername,tracking.trackingid,tracking.trackingstatus from customer inner join orders on customer.customerid = orders.ordercustomerid inner join tracking on orders.orderid = tracking.trackingorderid  where customer.customerid = 10; 


update employee set employeedepartmentid = 5  where employeeid = 16;


Delimiter //
Create Trigger assignDepartments after insert on employee
for each row 
begin
insert into salary values (NEW.employeeid,New.Employee_Name,NEW.departmentid,NEW.Salary);
end//
Delimiter ;

drop trigger assignDepartments;



insert into employee values(27,'Devdip Sen','654787654',56,5,10000);
insert into employee values(28,'Alpana Sharan','987787654',45,3,2500);
insert into employee values(29,'Priyanka Singh','238787654',43,3,2500);
insert into employee values(30,'Ranjani Iyer','777787654',34,2,5000);
insert into employee values(31,'Amlan Bhuyan','555787654',23,4,7500);
insert into employee values(32,'Manoj Prabhakar','444787654',21,1,1000);
insert into employee values(33,'Raj Phadke','999787654',56,5,10000);
insert into employee values(34,'Priya Yadav','228787654',33,1,1000);
insert into employee values(35,'Sayali Joshi','158787654',22,4,7500);
insert into employee values(36,'Pranav Patil','658787654',25,5,10000);
insert into employee values(37,'Rohit Patil','222787654',45,3,2500);
insert into employee values(38,'Swanand Sapre','111787654',65,5,10000);
select * from salary;

select * from employee;

desc employee;
select * from department;
select employeeid,name,salary from employee inner join department on employee.employeedepartmentid=department.departmentid;

select * from simdata;

create view displayAvgAge as
select avg(Age) from employee;

select max(salary) from employee;

select * from salary;

