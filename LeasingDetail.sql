
CREATE TABLE dbo.LeasingDetails(Lease_id varchar(30) NOT NULL PRIMARY KEY,
 Owned_date date, Lease_start_date date, Lease_end_date date,
  Type_of_item varchar(50), Item_id varchar(50) NOT NULL, User_id int NOT NULL);

    ALTER TABLE dbo.LeasingDetails ADD CONSTRAINT F11 Foreign Key(Item_id) 
REFERENCES dbo.Item(Item_id);
  ALTER TABLE dbo.LeasingDetails ADD CONSTRAINT F12 Foreign Key(User_id) 
REFERENCES dbo.UserDetails(User_id);


  INSERT dbo.LeasingDetails(Lease_id,Owned_date,Type_of_item,Item_id,User_id)
  values ('L_167','20180325','House','H_123',2902);

INSERT dbo.LeasingDetails(Lease_id,Owned_date,Type_of_item,Item_id,User_id)
  values ('L_245','20180905','Car','C_267',2905);

INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_101','20180310','20190406','House','H_145',1102);

INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_121','20180310','20190406','Car','C_111',1102);

  INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_351','20170110','20180216','Car','C_271',1190);

  INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_420','20170110','20180216','Car','C_235',1190);

  INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_252','20180427','20190501','House','H_403',2110);

  INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_590','20180427','20190501','House','H_256',2901);

  INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_550','20180330','20190414','Car','C_285',2901);

    INSERT dbo.LeasingDetails(Lease_id,Lease_start_date,Lease_end_date,Type_of_item,Item_id,User_id)
  values ('L_311','20180220','20190323','House','H_297',2904);


  select * from LeasingDetails;