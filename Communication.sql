USE Group_2_Test

CREATE TABLE Communication(Communication_id varchar(20) NOT NULL PRIMARY KEY,
Sent_to int NOT NULL,
Sent_by int NOT NULL,
Sent_time datetime,
Content varchar(500));

ALTER TABLE Communication ALTER COLUMN Sent_to varchar(25);

ALTER TABLE Communication ALTER COLUMN Sent_by varchar(25);

INSERT dbo.Communication VALUES('C1','2903','2901','20180320','I would like to rent the car, any cars available');
INSERT dbo.Communication VALUES('C2','2901','2903','20180320','Yes, there are cars available, please book your required car, let me know if any queries');
INSERT dbo.Communication VALUES('C3','1345','2902','20180201','I would like to buy the House, when can I come have a look');
INSERT dbo.Communication VALUES('C4','2902','1345','20180201','Please let me know at what time you will be free this weekend');
INSERT dbo.Communication VALUES('C5','1345','2902','20180201','saturday noon would be perfect');
INSERT dbo.Communication VALUES('C6','2902','1345','20180201','Thank You, I will see you at 12pm');
INSERT dbo.Communication VALUES('C7','2238','1102','20180210','I would like to rent the flat and I would like to pay in monthly installments ');
INSERT dbo.Communication VALUES('C8','1102','2238','20180210','No Problem, you can collect the house keys from the leasing office');
INSERT dbo.Communication VALUES('C9','2238','1102','20180210','Also I would like to rent the car from march,an di would like to pay the amount quaterly');
INSERT dbo.Communication VALUES('C10','1102','2238','20180201','Yes, That can be arranged as well');

select * from Communication;

CREATE VIEW dbo.vwUserCommunication5
AS
SELECT Username,User_id,Content from dbo.UserDetails as u
INNER JOIN  
dbo.Communication as c
on c.Sent_by=u.User_id where c.Sent_to='1345' OR c.Sent_by='1345'

select * from dbo.vwUserCommunication5;



