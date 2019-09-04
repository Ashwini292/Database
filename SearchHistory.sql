USE Group_2_Test

CREATE TABLE dbo.SearchHistory(Search_id int NOT NULL PRIMARY KEY,
 User_id int, item_code int, Type_of_Item varchar(50));

  ALTER TABLE dbo.SearchHistory ADD CONSTRAINT F5 Foreign Key(User_id) 
REFERENCES dbo.UserDetails(User_id);
  ALTER TABLE dbo.SearchHistory ADD CONSTRAINT FK Foreign Key(item_code) 
REFERENCES dbo.Item(item_code);
  ALTER TABLE dbo.SearchHistory ADD CONSTRAINT FK1 Foreign Key(Type_of_Item) 
REFERENCES dbo.Item(Type_of_Item);

INSERT dbo.SearchHistory VALUES('1','2903','344','Car');
INSERT dbo.SearchHistory VALUES('2','2903','256','Car');
INSERT dbo.SearchHistory VALUES('3','1345','157','Car');
INSERT dbo.SearchHistory VALUES('4','2238','347','Car');
INSERT dbo.SearchHistory VALUES('5','2238','376','Car');
INSERT dbo.SearchHistory VALUES('6','2903','3256','House');
INSERT dbo.SearchHistory VALUES('7','2903','2579','House');
INSERT dbo.SearchHistory VALUES('8','1345','4579','House');
INSERT dbo.SearchHistory VALUES('9','2238','5679','House');
INSERT dbo.SearchHistory VALUES('10','2238','6080','House');

Select * from dbo.SearchHistory;

CREATE VIEW dbo.vwSearchHistory
AS
SELECT	UserName,item_code,Type_of_item,Type_of_User,Num_of_Stars,Comment  FROM (dbo.UserDetails as u
INNER JOIN  
dbo.SearchHistory AS s ON s.User_id=u.User_id )
INNER JOIN ReviewRating AS r ON s.item_code=r.Reviewed_on
WHERE s.Type_of_item= 'House' AND Comment<>'Poor' ;


select * from dbo.vwSearchHistory;