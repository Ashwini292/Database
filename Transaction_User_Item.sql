USE Group_2_Test;

CREATE TABLE Transaction_User_Item(User_item_id varchar(50) NOT NULL PRIMARY KEY,
Item_id varchar(50) REFERENCES dbo.Item(Item_id)NOT NULL, Type_of_transaction varchar(35),
User_id int NOT NULL REFERENCES dbo.UserDetails(User_id),
Transaction_id  varchar(50) NOT NULL REFERENCES dbo.TransactionDetails(Transaction_id),
Current_user_item_possession_status varchar(150));

INSERT dbo.Transaction_User_Item VALUES('UID1','H_123','Paypal','2902','T1','Pavithra' );
INSERT dbo.Transaction_User_Item VALUES('UID2','H_145','Credit','1102','T2','Rekha');
INSERT dbo.Transaction_User_Item VALUES('UID3','C_111','Credit','1102','T3','Rekha');
INSERT dbo.Transaction_User_Item VALUES('UID4','C_235','Google Pay','2110','T4','Priyanka');
INSERT dbo.Transaction_User_Item VALUES('UID5','H_256','Paypal','2901','T5','Ashwathi');
INSERT dbo.Transaction_User_Item VALUES('UID6','C_267','Paypal','2905','T6','Sachin');
INSERT dbo.Transaction_User_Item VALUES('UID7','H_297','Google pay','2904','T7','Preethi');
INSERT dbo.Transaction_User_Item VALUES('UID8','H_403','Credit','2110','T8','Priyanka');
INSERT dbo.Transaction_User_Item VALUES('UID9','C_271','Credit','1190','T9','Reema');
INSERT dbo.Transaction_User_Item VALUES('UID10','C_285','Credit','2901','T10','Ashwathi');

select * from dbo.Transaction_User_Item;

CREATE VIEW dbo.vwTransaction_User_Item
AS
SELECT u.User_id,u.Item_id,Discount_percent, Type_of_transaction from (dbo.User_Item_Address as u
INNER JOIN Promotions as p
ON p.Item_id=u.Item_id)
INNER JOIN Transaction_User_Item as t
ON t.Item_id=u.Item_id;

select * from dbo.vwTransaction_User_Item;