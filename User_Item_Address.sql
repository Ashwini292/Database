CREATE TABLE dbo.User_Item_Address(Address_id int NOT NULL 
REFERENCES dbo.Address(Address_id),
Address_type varchar(50) NOT NULL, 
User_id int NOT NULL,
Item_id varchar(50) NOT NULL);

ALTER TABLE User_Item_Address ADD CONSTRAINT F0 FOREIGN KEY(User_id) 
REFERENCES dbo.UserDetails(User_id);

INSERT dbo.User_Item_Address VALUES('23','House Address','2903','H_123');
INSERT dbo.User_Item_Address VALUES('11','House Address','2903','H_145');
INSERT dbo.User_Item_Address VALUES('36','Personal Address','2903','C_111');
INSERT dbo.User_Item_Address VALUES('36','Personal Address','2903','C_235');
INSERT dbo.User_Item_Address VALUES('17','House Address','1345','H_256');
INSERT dbo.User_Item_Address VALUES('29','Personal Address','1345','C_267');
INSERT dbo.User_Item_Address VALUES('31','House Address','2238','H_297');
INSERT dbo.User_Item_Address VALUES('13','House Address','2238','H_403');
INSERT dbo.User_Item_Address VALUES('67','Personal Address','2238','C_271');
INSERT dbo.User_Item_Address VALUES('67','Personal Address','2238','C_285');

select * from dbo.User_Item_Address