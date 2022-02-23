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
   select abs(-25.77);
   select sin(90);
   select LOG(25);
   select cos(90);
   select reverse("abcd");
   select ascii('A');       select bin(88);  select current_date();
   
   select dayofyear("2022-01-01");
   select day("2022-01-01");
   select dayname("2022-01-01");
   select monthname("2022-09-01");
  select current_user();
  use customer;
   
   create table customer2(id int, cname varchar(10), contact bigint, address varchar(20));
   
   
   
   
   
   
   use customer;
   drop table customer2;
   drop table customer_details;
   
   create table Cust_details(id int primary key, cname varchar(20), address varchar(20));
   insert into cust_details values(101, "Ramesh", "Ahmedabad");
   insert into cust_details values(102, "Karan", "Maharashtra");
   insert into cust_details values(103, "Suparna", "Indore");
   select * from cust_details;
       create table sale(orderid int primary key , cname varchar(20), id int, 
   foreign key(id) references cust_details(id));
   
   insert into sale values(1111, "Ramesh", 101);
   insert into sale values(2222, "Ramesh", 102);
   select * from sale;
     update sale  set id = 105 where orderid = 3333;
     
     
     create table sub_details(id int, sname varchar(10), subject varchar(20));
     insert into sub_details values(111, "Ramesh", "c,cpp");
     select * from sub_details;
     delete from sub_details;
     
       insert into sub_details values(111, "Ramesh", "c");
       insert into sub_details values(111, "Ramesh", "cpp");
     
     
     
     select current_timestamp();
     
     select current_date();
     select strcmp("abc","abc");
     
     
     
     
create database myorder;
use myorder;
create table employee(id int,employee_name varchar(20),email varchar(20),salary double);
create table emp_details
(emp_name varchar(20), address varchar(10), contact bigint, dept varchar(10));
     
     create database college;
     use college;
create table it(sid int primary key,sname varchar(20), semail varchar(20), saddress varchar(10));





drop database myorder;
drop database banking;







create database myorder;
use myorder;
create table order_details(orderid int primary key, cname varchar(20), odate date, amount double);
insert into order_details values(1111,"Kiran",'2022-01-01',250);
select * from order_details;
insert into order_details values(2222,"akshay",'2022-01-10',350);
insert into order_details values(3333,"rani",'2022-01-05',350);

create table customer_detail(cname varchar(20) primary key, contact long, orderid int references order_details(orderid));
insert into customer_detail values("akshay",888889999, 2222);
select * from customer_detail;
drop table customer_detail;     
insert into customer_detail values("akshay",888889999, 4444);


create database Normalized;
use Normalized;
create table student1 (student int, advisor varchar(10),
advroom int, class1 varchar(10),class2 varchar(10), class3 varchar(10));
insert into student1 values(1022,"jones",412,"101-07","143-01","159-02");
select * from student1;
insert into student1 values(4123,"smith",216,"201-01","211-02","214-01");
create table student2 (student int, advisor varchar(10),
advroom int, class varchar(10));
insert into student2 values(1022,"jones",412,"101-07");
insert into student2 values(1022,"jones",412,"211-02");
insert into student2 values(1022,"jones",412,"214-01");
select * from student2;
insert into student2 values(4123,"smith",216,"201-01");
insert into student2 values(4123,"smith",216,"211-02");
insert into student2 values(4123,"smith",216,"214-01");
     
create table result1 (id int, sname varchar(10), result varchar(10));

insert into result1 values(101, "karan","pass");
insert into result1 values(102, "amar","fail");
insert into result1 values(103, "Vishal","pass");
insert into result1 values(104, "Rohan","fail");
     
select * from result1;
create view students_pass 
as 
select sname from result1 where result = "pass";   
     
select * from students_pass;     
create view students_fail
as
select sname from result1 where result="fail";
     
     select * from students_fail;
