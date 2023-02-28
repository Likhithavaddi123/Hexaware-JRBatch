
create table persons(s_Id int not null,
lastname varchar(20) not null,
firstname varchar(20),
city varchar(10),
primary key(s_Id));
create table person_orders(o_id int not null,order_no int not null,
s_id int,primary key(o_id),
foreign key(s_id) references persons(s_id));

insert into person_orders values(1,99586465,2),(2,78466588,2),(3,22334846,3),(4,57698656,1);
create table orders_check(order_id int primary key,amount int check(amount>=100));
insert into orders_check values(1,190);
