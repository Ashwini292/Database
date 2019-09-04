USE Group_2_Test;

CREATE TABLE dbo.TransactionDetails(Transaction_id varchar(50) NOT NULL PRIMARY KEY,
Type_of_transaction varchar(35),
Transaction_user_id int NOT NULL REFERENCES dbo.UserDetails(User_id),
Transaction_amount float NOT NULL, Transaction_date date NOT NULL,
Transaction_frequency varchar(50), Insurance_amount float, Tax float,
Total_transac_amount as (Transaction_amount+Tax),
Price_id varchar(25) REFERENCES dbo.Price(Price_id),
Promotion_id varchar(50) REFERENCES dbo.Promotions(Promotion_id),Item_id varchar(50) REFERENCES dbo.Item(Item_id));


INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T1 ','Paypal	  ','2902','4275 ','20180310','Quaterly','2500', '42.75','PR1 ','P1 ','H_123' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T2 ','Credit	  ','1102','1620 ','20180220','Monthly ','500','16.20','PR2 ','P2 ','H_145' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T3 ','Credit	  ','1102','2910 ','20180302','Quaterly','1000','29.10','PR3 ','P3 ','C_111' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T4 ','Google Pay','2110','475  ','20170105','Monthly ','100', '4.75','PR4 ','P4 ','C_235' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T5 ','Paypal    ','2901','5400 ','20180418','Quaterly','1000', '54','PR5 ','P5 ','H_256' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T7 ','Google pay','2904','4500 ','20180206','Monthly ','700','45','PR7 ','P7 ','H_297' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T8 ','Credit 	  ','2110','760  ','20180425','Monthly ','150','7.60','PR8 ','P8 ','H_403' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T9 ','Credit	  ','1190','950.6','20170105','Monthly ','200.6','9.50','PR9 ','P9 ','C_271' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T10','Credit 	  ','2901','1105 ','20180323','Quaterly','400', '11.05','PR10','P10','C_285' );
INSERT dbo.TransactionDetails (Transaction_id,Type_of_transaction,Transaction_user_id,Transaction_amount,Transaction_date,
Transaction_frequency,Insurance_amount,Tax,Price_id,Promotion_id,Item_id)VALUES('T6','Paypal','2905','4900','20180817','---Total Amount-----','2000','49','PR6','P6','C_267' );

SELECT * from dbo.TransactionDetails;


CREATE FUNCTION TTAmount(@t_id varchar(50))
RETURNS float
AS
BEGIN
DECLARE @amount float=
(SELECT (Transaction_amount+Tax) from TransactionDetails
WHERE Transaction_id=@t_id);
SET @amount= ISNULL(@amount,0);
RETURN @amount;
END;













