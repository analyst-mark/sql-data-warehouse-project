-- Empty the table before loading updated data
TRUNCATE TABLE bronze.crm_cust_info;

-- Bulk load data from CSV into the Bronze table
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\mark\Documents\GitHub\sql-data-warehouse-project-test\datsets\source_crm\cust_info.csv'
WITH (
    FIRSTROW = 2,              -- Skip header row
    FIELDTERMINATOR = ',',     -- Columns separated by commas
    TABLOCK                    -- Lock table for performance
);

-- Validate data load
SELECT * FROM bronze.crm_cust_info cci;

-- Count number of records
SELECT COUNT(*) FROM bronze.crm_cust_info cci;
