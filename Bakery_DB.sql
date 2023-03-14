drop table Customer ; drop table employee;
drop table customer_account; drop table employee_account;
drop table customer_phone; drop table employee_phone;
drop table feedback; drop table orders; drop table product; drop table orderconsist_of; 
drop table supplier; drop table Ingredients; drop table pconsist_of;
-- *******************Customer***********************
create table  Customer(
CID int not null auto_increment ,
BDate date ,
Clocation varchar(50) not null ,
Fname varchar(30) not null,
Lname varchar(30) not null,
primary key(CID) 
);

insert into Customer ( BDate , Clocation , Fname , Lname) values
('1999-05-05' , 'Dammam' , 'Dana' , 'Omar'),
('2001-10-26' , 'Alkhobar' , 'Basimah' , 'Adnan'),
('1998-09-17' , 'Alkhobar' , 'Asma' , 'Alharbi'), 
('2001-12-10' , 'Dammam' , 'Sama' , 'Salem'),
('1999-05-18' , 'Alkhobar' , 'Abdulaziz' , 'Aljalaq'),
('1989-03-30' , 'Dammam' , 'Maryam' , 'Aldowerij'),
('1992-01-20' , 'Dammam' , 'Bashier' , 'Alhammoud'),
('1995-11-25' , 'Alkhobar' , 'Gadah' , 'Aljalaq'),
('2000-08-08' , 'Dammam' , 'Maryam' , 'Alharbi'),
('1981-07-01' , 'Dammam' , 'Salwa' , 'Alhammoud');

-- Customer Account: 
create table Customer_Account(
Cusername varchar(30) not null,
Cpassword varchar(30) not null,
email varchar(50) not null ,
CID int not null,
primary key(Cusername),
constraint CID_con foreign key(CID)references Customer(CID) on update cascade on delete cascade 
);

insert into customer_account (Cusername , Cpassword , email , CID) values 
('Dana_001' , 'D22@qy' , 'Dana@hotmail.com' , 1),
('Basimah_002' , 'B@84oN' , 'Basimah@hotmail.com' , 2),
('Asma_003' , 'Sp11$5g' , 'Asma@gmail.com' , 3),
('Sama_004' , 'Smw/#38' , 'Sama@gmail.com' , 4),
('Abdulaziz_005' , 'A7&lhR8' , 'Abdulaziz@hotmail.com' , 5),
('Maryam_006' , 'Md88O&%v' , 'Maryam@hotmail.com' , 6),
('Bashier_007' , 'Boj96%f' , 'Bashier@hotmail.com' , 7),
('Gadah_008' , 'G95#jb@' , 'Gadah@hotmail.com' , 8),
('Maryam_009' , 'M$kd095g' , 'Maryam@gmail.com' , 9),
('Salwa_010' , 'Xjn31&n0' , 'Salwa@gmail.com' , 10);
-- Customer Phones:
create table Customer_Phone(
CID int not null,
Cphone int ,
primary key(CID , Cphone),
constraint CID_p foreign key(CID)references Customer (CID) on update cascade on delete cascade 
);

insert into customer_phone (CID , Cphone) values 
(1 , 0594382167),
(2 , 0571843925),
(3 , 0519327482),
(4 , 0553294108),
(5 , 0551996328),
(6 , 0512398746),
(7 , 0558013245),
(8 , 0518329450),
(9 , 0555833375),
(10 , 0541878727);
-- *******************Employee***********************
create table Employee(
EID int not null auto_increment ,
Fname varchar(30) not null,
Lname varchar(30) not null,
EHours double not null ,
super_ID int ,
primary key(EID), 
constraint EID_con foreign key(super_ID) references Employee(EID)
);

insert into employee (Fname , Lname , EHours ) values
('Shahad' , 'Alghareeb' , 10.25 ), ('Jawaher' , 'Aldowerij' , 10);

insert into employee (Fname , Lname , EHours , Super_ID) values 
('Nawir' , ' Aldossary' , 6 , 1),  ('Haya' , 'Alzahim' , 5.5 , 1),
('Sadeem' , 'Aldossary' , 5.75 , 1), ('Asma' , 'Alhammuod' , 5.75 , 1),
('Fatimah' , 'Alqahtani' , 5 , 2), ('Amal' , 'Alqahtani' , 6 , 2),
('Ruba' , 'Alharbi' , 5.25 , 2), ('Habiba' , 'Alkalidi' , 5.5 , 2);
-- Employee Account:
create table Employee_Account(
Eusername varchar(30) not null,
Epassword varchar(30) not null,
email varchar(50) not null ,
EID int not null,
primary key(Eusername),
constraint EID_A foreign key(EID)references Employee (EID) on update cascade on delete cascade 
);

