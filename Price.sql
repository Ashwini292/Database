USE Group_2_Test;

CREATE TABLE dbo.Price(Price_id varchar(25) NOT NULL PRIMARY KEY,
 Total_amount int, Intstallment_type varchar(50), Installment_amount int,
  Type_of_Item varchar(50), Item_id varchar(50) NOT NULL, Priced_date date);

ALTER TABLE dbo.Price ADD CONSTRAINT F2 Foreign Key(Item_id) 
REFERENCES dbo.Item(Item_id);

INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR2 ','Monthly ','1800','House','H_145','20180220');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR3 ','Quaterly','3000','Car  ','C_111','20180302');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR4 ','Monthly ','5000','Car  ','C_235','20170105');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR5 ','Quaterly','6000','House','H_256','20180418');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR7 ','Monthly' ,'5000','House','H_297','20180206');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR8 ','Monthly' ,'800' ,'House','H_403','20180425');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR9 ','Monthly' ,'980' ,'Car  ','C_271','20170105');
  INSERT INTO dbo.Price(Price_id,Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR10','Quaterly','1300','Car  ','C_285','20180323');

INSERT INTO dbo.Price(Price_id,
 Total_amount, Intstallment_type, Installment_amount,
  Type_of_Item, Item_id, Priced_date) VALUES('PR1',100000,'Quaterly','4500','House','H_123','20180310');
  
INSERT INTO dbo.Price(Price_id,
 Total_amount,Type_of_Item, Item_id, Priced_date) VALUES('PR6 ',7000,'Car','C_267','20180817');

select * from dbo.Price;