create table food_order(id int, cname varchar(10),corder varchar(20), amount double, odate date);
insert into food_order values(101,"abc","breakfast", 250,'2022-01-01');	
insert into food_order values(102,"xyz","lunch", 350,'2022-01-03');	
 insert into food_order values(103,"lmn","dinner", 450,'2022-02-01');	  
 insert into food_order values(104,"pqr","dinner", 250,'2022-02-05');	 
 insert into food_order values(105,"hti","breakfast", 250,'2022-01-08');	    
     
 select * from food_order;    
    
create view lunch_order
as
select * from food_order where corder="lunch";
     select * from lunch_order;
     drop view jan_order;
create view jan_order 
as
select * from food_order 
where odate between '2022-01-01' and '2022-01-31';     
 
 select * from jan_order;
     create view feb_order 
as
select * from food_order 
where odate between '2022-02-01' and '2022-02-28';   
select * from feb_order;

create database sample;
use sample;
create table library_details(id int primary key, title varchar(10));
create table book_copies(title varchar(10), copies int, 
   id int references library_details(id));
insert into library_details values(101,"C");
insert into library_details values(102,"CPP");
insert into library_details values(103,"Java");
insert into library_details values(104,"python");

select * from library_details;
insert into book_copies values("java",10,103);
select * from book_copies;
insert into book_copies values("java",3,103);
insert into book_copies values("C",8, 101);
insert into book_copies  values("CPP", 4, 102);
insert into  book_copies values("python", 5,104);

select * from book_copies where id = 103;
create table book_delivery(sid int ,sname varchar(10), title varchar(10),
id int references book_details(id));
insert into book_delivery values(1111, "Akshay","java",103);
select * from book_delivery;
create table book_return(sid int, sname varchar(10), title varchar(10),
id int references book_details(id));

insert into book_return values(2222, "suman", "java",103);
select * from book_return;

drop database normalized;
use myorder;
drop table customer_detail;
drop  table order_details;

use sample;
alter table library_details rename to book_details;
select * from book_details;
alter table book_details add (amount double);
alter table book_details drop amount;
alter table book_delivery modify sname varchar(30);
alter table book_delivery modify sname varchar(20);

truncate table book_delivery;
select * from book_delivery;
select * from book_copies;
delete from book_copies;

update book_copies set copies =10 where title="CPP";

create table employee (id int, name varchar(10), age int, address varchar(10), salary double);
insert into employee values(101, "abc", 22,"UP",20000.00);
select * from employee;
alter table employee add(gender varchar(10));
alter table employee rename to customer;
alter table customer drop salary;
select * from customer;
update customer set address = "MP" where id = 101;
delete from customer;


use studentdetails;
create table book_detail(id int primary key, title varchar(10),copies int );
insert into book_detail values(101, "C",20);
insert into book_detail values(102,"CPP", 50);
insert into book_detail values(103,"java",60);
insert into book_detail values(104,"python",35);
select * from book_detail;

select title from book_detail
where copies =( select max(copies) from book_detail);

create table cust_order(order_id int primary key, cust_name varchar(10),
                       order_date date, amount double);
insert into cust_order values(1022,"kamlesh",'2022-02-02',450);
insert into cust_order values(1035,"Arun",'2022-02-05',330);
insert into  cust_order values(1083,"reema",'2022-01-01',650);
insert into cust_order values(1966,"poonam",'2022-01-05',330);
select * from cust_order;
select * from cust_order
where order_date < '2022-02-01';

select cust_name from cust_order
where order_id in(1035,1083);

select cust_name from cust_order
where
amount = ANY(select amount from cust_order where amount between 400 and 500);

select cust_name from cust_order
where
amount = ALL(select amount from cust_order where amount < 400);



create table book_detail(id int, title varchar(20), copies int, amount double);
insert into book_detail values(101, "cpp", 20, 350);
insert into book_detail values(102, "java", 30, 450);
insert into book_detail values(103, "angular", 40, 550);
insert into book_detail values(104, "python", 60, 650);
insert into book_detail values(105, "script", 80, 380);
insert into book_detail values(105,"script",80,380);
insert into book_detail values(106,"spring",80,380);
select * from book_detail;
drop table book_detail;

