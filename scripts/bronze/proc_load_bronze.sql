/*
================================================================================================================
Stored Procedure: Load bronze layer (source -> bronze)
================================================================================================================
Script purpose:
This stored procedure loads data into the 'bronze schema' into external csv files.
It performs the following actions:
- Truncate the bronze table before loading the data.
- Uses the 'BULK INSERT' command to load the data from csv file to bronze tables.


Parameters:
None
This stored procedure does not accept any parameters or return any values.

Usage example:
EXEC bronze.load_bronze;
=================================================================================================================
*/


EXEC bronze.load_bronze;

CREATE OR ALTER PROCEDURE bronze.load_bronze AS 
BEGIN

DECLARE @start_time DATETIME,@end_time DATETIME,@batch_start_time DATETIME,@batch_end_time DATETIME;
BEGIN TRY

SET @batch_start_time = GETDATE();
PRINT '==========================================================================================';
PRINT 'Loading bronze layer';
PRINT '==========================================================================================';

PRINT '------------------------------------------------------------------------------------------';
PRINT 'Loading crm tables' ;
PRINT '------------------------------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT'>>Truncating table:bronze.crm_cust_info';
TRUNCATE TABLE bronze.crm_cust_info;

PRINT'>>Inserting data into:bronze.crm_cust_info';
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\laptop\Documents\DataWarehouse_project\cust_info.csv'
WITH(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
SET @end_time = GETDATE();
PRINT 'Load Duration:' + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) + 'seconds';
PRINT '------------------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT'>>Truncating table:bronze.crm_prd_info';
TRUNCATE TABLE bronze.crm_prd_info;

PRINT'>>Inserting data into:bronze.crm_prd_info';
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\laptop\Documents\DataWarehouse_project\prd_info.csv'
WITH(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
SET @end_time = GETDATE();
PRINT 'Load Duration:' + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) + 'seconds';
PRINT '------------------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT'>>Truncating table:bronze.crm_sales_details';
TRUNCATE TABLE bronze.crm_sales_details;

PRINT'>>Inserting data into:bronze.crm_sales_details';
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\laptop\Documents\DataWarehouse_project\sales_details.csv'
WITH(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
SET @end_time = GETDATE();
PRINT 'Load Duration:' + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) + 'seconds';
PRINT '------------------------------------------------------------------------------';

PRINT '------------------------------------------------------------------------------------------';
PRINT 'Loading erp tables' ;
PRINT '------------------------------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT'>>Truncating table:bronze.erp_cust_az12';
TRUNCATE TABLE bronze.erp_cust_az12;

PRINT'>>Inserting data into:bronze.erp_cust_az12';
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\laptop\Documents\DataWarehouse_project\cust_az12.csv'
WITH(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
SET @end_time = GETDATE();
PRINT 'Load Duration:' + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) + 'seconds';
PRINT '------------------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT'>>Truncating table:bronze.erp_loc_a101';
TRUNCATE TABLE bronze.erp_loc_a101;

PRINT'>>Inserting data into:bronze.erp_loc_a101';
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\laptop\Documents\DataWarehouse_project\loc_a101.csv'
WITH(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
SET @end_time = GETDATE();
PRINT 'Load Duration:' + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) + 'seconds';
PRINT '------------------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT'>>Truncating table:bronze.erp_px_cat_g1v2';
TRUNCATE TABLE bronze.erp_px_cat_g1v2;

PRINT'>>Inserting data into:bronze.erp_px_cat_g1v2';
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\laptop\Documents\DataWarehouse_project\px_cat_g1v2.csv'
WITH(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
SET @end_time = GETDATE();
PRINT 'Load Duration:' + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) + 'seconds';
PRINT '------------------------------------------------------------------------------';


SET @batch_end_time = GETDATE();
PRINT '=============================================================================';
PRINT 'Loading bronze layer is completed';
PRINT 'Total Load Duration:' + CAST(DATEDIFF(SECOND,@batch_start_time,@batch_end_time) AS NVARCHAR) + 'seconds';
PRINT '=============================================================================';
END TRY
BEGIN CATCH
PRINT '==============================================================================';
PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER';
PRINT 'ERROR MESSAGE' + ERROR_MESSAGE();
PRINT 'ERROR MESSAGE' + CAST(ERROR_NUMBER() AS NVARCHAR);
PRINT 'ERROR MESSAGE' + CAST(ERROR_STATE() AS NVARCHAR);
PRINT '==============================================================================';
END CATCH
END
