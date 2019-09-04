use Car_Inventory;

select * from Vehicle;
select * from Dealer;
delete from vehicle where year=0 and SeatCount=0;

update Vehicle set Category='New',Type='Sedan' 
where Vehicleid='V40';

alter table Vehicle drop column Zipcode;

select v.Vehicleid , v.Category, v.Make, v.Model
 from dbo.inventory i
 join dbo.Dealer d on i.Dealerid=d.Dealerid
 join dbo.Vehicle v on i.Vehicleid= v.vehicleid 
 where d.Dealerid ='D1';