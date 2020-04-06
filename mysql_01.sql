use mydata;
show tables;
desc mytable;
insert into mytable values(1,'i7','7700','Kaby Lake');
select * from mytable;   
insert into mytable(name,modelnumber,series) values('i7','7700k','Kaby lake');
select * from mytable;
insert into mytable(name,modelnumber,series) values('i7','9700k','Kapy Lake');
insert into mytable(name,modelnumber,series) values('i5','9400f','Kapy Lake');
insert into mytable(name,modelnumber,series) values('i3','9100f','Kapy Lake');
insert into mytable(name,modelnumber,series) values('i7','9700f','Kapy Lake');
insert into mytable(name,modelnumber,series) values('i9','9900k','Kapy Lake');
select * from mytable;
select name as cpu_name from mytable;
desc mytable;
select * from mytable where id <3 or name = 'i7';
select id, name from mytable where name LIKE '%7%';
select * from mytable where series like '_____Lake' or name ='i7';
select * from mytable limit 2,2;
select id,name from mytable
where id < 4 and name like '%i%'
order by name desc
limit 2;
select * from mytable where modelnumber like '7700%';
select * from mytable where name = 'i7';
select * from mytable where series like '%Lake' limit 1;

alter table mytable change column modelnumber model_num varchar(20) not null;
alter table mytable change column series model_type varchar(10) not null;
alter table mytable modify column name varchar(50) not null;
select * from mytable;
update mytable set name ='i3', model_num='5500k' where id =3;
update mytable set model_type = 'Kaby Lake' where id >1;
delete from mytable WHERE id =1;
SELECT * FROM mytable;
ALTER TABLE mytable ADD column lowest_price INT UNSIGNED ;
DESC mytable;
ALTER TABLE mytable modify column id int(10) UNSIGNED NOT NULL auto_increment;
ALTER TABLE mytable modify column name varchar(20) not null;
ALTER TABLE mytable modify column model_num varchar(10) not null;
ALTER TABLE mytable modify column model_type varchar(10) not null;
DESC mytable;
update mytable set lowest_price = 179000 where id = 2;
update mytable set lowest_price = 473940 where id = 3;
update mytable set lowest_price = 79750 where id = 4;
update mytable set lowest_price = 620750 where id = 5;
update mytable set lowest_price = 219740 where id = 6;
select name,model_num FROM mytable WHERE lowest_price <=300000;
SELECT * FROM mytable where lowest_price >=400000;
