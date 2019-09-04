USE Group_2_Test;

CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'Test_P@sswOrd';

-- Create certificate to protect symmetric key
CREATE CERTIFICATE LoginCertificate
WITH SUBJECT = 'AdventureWorks Test Certificate',
EXPIRY_DATE = '2050-12-31';

-- Create symmetric key to encrypt data
CREATE SYMMETRIC KEY LoginSymmetricKey
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE LoginCertificate;

-- Open symmetric key
OPEN SYMMETRIC KEY LoginSymmetricKey
DECRYPTION BY CERTIFICATE LoginCertificate;

CREATE TABLE dbo.Login(Username varchar(50) NOT NULL PRIMARY KEY, 
Email varchar(100), EncryptedPassword varbinary(300));



INSERT INTO dbo.Login  (Username, Email, EncryptedPassword)
VALUES('PPavithra','Pavithrapranesh@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass1L')));

INSERT INTO dbo.Login  
VALUES('SAshwathi','Ashwathi28@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass2L')));

INSERT INTO dbo.Login  
VALUES('MPranav','Pranav@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass3L')));


INSERT INTO dbo.Login  
VALUES('NPreethi','Preethi@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass4L')));

INSERT INTO dbo.Login  
VALUES('SSachin','Sachin@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass5L')));

INSERT INTO dbo.Login  (Username, Email, EncryptedPassword)
VALUES('SRekha','rekha.saribala@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass6L')));

INSERT INTO dbo.Login  (Username, Email, EncryptedPassword)
VALUES('BAshish','ashish.bhumireddy@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass7L')));

INSERT INTO dbo.Login  (Username, Email, EncryptedPassword)
VALUES('PSujitha','sujitha.pagidela@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass8L')));

INSERT INTO dbo.Login  (Username, Email, EncryptedPassword)
VALUES('SReema','reema.saribala@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass9L')));

INSERT INTO dbo.Login  (Username, Email, EncryptedPassword)
VALUES('SPriyanka','priyanka.sharma@gmail.com',EncryptByKey(Key_GUID(N'LoginSymmetricKey'),convert(varbinary,'pass10L')));

select * from dbo.Login;


