CREATE TABLE dbo.Promotions(Promotion_id varchar(50) NOT NULL PRIMARY KEY,
Promotion_code varchar(30) NOT NULL, Discount_percent varchar(25), Type_of_Item varchar(50) NOT NULL,
Start_date date, Date_of_expiry date, Item_id varchar(50) REFERENCES dbo.Item(Item_id) NOT NULL);

INSERT dbo.Promotions VALUES('P1','H26003','5%','House','20180301','20180401', 'H_123');
INSERT dbo.Promotions VALUES('P2','H626004','10%','House','20180202','20180203', 'H_145');
INSERT dbo.Promotions VALUES('P3','C626005','3%','Car','20180225','20180325', 'C_111');
INSERT dbo.Promotions VALUES('P4','C626006','5%','Car','20170102','20170220', 'C_235');
INSERT dbo.Promotions VALUES('P5','H626007','10%','House','20180410','20180415', 'H_256');
INSERT dbo.Promotions VALUES('P6','C626008','30%','Car','20180805','20180920', 'C_267');
INSERT dbo.Promotions VALUES('P7','H626009','10%','House','20180201','20180310', 'H_297');
INSERT dbo.Promotions VALUES('P8','H626010','5%','House','20180420','20180530', 'H_403');
INSERT dbo.Promotions VALUES('P9','C626011','3%','Car','20170103','20170204', 'C_271');
INSERT dbo.Promotions VALUES('P10','C626012','15%','Car','20180317','20180425', 'C_285');

select * from Promotions