select title from book_detail 
where 
id IN(102,104,106);


use foodorder;
drop table deliverydate;


drop table food_order;
create table food_order(order_id int primary key,cust_name varchar(10),order_date date,amount double);
insert into food_order values(1111,"vinay",'2022-02-04',450.00);
insert into food_order values(2222,"mamta",'2022-02-05',800);
insert into food_order values(3333,"vikram",'2022-02-06',650.00);
insert into food_order values(4444,"vinay",'2022-01-04',350.00);
insert into food_order values(5555,"mamta",'2022-01-05',500);
insert into food_order values(6666,"vikram",'2022-01-06',610.00);
select * from food_order;
select amount from food_order where order_id=2222;
select cust_name from food_order where order_id=2222;

select * from food_order where order_id=2222;
select * from food_order order by amount desc;
select * from food_order group by cust_name;
select * from food_order where order_date between '2022-01-01' and '2022-01-28';

select * from food_order      
where 
order_date=(select order_date from food_order where order_date='2022-02-06');

select * from food_order where order_date='2022-02-06';
select * from food_order where amount>600;

select * from food_order where order_id=1111;
select * from food_order where order_id in(1111,4444,6666);
select cust_name from food_order
where
amount = ALL(select amount from food_order where amount>500);

select cust_name from food_order where amount > 500;

create database myorder;
use myorder;
create table food_order(order_id int primary key,cust_name varchar(10),order_date date,amount double);
insert into food_order values(1111,"vinay",'2022-02-04',450.00);
insert into food_order values(2222,"mamta",'2022-02-05',800);
insert into food_order values(3333,"vikram",'2022-02-06',650.00);
select * from food_order;
select * from customers;
use sample;
create table customers(id int primary key, name varchar(10), age int, address varchar(10), salary double);
insert into customers values(101,"Ramesh",22,"Gujrat",20000.00);
insert into customers values(102,"kartik",24,"Delhi",25000.00);
insert into customers values(103,"Kaushik",30,"MP",30000.00);
insert into customers values(104,"Naresh",28,"UP",35000.00);
delete from customers;
delete from customers where id=103;
delete from customers where salary>= 30000;
delete from customers where salary <=25000;
select * from customers;
truncate table customers;

update  customers 
set
address ="Delhi" where id = 104;
alter table customers modify name varchar(20);

use sample;
create table employee_details(emp_id int, emp_name varchar(20),
                              job_name varchar(20), manager_id int,
                              hire_date date, salary double,
                              comission int, dept_id int);

insert into employee_details values(68319,"Kayling","president",null,'1991-11-18',6000.00,null,1001);
select * from employee_details;
insert into employee_details values(66928,"blaze","manager",68319,'1991-05-01',2750.00,null,3001);
insert into employee_details values(67832,"clare","manager",68319,'1991-06-09',2550.00,null,1001);
insert into employee_details values(65646,"jonas","manager",68319,'1991-04-02',2957.00,null,2001);
insert into employee_details values(67858,"scarlet","analyst",65646,'1997-04-19',3100.00,null,2001);
insert into employee_details values(68319,"frank","analyst",65646,'1991-12-03',3100.00,null,2001);
alter table employee_details drop comission;
alter table employee_details add (comission int);
update employee_details 
set
comission=200 where dept_id = 1001 or dept_id =3001; 
delete from employee_details where job_name="analyst";
delete from employee_details where job_name="manager" AND emp_name="clare";
update employee_details set manager_id=68310 where job_name="president";
truncate table employee_details;
select * from employee_details;