insert into employee_account ( Eusername , Epassword , email , EID) values
('Shahad_1001' , 'Ak05#ld' , 'Shahad@gmail.com' , 1),
('Jawaher_2002' , 'MMx3z3@#' , 'Jawaher@hotmail.com' , 2),
('Nawir_3003' , 'Kxp7&6j' , 'Nawir@gmail.com' , 3),
('Haya_4004' , 'Hg04sp2@' , 'Haya@hotmail.com' , 4),
('Sadeem_5005' , 'MMx3z3@#' , 'Sadeem@hotmail.com' , 5),
('Asma_6006' , 'A09xbf#b22' , 'Asma@hotmail.com' , 6),
('Fatimah_7007' , 'Fbx%F8d7d7' , 'Fatimah@gmail.com' , 7),
('Amal_8008' , 'fbjF$52dF@' , 'Amal@hotmail.com' , 8),
('Ruba_9009' , 'R$%64vfjc521hf' , 'Ruba@gmail.com' , 9),
('Habiba_1010' , 'Hd77b88@cvchf' , 'Habiba@gmail.com' , 10);
-- Employee Phones:
create table Employee_Phone(
EID int not null,
Ephone int ,
primary key(EID , Ephone),
constraint EID_p foreign key(EID)references Employee (EID) on update cascade on delete cascade 
);

insert into employee_phone ( EID , Ephone) values
(1 , 0518362945), (2 , 0528493567),
(3 , 0582639944),(4 , 0588846613),
(5 , 0511209634),(6 , 0589137522),
(7 , 0521768004),(8 , 0512070963),
(9 , 0513290205),(10 , 0519663500);
-- *******************Feedback***********************
create table Feedback(
CID int not null,
message longtext,
rate double ,
title varchar(20) not null,
primary key(CID , title),
constraint CID_feed foreign key(CID) references Customer(CID) on update cascade on delete cascade 
);

Alter table feedback add constraint title_type check(title IN( 'complaints' , 'complement' , 'other'));

insert into Feedback (CID , message , rate , title) values
(3 , 'thank you, for the good service' , 4.5 , 'complement'),
(5 , 'I did not like the Cake </3' , 2 , 'complaints'),
(2 , 'loved the Croissant. my new favorite bakery' , 5 ,'complement'),
(1 , 'Everything was sooo delicious' , 4.75 ,'complement'),
(4 , 'Not bad' , 3 ,'complement'),
(6 , 'The filling did not taste good ugh....' , 1 ,'complaints'),
(7 , 'the chocolate was out of this world. could you tell me where can i buy it? ' , 5 ,'other'),
(8 , 'nice' , 3.25 ,'complement'),
(9 , 'If you could add more options to the Croissant that would be great' , 3.75 ,'other'),
(10 , 'Enjoyed every bite :)' , 4 ,'complement');
-- *******************Orders*************************
create table Orders(
OrderNumber int not null auto_increment,
CID int null,
EID int null,
OrderDate date,
OTime time,
primary key(OrderNumber),
constraint CID_or foreign key (CID) references Customer (CID)on update cascade on delete cascade,
constraint EID_or foreign key (EID) references Employee (EID)on update cascade on delete cascade
);
-- order by customer with account from website 
insert into Orders (CID , OrderDate , OTime) values 
(1 , '2022-10-10' , '10:02:00'), (2 , '2022-08-23' , '12:13:01'),
(1 , '2022-10-10' , '11:30:11'), (3 , '2022-05-20' , '01:24:07'),
(3 , '2022-05-21' , '01:31:22'), (4 , '2022-07-18' , '09:58:00'),
(5 , '2022-08-23' , '03:38:10'), (2 , '2022-11-10' , '11:00:02'),
(6 , '2022-06-30' , '04:28:59'), (5 , '2022-12-01' , '10:43:09'),
(5 , '2022-12-05' , '07:00:18'), (1 , '2022-04-25' , '02:41:00'),
(7 , '2022-04-25' , '01:00:00'), (7 , '2022-04-26' , '12:30:08'),
(8 , '2022-08-23' , '10:05:20'), (9 , '2022-10-11' , '05:21:39'),
(10 , '2022-12-01' , '11:52:17');
insert into orders (CID , OrderDate , OTime) values
(10 , '2022-12-03', '11:28:00');
-- order by customer without account (Guest) from physical store (placed by employee) 
insert into Orders (EID , OrderDate , OTime) values 
(5 ,'2022-10-27' , '01:02:07'), (6 , '2022-03-05' , '12:12:18'), (7 , '2022-01-01' , '01:30:00');
-- *******************Product************************
create table product(
ProID int not  null auto_increment,
Proname varchar(35) ,
Proprice double,
Proquantity int, 
primary key(ProID)
);

