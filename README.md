# State_Management_Database
Here’s a reduced version of your text, keeping it under 350 characters:  ---  Lack of a centralized system for managing property data creates obstacles in organizing and accessing crucial information. Stakeholders struggle to track property details, assess valuations, and plan building operations effectively without a specialized database system.

# dataset
https://data.buffalony.gov/Government/2020-2021-Assessment-Roll/8h79-5n5h/about_data

# Preprocessing:
Upon acquiring the dataset from an external source, 
preprocessing became imperative due to the presence of 
missing data. Our efforts primarily revolved around null 
value removal, data type adjustments, duplicate record 
elimination, and table partitioning, with each table saved as 
an individual CSV file. Given the dataset's considerable 
size, we opted to process only the initial 25,000 rows. These 
meticulous preprocessing steps were vital to ensuring data 
quality and readiness for subsequent analytical endeavors 
and modeling tasks.
Upon acquisition, the datasets were initially copied into 
PGAdmin using the COPY statement in SQL, facilitating 
seamless integration into the database management system. 
This method ensured efficient data transfer and storage, 
laying the groundwork for subsequent preprocessing steps. 
A sample query executed during this process could be:
COPY address_info(House_Number, Street, Zipcode)
FROM '/path/to/address_info.csv' DELIMITER ',' CSV 
HEADER;
