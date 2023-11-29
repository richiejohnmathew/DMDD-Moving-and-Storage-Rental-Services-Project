
USE DMDD_FINAL_PROJECT;
GO

-- [Your existing table creation scripts go here]

-- 1. Create a master key for the database
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'YourStrongPassword123!';
GO

-- 2. Create a certificate protected by the master key
CREATE CERTIFICATE DataProtectionCertificate
WITH SUBJECT = 'Data Encryption';
GO

-- 3. Create symmetric keys for Customer and Card tables
CREATE SYMMETRIC KEY SymKey_CustomerData
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE DataProtectionCertificate;
GO

CREATE SYMMETRIC KEY SymKey_CardData
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE DataProtectionCertificate;
GO


-- ALTER TABLE Card
-- ADD EncryptedCardNumber VARBINARY(MAX);
-- GO

-- 5. Encrypt the data in Customer and Card tables
OPEN SYMMETRIC KEY SymKey_CustomerData
DECRYPTION BY CERTIFICATE DataProtectionCertificate;


UPDATE Customer
SET 
    [Password] = EncryptByKey(Key_GUID('SymKey_CustomerData'), [Password]);
GO

CLOSE SYMMETRIC KEY SymKey_CustomerData;
GO

OPEN SYMMETRIC KEY SymKey_CardData
DECRYPTION BY CERTIFICATE DataProtectionCertificate;

UPDATE [Card]
SET CardNumber = EncryptByKey(Key_GUID('SymKey_CardData'), CardNumber);
GO

UPDATE BankAccount
SET BankAccountNumber = EncryptByKey(Key_GUID('SymKey_CardData'), BankAccountNumber);
GO

CLOSE SYMMETRIC KEY SymKey_CardData;
GO