Alter table product add constraint Avoidexpiration check (Proquantity <=20);

insert into product (Proname , Proprice , Proquantity) values
('Songe cake' , 100 , 7), ('Naked cake' , 75 , 5), ('Cheese cake' , 145 , 10),
('Yeast donuts', 14 , 20),('Donut holes', 13.25 , 20),
('Filled donuts', 15 , 12), ('Long Johns donuts', 14 , 20),
('Croissant plain', 10 , 20), ('Croissant zatar', 12.5 , 20),
('Croissant chedder', 15 , 15), ('Croissant phili cheese', 15 , 15),
('Garlic bread', 6.5 , 15), ('White toast', 3.5 , 20),
('Brown toast', 3.5 , 20), ('Sandwich', 21.75 , 14);
-- *******************OConsist_of********************
create table OrderConsist_of(
OrderNo int not null,
ProID int not null,
category varchar(30) ,
primary key (OrderNo , ProID),
constraint orderNo_or foreign key (OrderNo)references Orders (OrderNumber)on update cascade on delete cascade,
constraint proid_or foreign key (ProID)references Product (ProID)on update cascade on delete cascade
);

Alter table orderconsist_of add constraint CheckTheCategory check (category IN( 'Cake' , 'pastries' , 'donuts', 'Sandwich'));

insert into orderconsist_of (OrderNo , ProID , category) values
(1 , 2 ,'Cake') , (1 , 4 , 'donuts'),
(1 , 6 , 'donuts') , (2 , 8 , 'pastries'),
(2 , 9 , 'pastries') , (3 , 12 , 'pastries'), 
(3 , 15 , 'Sandwich') , (4 , 3 , 'Cake'),
(5 , 13 , 'pastries') , (5 , 10 , 'pastries'),
(5 , 5 , 'donuts') , (6 , 7 , 'donuts'),
(7 , 2 , 'Cake') , (8 , 14 , 'pastries'),
(8 , 13 , 'pastries') , (9 , 7 , 'donuts'),
(9 , 6 , 'donuts') , (10 , 11 , 'pastries'),
(10 , 8 , 'pastries') , (10 , 15 , 'Sandwich'),
(11 , 12 , 'pastries') , (12 , 3 , 'Cake'),
(13 , 3 , 'Cake') , (13 , 1 , 'Cake'),
(14 , 4 , 'donuts') , (14 , 5 , 'donuts'),
(14 , 6 , 'donuts') , (14 , 7 , 'donuts'),
(15 , 13 , 'pastries') , (16 , 9 , 'pastries'),
(17 , 15 , 'Sandwich') , (18 , 15 , 'Sandwich'),
(19 , 7 , 'donuts') , (20 , 1 , 'Cake');
-- *******************Supplier***********************
create table Supplier(
Phone_Number int not null,
SName varchar(40) not null,
EID int not null ,
primary key(SName),
constraint EID_su foreign key(EID)references Employee (EID) on update cascade on delete cascade 
);

insert into supplier (SName , Phone_Number , EID) values
('XYZ shop' , 013218404 , 1),('ABC shop' , 013952006 , 1),
('TAMIMI markets' , 013846652 , 1),('Danube markets' , 013051931 , 1),
('Farm Superstores' , 013190854 , 1),('Hyper Panda' , 013672803 , 2), 
('Lulu Hypermarket' , 013548003 , 2), ('Alosra Supermarket' , 013628079 , 2),
('Manuel market' , 013340962 , 2),('Carrefour Hypermarket' , 013726019 , 2);
-- *******************Ingredients*********************
create table Ingredients(
inID int not null auto_increment,
Inprice double ,
SName varchar(40),
Inquantity int ,
InName varchar(30),
ExDate date ,
primary key(inID),
constraint sname_in foreign key(SName) references Supplier (SName)  
);

Alter table Ingredients add constraint non_zero check (Inquantity > 0);

