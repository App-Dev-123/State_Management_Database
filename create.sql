-- Table 1: OWNER info
CREATE TABLE owner_info (
    Owner_ID INT PRIMARY KEY,
    Owner1 VARCHAR(255),
    Previous_Owner VARCHAR(255),
    Mail3 VARCHAR(255),
    Mail4 VARCHAR(255)
);

-- Table 2: Property details
CREATE TABLE property_info (
    SBL VARCHAR(255) PRIMARY KEY,
    Front NUMERIC,
    Depth NUMERIC,
    Property_Class VARCHAR(50),
    Total_Living_Area NUMERIC
);

-- Table 3: House info
CREATE TABLE address_info (
    SBL VARCHAR(255) REFERENCES property_info(SBL) ON DELETE CASCADE ON UPDATE CASCADE,
    House_Number INTEGER,
    Street VARCHAR(255),
    Zipcode VARCHAR(20),
	PRIMARY KEY (House_Number, Street, Zipcode)
);

-- Table 4: Zipcode table
CREATE TABLE zipcode_info (
    Zipcode VARCHAR(20) PRIMARY KEY,
    State VARCHAR(255),
    City VARCHAR(255)
);

-- Table 5: Deed info
CREATE TABLE deed_info (
    Deed_ID INT PRIMARY KEY,
    Deed_Book NUMERIC,
    Deed_Page NUMERIC,
    Deed_Date DATE,
    Roll VARCHAR(255)
);

-- Table 6: Census table
CREATE TABLE census_info (
    Census_ID INT PRIMARY KEY,
    Census_Tract VARCHAR(255)
);

-- Table 7: Property class table
CREATE TABLE property_class_info (
    Property_Class VARCHAR(50) PRIMARY KEY,
    Property_Class_Description TEXT
);

-- Table 8: Price details
CREATE TABLE price_info (
    Price_ID INT PRIMARY KEY,
    Land_Value NUMERIC,
    Total_Value NUMERIC,
    Sale_Price NUMERIC
);

-- Table 9: Link table
CREATE TABLE link_table (
    SBL VARCHAR(255) REFERENCES property_info(SBL) ON DELETE CASCADE ON UPDATE CASCADE,
    Owner_ID INT REFERENCES owner_info(Owner_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    Deed_ID INT REFERENCES deed_info(Deed_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    Price_ID INT REFERENCES price_info(Price_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    Census_ID INT REFERENCES census_info(Census_ID) ON DELETE SET NULL ON UPDATE CASCADE,
    PRIMARY KEY (SBL, Owner_ID, Deed_ID, Price_ID, Census_ID)
);