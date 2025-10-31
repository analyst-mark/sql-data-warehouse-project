BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\mark\Documents\GitHub\sql-data-warehouse-project-test\datsets\source_crm\cust_info.csv'
WITH (
		firstrow = 2,
		fieldterminator = ',',
		tablock
	

);

SELECT * FROM bronze.crm_cust_info cci 

SELECT count(*) FROM bronze.crm_cust_info cci 