insert into Ingredients (Inprice , SName ,  Inquantity , InName , ExDate) values
(15 , 'ABC shop' , 200 , 'Flowr' , '2024-10-15'),
(16.5 , 'Danube markets' ,  300 , 'Oil' , '2024-05-03'),
(27.75, 'TAMIMI markets' ,  350 , 'Chocolate' , '2022-08-01'),
(19.5 , 'Danube markets' ,  150 , 'Olive oil' , '2024-10-20'),
(12.75 , 'Carrefour Hypermarket' ,  500 , 'Egg' , '2022-09-15'),
(18 , 'ABC shop' , 300 , 'Butter' , '2023-02-21'),
(10 , 'ABC shop' , 200 , 'Baking powder' , '2024-10-06'),
(36.25 , 'TAMIMI markets' , 150 , 'Vanilla syrup' , '2022-06-08'),
(30 , 'TAMIMI markets' ,  170 , 'Vanilla pawder' , '2024-10-15'),
(11 , 'XYZ shop' , 50 , 'Lettuce' , '2022-04-03'),
(20 ,'XYZ shop' ,  45 , 'Tomatoes' , '2022-04-01'),
(33.75 , 'Manuel market' , 100 , 'Chesse' , '2022-08-15'),
(39.5 , 'Farm Superstores' ,  70 , 'Bologna meat' , '2022-07-23'),
(30 , 'Alosra Supermarket' ,  60 , 'Pickles' , '2023-05-27');

insert into Ingredients (Inprice , SName ,  Inquantity , InName , ExDate) values
(8.25 , 'Lulu Hypermarket' , 273 , 'Sugar' , '2024-11-27'),
(13.5 , 'Lulu Hypermarket' , 75 , 'Zatar' , '2024-09-05'),
(18.25 , 'Hyper Panda' , 50 , 'Garlic' , '2022-04-29');

-- *******************PConsist_of********************
create table PConsist_Of(
ProID int not null,
inID int not null,
primary key(ProID , inID),
constraint proid_pc foreign key (ProID)references Product(ProID) on update cascade on delete cascade,
constraint inid_pc foreign key(inID)references Ingredients(inID) on update cascade on delete cascade
);

insert into PConsist_of (ProID , inID) values 
(1 , 1) , (1 , 5) , (1 , 7) , (1 , 8),
(2 , 1) , (2 , 5) , (2 , 7) , (2 , 2),
(3 , 1) , (3 , 5) , (3 , 7) , (3 , 6),
(4 , 1) , (4 , 4) , (4 , 9) , (4 , 15) , (4 , 3) , (4 , 5),
(5 , 1) , (5 , 4) , (5 , 9) , (5 , 15) , (5 , 3) , (5 , 5),
(6 , 1) , (6 , 4) , (6 , 9) , (6 , 15) , (6 , 3) , (6 , 5),
(7 , 1) , (7 , 4) , (7 , 9) , (7 , 15) , (7 , 3) , (7 , 5),
(8 , 1) , (8 , 2) , (8 , 6) , (8 , 5),
(9 , 1) , (9 , 2) , (9 , 6) , (9 , 5) , (9 , 16),
(10 , 1) , (10 , 2) , (10 , 6) , (10 , 5) , (10 , 12),
(11 , 1) , (11 , 2) , (11 , 6) , (11 , 5) , (11 , 12),
(12 , 1) , (12 , 2) , (12 , 6) , (12 , 5) , (12 , 17),
(13 , 1) , (13 , 4) , (13 , 7) , (13 , 5),
(14 , 1) , (14 , 4) , (14 , 7) , (14 , 5),
(15 , 10) , (15 , 11) , (15 , 12) , (15 , 13) , (15 , 14);
-- **************************************************
-- --------- is null in : orders -------------------------------
Select OrderNumber 
from orders  
where CID is Null;

-- --------- LIKE in : Employee -------------------------------
Select Fname , Lname , email  
from employee  , employee_account 
Where employee.EID = employee_account.EID and email Like '%hotmail.com';

-- --------- ORDER BY in : Product -------------------------------
Select Proname , Proquantity 
from product
order by Proquantity;

-- --------- BETWEEN in : Product -------------------------------
Select Proname , Proprice , Proquantity 
from product
Where Proprice between (
select Proprice from product where ProID=8 ) and (
select Proprice from product where ProID=6);

-- --------- UPDATE in : supplier and pconsist_of -------------------------------
Update supplier 
set Phone_number = 0595000330 
Where SName = 'Lulu Hypermarket';

update pconsist_of  
set inID = 2 
where proID = 6 and inID = 4;
-- --------- UNION in : product and Ingredients  -------------------------------
Select InName as Full_Info 
from Ingredients
union select Proname
from product;

