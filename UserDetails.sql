USE Group_2_Test;
 
CREATE TABLE dbo.UserDetails(User_id int NOT NULL,
 UserName varchar(50),
 FirstName varchar(40), LastName varchar(40),
 DOB Date, Phone varchar(20), Type_of_User varchar(25));

--DROP TABLE dbo.UserDetails;

ALTER TABLE dbo.UserDetails ADD CONSTRAINT P1 Primary Key(User_id);

ALTER TABLE dbo.UserDetails ADD CONSTRAINT F4 Foreign Key(UserName) 
REFERENCES dbo.Login(Username);

ALTER TABLE dbo.UserDetails ALTER COLUMN Type_of_User varchar(50) NOT NULL;

ALTER TABLE dbo.UserDetails ALTER COLUMN Phone varchar(20) NOT NULL;

INSERT dbo.UserDetails
VALUES(2910,'SAshwathi','Ashwathi','Senthil','19931029',9810935560,'rent');

INSERT dbo.UserDetails
VALUES(2902,'PPavithra','Pavithra','Pranesh','19931029',9810935560,'buy');

INSERT dbo.UserDetails
VALUES(2903,'MPranav','Pranav','Mohan','19931029',9810935560,'sell');

INSERT dbo.UserDetails
VALUES(2904,'NPreethi','Preethi','Narayan','19931029',9810935560,'rent');

INSERT dbo.UserDetails
VALUES(2905,'SSachin','Sachin','Sunder','19931029',9810935560,'buy');

INSERT dbo.UserDetails
  VALUES ('1102','SRekha', 'Rekha', 'Saribala', '08-11-1978','4347895678','rent')

  
  INSERT dbo.UserDetails
  VALUES ('1345','BAshish', 'Ashish', 'Bhumireddy', '07-10-1984','4344445609','sell')

  
  INSERT dbo.UserDetails
  VALUES ('2238','PSujitha', 'Sujitha', 'Pagidela', '06-04-1991','5717895456','sell')

  
  INSERT dbo.UserDetails
  VALUES ('1190','SReema', 'Reema', 'Saribala', '10-01-1990','5267888802','rent')

    INSERT dbo.UserDetails
  VALUES ('2110','SPriyanka', 'Priyanka', 'Sharma', '12-08-1980','527778802','rent')

select * from UserDetails;

