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


DROP DATABASE datawarehouse IF EXISTS;

CREATE DATABASE datawarehouse;

CREATE SCHEMA bronze;

CREATE SCHEMA silver;
  
CREATE SCHEMA gold;