use sample;
select * from book_details;
insert into book_details values(101,"cpp");
create table book1(id int , title varchar(10));
insert into book1 values(101,"cpp");
insert into book1 values(102,"java");
select * from book1;
use firstdemo;
create table student(rollno int, name varchar(20),address varchar(20),contact bigint,age int);
insert into student values(1,"Harsh","delhi",9877889977,18);
insert into student values(2,"pratik","bihar",9877822977,19);
insert into student values(3,"riyana","siliguri",8877889977,20);
insert into student values(4,"deep","ramnagar",9877889944,18);
insert into student values(5,"saptarhi","kolkata",9890089977,19);
insert into student values(6,"dhanraj","barbazar",9877889007,19);
insert into student values(7,"rohit","balurghat",7777889977,20);
insert into student values(8,"niraj","alipur",9877669977,19);

select * from student;
create table studentcourse(courseid int,rollno int);
insert into studentcourse values(1,1);
insert into studentcourse values(2,2);
insert into studentcourse values(2,3);
insert into studentcourse values(3,4);
insert into studentcourse values(1,5);
insert into studentcourse values(4,9);
insert into studentcourse values(5,10);
insert into studentcourse values(4,11);

select * from studentcourse;

select name,contact from student
inner Join studentcourse
on
student.rollno = studentcourse.rollno
where studentcourse.courseid=1;

create view course1
as
(select name,contact from student
inner Join studentcourse
on
student.rollno = studentcourse.rollno
where studentcourse.courseid=1);

select * from course1;
select * from course2;
create view course2
as
(select student.name,student.contact from student inner join studentcourse
on student.rollno = studentcourse.rollno
where studentcourse.courseid =2);

select * from student inner join studentcourse
on student.rollno = studentcourse.rollno
where student.age <= 19;

delete from student where rollno = 5;

select * from student left join studentcourse
on student.rollno = studentcourse.rollno;
select * from student full join studentcourse
on student.rollno = studentcourse.rollno;

select * from student full join studentcourse
on student.rollno = studentcourse.rollno;

create table student1(id int , name varchar(10), age int);
insert into student1 values(101,"karan",20);
insert into student1 values(102,"amar",22);
insert into student1 values(103,"sohan",25);

select * from student1;
select * from student2;
create table student2(id int , course int);
insert into student2 values(101,5);
insert into student2 values(106,4);
insert into student2 values(107,8);
insert into student2 values(108,9);
select student1.id,student2.course
 from student1 full join student2 
on student2.id = student1.id;

select * from student1 cross join student2
where student1.name ="karan";

select student1.name, student2.course
from student1,student2
where student1.id = student2.id;
use sample;
select * from book1;

create database hibernate4;
use hibernate4;

create table employee(id int primary key, emp_name varchar(20), emp_address varchar(20), emp_mobile_nos varchar(20));
select * from employee;





create table emp1(id int, ename varchar(10));
insert into emp1 values(101, "karan");
select * from emp1;


use sample;
create table book1(id int, title varchar(10));
select * from book1;

insert into book1 values(101,"cpp");
insert into book1 values(102,"java");
insert into book1 values(103,"Python");
insert into book1 values(104,"javascript");
insert into book1 values(105,"SQL");
insert into book1 values(106,"Script");
select * from book1;

create table student_profile(id int, s_name varchar(20), s_address  varchar(20), s_contact bigint);

insert into student_profile values(101, "Akash", "Hyderabad",8877669988);
insert into student_profile values(102, "Neha", "Delhi",9997669988);
insert into student_profile values(103, "Roshni", "MP",7677669988);
insert into student_profile values(104, "Rohit", "MH",7677669988);
select * from student_profile;

create database student;
use student;
create table student_data(id int, sname varchar(10),scontact bigint,sresult varchar(10));
insert into student_data values(1001, "Ganesh",8899003342,"pass");
insert into student_data values(1002,"Pallavi",765890430,"pass");
select * from student_data;
insert into student_data values(1003,"Rohan",9085674433,"fail");
use sample;
select * from book1;

create database contactdb;
use contactdb;

CREATE  TABLE `contact` (

  `contact_id` INT NOT NULL ,

  `name` VARCHAR(45) NOT NULL ,

  `email` VARCHAR(45) NOT NULL ,

  `address` VARCHAR(45) NOT NULL ,

  `telephone` VARCHAR(45) NOT NULL );




