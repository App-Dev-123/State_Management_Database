--Table 1
COPY owner_info (Owner1, Previous_Owner, Mail3, Mail4,Owner_ID)
FROM 'C:/dmql1/owner_info.csv'
DELIMITER ',' CSV HEADER;

--Table 2
COPY property_info (SBL, Front, Depth, Property_Class, Total_Living_Area)
FROM 'C:/dmql1/property_info.csv'
DELIMITER ',' CSV HEADER;

--Table 3
COPY address_info (House_Number, Street, Zipcode,SBL)
FROM 'C:/dmql1/address_info.csv'
DELIMITER ',' CSV HEADER;


--Table 4
COPY zipcode_info (Zipcode, State, City)
FROM 'C:/dmql1/zipcode_info.csv'
DELIMITER ',' CSV HEADER;

--Table 5
COPY deed_info (Deed_Book, Deed_Page, Deed_Date, Roll,Deed_ID)
FROM 'C:/dmql1/deed_info.csv'
DELIMITER ',' CSV HEADER;

--Table 6
COPY census_info (Census_Tract,Census_ID)
FROM 'C:/dmql1/census_info.csv'
DELIMITER ',' CSV HEADER;

--Table 7
COPY property_class_info (Property_Class, Property_Class_Description)
FROM 'C:/dmql1/property_class_info.csv'
DELIMITER ',' CSV HEADER;

-- Table 8
COPY price_info (Land_Value, Total_Value, Sale_Price,Price_ID)
FROM 'C:/dmql1/price_info.csv'
DELIMITER ',' CSV HEADER;

--Table 9
COPY link_table (SBL, Owner_ID, Deed_ID, Price_ID, Census_ID)
FROM 'C:/dmql1/link_table.csv'
DELIMITER ',' CSV HEADER;