-- --------- DELETE in : Ingredients and pconsist_of -------------------------------
Delete from ingredients  
Where inID=1;

Delete from pconsist_of 
where ProID = 7 and inID = 4;
-- --------- VIEW + JOIN + COMPUTE CLAUES in : Customer and employee -------------------------------

Create view CustomerContact_info 
as
select A.Fname , A.Lname, timestampdiff(year , A.Bdate , curdate()) as age, C.Cphone as Customer_Phone , B.email
from customer as A 
inner join customer_account as B  on B.CID = A.CID  
inner join customer_phone as C on C.CID = A.CID;

Create view EmployeeContact_info 
as
select A.Fname , A.Lname  , C.Ephone as Employee_Phone , B.email
from employee as A 
inner join employee_account as B  on B.EID = A.EID  
inner join employee_phone as C on C.EID = A.EID;

create view Super_info  
as
select A.EID, A.Fname, A.Lname, A.EHours, Salary_per_hour(EHours) as one_day_salary , B.Ephone as phone_number , D.email
from employee as A
inner join employee_phone as B on A.EID = B.EID
inner join employee_account as D on A.EID = D.EID
where A.EID = ANY( select S.EID from employee as E, employee as S
where E.super_ID=S.EID  );


create view Hardworker_emp  
as
select EID, Fname, Lname, EHours, super_ID, Salary_per_hour(EHours) as one_day_salary
from employee
where EHours > ALL(select EHours from employee where EHours<6 );

-- --------- HAVING in: Ingredients -------------------------------
select SName , count(*) as number_OfIngredient 
from ingredients
where Inquantity <100
group by SName
having  SName like '%market%' ;

-- --------- TRIGGER in : product -------------------------------
delimiter $$ 
create trigger quantity_count
after insert
on orderconsist_of for each row
begin
update product
set product.Proquantity = product.Proquantity -1
where product.ProID = new.ProID;
end;
$$ delimiter ;

-- --------- GROUP BY in : supplier -------------------------------
select EID , count(SName) as numberof_suppliers 
from supplier
group by EID;

-- --------- IN in : feedback  -------------------------------
-- 1:
select CID , fname , lname 
from customer
where CID in (
select feedback.CID
from feedback
where title = 'complaints'
);
-- 2:
select * 
from feedback
where title in ('complaints' , 'other');

-- --------- NOT IN in : Orderconsist_of -------------------------------
Select OrderNo , category 
from orderconsist_of
where category NOT IN (select category from orderconsist_of
where category='pastries');


-- --------- NOT EXISTS in : orders -------------------------------
select OrderNumber , OrderDate 
from orders
where not exists(
select * 
from employee
where orders.EID = employee.EID );

-- --------- AGGREGATION + CASE EXPRESSION in : orderconsist_of -------------------------------
select 
sum(case when category = 'Cake' then 1 else 0 end) as Cake , 
sum(case when category = 'pastries' then 1 else 0 end) as pastries,
sum(case when category = 'donuts' then 1 else 0 end) as donuts,
sum(case when category = 'Sandwich' then 1 else 0 end) as Sandwich
from orderconsist_of;

-- --------- DISTINCT + EXISTS in : orders -------------------------------
select distinct OrderDate 
from orders
where exists (
select *
from customer
where orders.CID = customer.CID);

-- --------- COMPUTE CLAUES in : ingredients -------------------------------

select round(avg(Inprice), 3)as ingredientsAverage , round(avg(proprice),3)as ProductAverage , 
if(avg(Inprice) > avg(proprice) , "loss" , "profit") as theMeasureOfSuccess
from ingredients as A , product as B, pconsist_of as C
where A.inID = C.inID and B.ProID = C.ProID ;

-- --------- FUNCTION in : employee -------------------------------
delimiter $$  
create function Salary_per_hour(hours double) returns double deterministic
begin
declare monyePerHour double;
declare salary double;
set monyePerHour = 30.25;
set salary = hours * monyePerHour;
return salary;
end;
$$ delimiter ;


-- --------- AGGREGATION  in : product and feedback-------------------------------
select proID , proname , Proquantity 
from product
where Proquantity = (
select max(Proquantity) 
from product);


select Fname , customer.CID , message , rate 
from customer , feedback
where customer.CID = feedback.CID and rate = (
select max(rate) 
from feedback);

-- to find events scheduled one week ago:
-- today is 28/4/2022

SELECT *  
FROM orders
WHERE OrderDate BETWEEN date_sub(now(), interval 1 week) AND now();


