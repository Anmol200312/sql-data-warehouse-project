/*
======================================================================
CREATE DATABASE AND SCHEMAS
======================================================================
Script Purpose:
    This script create new databases named 'datawarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated . Additionally, the script sets up three schemas
    within the databases: 'bronze', 'silver' and 'gold'.

WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists;
    All data in this database will be permanently  deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/



USE master;
GO

-- DROP and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

-- CREATE the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;

-- CREATE SCHEMA

GO
CREATE SCHEMA bronze;

GO
CREATE SCHEMA silver;

GO 
CREATE SCHEMA gold;



