USE Group_2_Test;

CREATE TABLE dbo.Item(Item_id varchar(50) NOT NULL PRIMARY KEY,
item_code int NOT NULL, item_quantity int NOT NULL, Type_of_Item varchar(50) NOT NULL,
Num_of_bhk int, Type_of_house varchar(50), Num_of_bath varchar(50),
Make varchar(50), Model varchar(50), Year date NOT NULL, Type_of_car varchar(50));

CREATE FUNCTION Checkitem (@Itemtype varchar(50))
RETURNS varchar
AS
BEGIN
   DECLARE @type varchar(50);
   SELECT @type = Type_of_Item
          FROM dbo.Item
		  WHERE Type_of_Item = @Itemtype
          AND @Itemtype='Mobile';
   RETURN @type;
END;

ALTER TABLE dbo.Item ADD CONSTRAINT HouseCar CHECK (dbo.Checkitem(Type_of_Item)='Mobile');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item,Num_of_bhk,Type_of_house, Num_of_bath,Year)VALUES('H_123', 3256,1, 'House', 4, 'Individual House', 3,'2005');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item,Num_of_bhk,Type_of_house, Num_of_bath,Year)VALUES('H_256', 4579,1, 'House', 4, 'Individual House', 3,'2000');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item,Num_of_bhk,Type_of_house, Num_of_bath,Year)VALUES('H_145', 2579,2, 'House', 0, 'Studio', 1,'2005');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item,Num_of_bhk,Type_of_house, Num_of_bath,Year)VALUES('H_297', 5679,1, 'House', 2, 'Apartment', 2,'2010');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item,Num_of_bhk,Type_of_house, Num_of_bath,Year)VALUES('H_403', 6080,1, 'House', 2, 'Apartment', 1,'2012');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item, Make, Model, Year,Type_of_car)VALUES('C_235', 256,1, 'Car', 'BMW', 'X5', '2014','SUV');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item, Make, Model, Year,Type_of_car)VALUES('C_267', 157,1, 'Car', 'Ford', 'Mustang', '2017','Convertible');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item, Make, Model, Year,Type_of_car)VALUES('C_271', 347,1, 'Car', 'Chevrolet', 'Cruze', '2016','Sedan');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item, Make, Model, Year,Type_of_car)VALUES('C_285', 376,1, 'Car', 'Audi', 'A4', '2015','Sedan');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item, Make, Model, Year,Type_of_car)VALUES('C_111', 344,1, 'Car', 'Toyota', 'Highlander', '2016','SUV');

INSERT dbo.Item(Item_id, item_code, item_quantity,
Type_of_Item, Make, Model, Year,Type_of_car)VALUES('M_001', 350,1, 'Mobile', 'Apple', 'Iphone', '2016','8');


select * from dbo.Item ;

CREATE PROCEDURE GETITEMDETAILS
@Items nvarchar(20),
@House nvarchar(20)
AS
BEGIN
SELECT item_code,Type_of_Item, Type_of_house, Num_of_bhk
FROM dbo.Item
WHERE Type_of_Item= @Items
AND Type_of_house= @House
END

DECLARE @Type_of_Item varchar(20);
DECLARE @Type_of_house varchar(20);
SET @Type_of_Item='House';
SET @Type_of_house='Individual House';
EXEC GETITEMDETAILS @Type_of_Item, @Type_of_house;

