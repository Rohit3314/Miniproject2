select sysdate();
select dayofyear("2022-01-10");
select dayname("2022-01-05");
select ceiling(10.44);
select reverse("abcde");
select avg(10,20,30,40);
select current_date();
select current_time();
select current_timestamp();
select current_user();
select abs(-10.666);


create database Employee;
use employee;
create table employeedata(id int,name varchar(10),salary double);
insert into employeedata values(101,"Akshay",25000);
select * from employeedata;
insert into employeedata values(102, "Amar",30000);
select id,name,salary from employeedata;
drop table employeedata;
select * from employeedata;
DELETE FROM employeedata;
alter table employeedata add(address varchar(10));
insert into emprofiles values(104,"rohan",20000);
alter table employeedata drop address;
alter table employeedata modify salary int;
alter table employeedata modify salary double;
select * from employeedata;
truncate table employeedata;
select * from emprofiles;

update emprofiles set salary = 20000 where id = 104; 


alter table employeedata rename to emprofiles;
select * from emprofiles;
update  emprofiles set salary = 20000 where name ="Akshay"; 
select * from emprofiles where salary > 20000;
insert into emprofiles values(105,"Karan",25000);

insert into emprofiles values(106,"Suresh",25000);
insert into emprofiles values(107,"Ravi",28000);
select * from emprofiles where salary > 25000 group by salary;
select * from emprofiles where salary > 25000 order by salary desc;
select * from emprofiles order by salary desc;
select * from emprofiles group by salary;

select * from emprofiles having salary > 25000;

insert into emprofiles values(108,"Amit",25000);
commit;

insert into emprofiles values(111,"omkar",28000);
savepoint B;
insert into emprofiles values(112,"Gaurav",28000);
select * from emprofiles;

rollback to A;


create database Account;
use Account;

create table Accholders(id int,name varchar(10),salary double, acc int,balance double);
insert into Accholders values(101, "Kamal", 20000, 11111, 10000);
select * from Accholders;
create table deposit(id int, dbalance double);
insert into deposit values(101, 2000);
select * from deposit;
insert into Accholders values(102,"Yogesh",30000, 22222,15000);
insert into Accholders values(103,"Ramesh",20000,33333,12000);
select * from Accholders;
select * from Accholders 
where balance = 15000;
select * from Accholders where balance=25000;
select(15+6) as addition;
select (15-6);
select (22*3);
select (33/5);
select (44%8);

select avg(balance) as "Addbalance" from Accholders;
select max(balance) as "maxbalance" from Accholders;
select sum(balance) as "Total" from Accholders;

select current_date();
select timestamp();
select timestamp(2022-01-07);
select dayofmonth();
select d
select time();



create database emp1;
use emp1;
create table edetails(emp_id int, emp_name varchar(20),job_name varchar(20),manager_id int,
hire_date date,salary double,comission double,dept_is int);
insert into edetails values(68319,"kaysingh","president",null,"1991-11-18",6000,null,1001);
select * from edetails;
insert into edetails values(66928,"blaze","pmanager",68319,"1995-01-05",2750,null,3001);
insert into edetails values(67832,"clare","manager",68319,"1991-06-09",2550,null,1001);
insert into edetails values(65646,"Jonas","manager",68319,"1991-04-02",2957,null,2001);
insert into edetails values(67858,"scarlet","analyst",65646,"1994-04-09",3100,null,2001);
insert into edetails values(69062,"frank","analyst",65464,"1991-12-03",31000,null,2001);
alter table edetails drop comission;
alter table edetails add (comission double);
update  edetails set comission=2000 where dept_is=1001;
update  edetails set comission=2000 where dept_is=3001;
delete from edetails where job_name="analyst";
delete from edetails where emp_name="clare";
update edetails set manager_id=68310 where job_name="president";
truncate table edetails;
select * from edetails;

create database foodorder;
use foodorder;
create table delivery(orderid int, name varchar(10), contact long, amount double);
insert into delivery values(1111,"Sarang",8088765678,400);
select * from delivery;
insert into delivery values(2222,"Vishal",7345627788,300);
insert into delivery values(3333,"Ashwin",7344427788,350);
insert into delivery values(4444,"Rushikesh",9088727788,500);
create table deliverydate(orderid int, ddate date);
insert into deliverydate values(1111,"2022-01-01");
insert into deliverydate values(2222,"2022-01-02");
insert into deliverydate values(3333,"2022-01-03");
insert into deliverydate values(4444,"2022-01-04");
select * from deliverydate;

insert into delivery values(5555,"Kumar",9977885464,450);
insert into deliverydate values(6666,"2022-01-06");
select * from delivery join deliverydate on delivery.orderid = deliverydate.orderid;
select * from delivery left join deliverydate on delivery.orderid = deliverydate.orderid;
select * from delivery right join deliverydate on delivery.orderid = deliverydate.orderid;

select * from deliverydate full join delivery;

create database studentdetails;
use studentdetails;

