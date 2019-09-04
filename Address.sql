
CREATE TABLE dbo.Address(Address_id int NOT NULL PRIMARY KEY,
 Line_1 varchar(100) NOT NULL,
 Line_2 varchar(100) NOT NULL, 
 City varchar(50) NOT NULL,
 State varchar(50) NOT NULL,
 Country varchar(50) NOT NULL)

INSERT dbo.Address VALUES(29,'267 Taylor Street','Apt209','Seattle','WA 98109','US');

INSERT dbo.Address VALUES(12,'591 Grand Avenue','Apt306','San Jose','CA 92069','US');

INSERT dbo.Address VALUES(14,'152 Walt Whitman Lane','Apt420','Houston','TX 79912','US');

INSERT dbo.Address VALUES(16,'709 Spring Street','Apt300','Vancouver','WA 98110','US');

INSERT dbo.Address VALUES(25,'3141 Crow Canyon Place','Apt144','Los Angeles','CA 94583','US');

INSERT dbo.Address VALUES(36,'801 Spring Street','Apt902','Seattle','WA 98104','US');
INSERT dbo.Address VALUES(67,'1221 Harbor Steps','Apt2-1401','Seattle','WA 98101','US');
INSERT dbo.Address VALUES(54,'800 NE Oregon St','Apt809','Portland','OR 97002','US');
INSERT dbo.Address VALUES(89,'727 Metker St','Apt1301','Irving','TX 75062','US');
INSERT dbo.Address VALUES(63,'1491 Westwood Blvd','Apt401','Los Angeles','CA 90001','US');

INSERT dbo.Address VALUES(23,'NW Fullner Ct','9297','Portland','OR 97229','US');
INSERT dbo.Address VALUES(31,'Wrangler Way','10624','Corona','CA 92883','US');
INSERT dbo.Address VALUES(11,'N Moore Ave','Apt575','Portland','OR 97217','US');
INSERT dbo.Address VALUES(13,'820 Lenora Street','Apt207','Seattle','WA 98121','US');
INSERT dbo.Address VALUES(17,'40809 Oakwoods Ln','Apt408','Shaver Lake','CA 93664','US');

select * from Address