use sample;
create table employees(job_id int, first_name varchar(20), last_name varchar(20),
                       job_grade int );

insert into employees values(1001, "vinay","Kumar", 4);
insert into employees values(1002, "Gaurav","Kumar", 3);
insert into employees values(1003, "vinit","Kumar", 4);

alter table employees add (salary double);
select * from employees;
update employees set salary = 25000 where job_id= 1003;

select last_name,salary as sal from employees;

create table employees1(employee_id int, first_name varchar(10),
                        last_name varchar(10), email varchar(20),
                        phone_number varchar(20), hire_date date,
                        job_id int, salary double, comission int,
                        manager_id int, dept_id int);
delete from employees1 where employee_id=103;
select * from employees1;
insert into employees1 values(107,"vishal","kumar","abc@xyz.com", "8909807689", 
							  '2021-05-09',225,20000.00,null,321,4321);
insert into employees1 values(101,"kiran","kumar","abc@xyz.com", "8909807689", 
							  '2021-08-08',222,20000.00,1000,111,4321);
insert into employees1 values(102,"Vinay","kumar","abc@xyz.com", "8909807689", 
							  '2021-06-04',288,20000.00,1000,111,4321);

insert into employees1 values(103,"kapil","kumar","abc@xyz.com", "8909807689", 
							  '2021-05-09',225,20000.00,1000,111,4321);
                              
insert into employees1 values(104,"vaishali","kumar","abc@xyz.com", "8909807689", 
							  '2021-08-08',222,23000.00,1000,321,4321);      
                             insert into employees1 values(104,"vaishali","kumar","abc@xyz.com", "8909807689", 
							  '2021-08-08',222,23000.00,1000,321,4321);      
                              insert into employees1 values(105,"amar","kumar","abc@xyz.com", "8909807689", 
							  '2021-02-02',222,32000.00,1000,321,4321);
insert into employees1 values(104,"vaishali","kumar","abc@xyz.com", "8909807689", 
							  '2021-08-08',222,23000.00,1000,321,4321);      
                              insert into employees1 values(106,"akshay","kumar","abc@xyz.com", "8909807689", 
							  '2021-02-02',222,18000.00,1000,321,4321);
select employee_id ,job_id, last_name, hire_date as start_date from employees1;
select last_name,salary from employees1;
select last_name,dept_id from employees1 where employee_id=102;
select first_name, salary from employees1 where salary < 20000 or salary > 25000;
select employee_id, first_name,hire_date from employees1 
where first_name='kapil' or first_name='vaishali'
order by hire_date;

select first_name,dept_id,salary from employees1 
where (salary,dept_id) 
in (select salary,dept_id from employees1 where comission is not null);

select first_name,salary,dept_id from employees1 where comission is not null;
select first_name,job_id,salary from employees1
where
salary > all(select salary from employees1 where job_id=225)
order by salary desc;

select employee_id,first_name,salary,dept_id
from employees1  where first_name
IN
(select first_name from employees1
where
first_name like '%k%');
select first_name,dept_id from employees1
where
first_name like '%k%'

select first_name, salary
from employees1
where manager_id IN
(select manager_id from employees1 where manager_id=111);

select employee_id from employees1 where manager_id=111;



use sample;
create table user1(uid int, uname varchar(10), uemail varchar(20)); 
select * from user1;




create database user;
use user;
create table user1(uid int, uname varchar(10), uemail varchar(20));
select * from user1;


use user;
create table employee1(eid int, ename varchar(10), eemail varchar(20));
select * from employee1;

create database employee;
use employee;

create table employee1(eid int, ename varchar(10), eemail varchar(20));
select * from employee1;

use user;
select * from user1;

use sample;

delete from user1;




use sample;
create table employee1(eid int, ename varchar(10), eemail varchar(20));
select * from employee1;




