create table student(rollno int,name varchar(20),address varchar(20),contact long,age int);
insert into student values(1,"Harsh","delhi",8789776655,18);
insert into student values(2,"pratik","bihar",9989776655,19);
insert into student values(3,"riyanka","siliguri",6689776655,20);
insert into student values(4,"deep","ramnagar",9589776620,21);
insert into student values(5,"saptarhi","kolkata",7789776655,19);
insert into student values(6,"Dhanraj","Barbazar",8789776622,20);
insert into student values(7,"Rohit","balurghat",9799776655,18);
insert into student values(8,"Niraj","Alipur",8889776655,19);

select * from student;

create table studentcourse(courseid int, rollno int);
insert into studentcourse values(1,1);
insert into studentcourse values(2,2);
insert into studentcourse values(2,3);
insert into studentcourse values(3,4);
insert into studentcourse values(1,5);
insert into studentcourse values(4,9);
insert into studentcourse values(5,10);
insert into studentcourse values(4,11);

select * from studentcourse;

select * from student join studentcourse on student.rollno=studentcourse.rollno;

select studentcourse.courseid,student.name,student.age from student join studentcourse 
on student.rollno=studentcourse.rollno;

select student.name,studentcourse.courseid 
from student left join studentcourse 
on student.rollno = studentcourse.rollno;

select student.name,studentcourse.courseid 
from student right join studentcourse 
on student.rollno = studentcourse.rollno;

select * from student full join studentcourse;

select * from student cross join studentcourse;
select * from studencourse cross join student;
create table student1(rollno int,name varchar(20),address varchar(20),contact long,age int);
insert into student1 values(1,"Harsh","delhi",8789776655,18);
insert into student1 values(2,"pratik","bihar",9989776655,19);
insert into student1 values(3,"riyanka","siliguri",6689776655,20);
insert into student1 values(4,"deep","ramnagar",9589776620,21);

select * from student1;

select a.rollno,b.name 
from student1 a, student1 b
where a.rollno < b.rollno;


create database JDBC;
use JDBC;

create table demo1(id int, name varchar(20));
insert into demo1 values(101,"abc");
insert into demo1 values(102,"xyz");

insert into demo1 values(103,"pqr");
select * from demo1;




insert into demo1 values(105,"qwe");
insert into demo1 values(104,"lmn");
select * from demo1;
use jdbc;
create table demo2(id int, name varchar(20));
insert into demo2 values(101,"Akash");
select * from demo2;


create database Firstdemo;
use Firstdemo;

create table studentdetails(id int, name varchar(20));
insert into studentdetails values(101, "abc");
select * from studentdetails;
insert into studentdetails values(102, "pqr");

create table transactions(sr int, amount double, tdate date);
insert into transactions values(1, 1200, "2022-01-01");
insert into transactions values(2, 900, "2022-01-02");
insert into transactions values(3, 5200, "2022-01-03");
insert into transactions values(4, 800, "2022-01-04");
insert into transactions values(5, 2200, "2022-01-05");
insert into transactions values("abc");
select * from transactions;
delete from transactions;
alter table transactions modify sr varchar(20);
alter table transactions drop tdate;
alter table  transactions drop amount;

select * from studentdetails;
 
 
  create database banking;
  use banking;
  create table customer(accno int, name varchar(20), balance double);
   insert into customer values(1111,'amar',5500.55);
   insert into customer values(2222,'akshay',6500.00);
   select accno from customer;
   select name from customer;
   select balance from customer;
   select accno,balance from customer;
   select accno,name from customer;
   select accno,name,balance from customer;
   select * from customer;
   create table transaction(accno int, name varchar(10), balance double, last date);
   insert into transaction values(1111,'amar',5500.55,'2022-05-01');
   insert into transaction values(2222,'akshay',6500.00,'2022-01-01');
   select * from transaction;
   
   select name from transaction where accno=1111;
   select * from transaction where name='akshay';
   select * from transaction where accno=1111;
   
   create database JDBCdemo;
   use JDBCdemo;
   create table ui(namelang varchar(10), inuse varchar(10));
   insert into ui values('cpp','no');
    insert into ui values('java','yes');
    insert into ui values('python','yes');
    select * from ui;
   
   
   use student;
   Select * from studentinfo;
   insert into studentinfo values(104,"Minal","Hyderabad");
   
   
   
   
   create database sample;
   use sample;
   create table transact(id int, tdate date, op varchar(10),amount double);
   insert into transact values(101,'2021-05-05',"Deposit",2000);
   insert into transact values(101,'2021-06-06',"Deposit",3000);
    insert into transact values(101,'2021-07-07',"Deduct",1000);
   select * from transact;
   drop table transact;
   
   create table profile1(id int, cname varchar(20), address varchar(20), email varchar(20));
   insert into profile1 values(101,"Rohan Kumar","Delhi","abc@xyz.com");
   select * from profile1;
   
   create table balance(id int, bal double);
    insert into balance values(101, 5000.00);
   select * from balance;
   
   
   
   
   
   
   
   use sample;
   select * from balance;
     select * from profile1;
     select * from transact;
   
   create database employee;
   use employee;
   
   create table employee_data(id int, name varchar(20), address varchar(20), contact long,email varchar(20));
   insert into employee_data values(101,"Rajesh kumar","Delhi",9999988888,"abc@xyz.com");
    insert into employee_data values(102,"Karan kumar","Kolkata",9999988888,"abc@xyz.com");
   select * from employee_data;
   

   
   
   

