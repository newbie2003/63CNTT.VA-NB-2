create database accdata
use accdata

create table house_hold(
	id_user int not null primary key,
	username nvarchar(100),
	pass ntext,
	email varchar(100),
	address_user nvarchar(200),
	birth date,
	phonenumber varchar(11)
)
create table employee(
	id_employee int not null primary key,
	username nvarchar(100),
	pass ntext,
	email varchar(100),
	address_manager nvarchar(200),
	birth date,
	phonenumber varchar(11)
)
create table admin(
	admin_name nvarchar(100) not null primary key,
	pass ntext,
	id_employee int references employee(id_employee)
)
create table electric_bill(
	id_user int,
	id_employee int,
	id_bill int not null primary key,
	number_used int,
	money_permonth money,
	per_month date,
	foreign key (id_user) references house_hold(id_user),
	foreign key (id_employee) references employee(id_employee)
)

