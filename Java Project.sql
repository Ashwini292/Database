use Car_Inventory;

select distinct Make, Model,Category from Vehicle as v
LEFT JOIN Inventory AS i 
ON v.Vehicleid=i.Vehicleid
where Dealerid='D10';
select * from Inventory;
delete from Inventory where Vehicleid='null';
select * from vehicle where Vehicleid='v53836';
delete from vehicle where Vehicleid='null';
update Vehicle set Type='SUV',SeatCount='4',Make='Audi' where Vehicleid='v42';
Insert into vehicle values('V41','Used','2018','Audi','A4','Sedan','5','30','$40,492','98109');
Insert into vehicle values('V42','Used','2018','Toyota','Corolla','Sedan','5','25','$30,500','98109');


select * from Inventory where Dealerid='D1';
Insert into Inventory values('D18','V42');
Insert into Inventory values('D18','V41');


