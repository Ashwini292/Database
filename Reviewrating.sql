Use Group_2_Test;

CREATE TABLE dbo.ReviewRating(Review_id varchar(50) NOT NULL PRIMARY KEY,
Reviewed_by int not null REFERENCES dbo.UserDetails(User_id) , Reviewed_on int , Review_date date,
Comment varchar(50), Num_of_Stars int);

INSERT dbo.ReviewRating VALUES('R1','1102','2579','20190419','Good','3');
INSERT dbo.ReviewRating VALUES('R2','1190','344','20190419','Decent','2');
INSERT dbo.ReviewRating VALUES('R3','2110','256','20180401','Very Good','4');
INSERT dbo.ReviewRating VALUES('R4','2901','4579','20190601','Poor','1');
INSERT dbo.ReviewRating VALUES('R5','2904','5679','20190506','Good','3');
INSERT dbo.ReviewRating VALUES('R6','2902','3256','20180402','Excellent','5');
INSERT dbo.ReviewRating VALUES('R7','2905','157','20181003','Very Good','4');
INSERT dbo.ReviewRating VALUES('R8','1190','347','20180401','Excellent','5');
INSERT dbo.ReviewRating VALUES('R9','2901','376','20190601','Very Good','4');
INSERT dbo.ReviewRating VALUES('R10','2904','6080','20190529','Poor','1');


SELECT * FROM ReviewRating;
