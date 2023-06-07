create database MY_SELF
use MY_SELF
create table Users(Id int primary key identity(1,1),FirstName varchar(100),
LastName varchar(100),SId int foreign key references Users(Id),CId int foreign key 
references Users(Id),Address varchar(100))
drop table Users
create table Countries(Id int primary key identity(1,1),CountryName varchar(100),
Code varchar(100))
create table States(Id int primary key identity(1,1),StateName varchar(100),Code varchar(100))
select * from Users
select * from  States
select * from  Countries
insert into States values('Telangana','t')
insert into Countries values('India','i')
insert into Users values('Ramya','Bingi',1,1,'Sircilla')
create procedure CInsertValues @CountryName varchar(100),@Code varchar(100)
as
begin
insert into Countries values(@CountryName,@Code)
end
exec CInsertValues 'India','435'

create procedure stateInsertValues @StateName varchar(100),@Code varchar(100)
as
begin
insert into States values(@StateName,@Code)
end
exec stateInsertValues

create procedure UserInsertValues @FirstName varchar(100),@LastName varchar(100),@SId int,
@CId int,@Address varchar(100)
as
begin
insert into Users values(@FirstName,@LastName,@SId,@CId,@Address)
end
exec UserInsertValues



create procedure CUpdateValues @Id int , @CountryName varchar(100),@Code varchar(100)
as
begin
Update  Countries set CountryName=@CountryName,Code=@Code where Id=@Id
end
exec CUpdateValues

create procedure StateUpdateValues @Id int , @StateName varchar(100),@Code varchar(100)
as
begin
Update  States set StateName=@StateName,Code=@Code where Id=@Id
end
exec StateUpdateValues

create procedure UsersUpdateValues @Id int ,  @FirstName varchar(100),@LastName varchar(100),@SId int,
@CId int,@Address varchar(100)
as
begin
Update  Users set CountryName=@CountryName,Code=@Code where Id=@Id
end
exec CUpdateValues


create procedure CDeletevalues @Id int
as
begin
delete from Countries  where Id=@Id
end
exec CDeletevalues

create procedure StateDeletevalues @Id int
as
begin
delete from States  where Id=@Id
end
exec StateDeletevalues

create procedure UsersDeletevalues @Id int
as
begin
delete from Users  where Id=@Id
end
exec UsersDeletevalues



create procedure CGetvalues
as
begin
select * from Countries
end
exec CGetvalues


create procedure StateGetvalues
as
begin
select * from States
end
exec StateGetvalues
create procedure UserGetvalues
as
begin
select FirstName,LastName,StateName,CountryName,Address from
Users u join Countries c on c.Id=u.CId inner join States s on s.Id=u.SId
end
exec UserGetvalues





