# Crowdfunding_ETL

We embarked on a collaborative project to construct an ETL pipeline utilizing Python, Pandas, and PostgreSQL. Our objective was to extract crowdfunding data from Excel files, perform necessary transformations, and load the transformed data into a relational database.

# Background

We developed an Extract, Transform, Load (ETL) pipeline using Python, Pandas, Python dictionary methods, and regular expressions to extract and transform the data. The process involved creating four CSV files from the extracted data. Then, using the data from these CSV files, we constructed an Entity-Relationship Diagram (ERD) and a table schema. Finally, we uploaded the data from the CSV files into a Postgres database.

# Features

- Extract and transform crowdfunding and contact data from Excel files
- Create and export Category, Subcategory, Campaign, and Contact DataFrames as CSV files
- Design an ERD and table schema for the database
- Create and populate PostgreSQL database tables

# Usage Instructions

- Run the Jupyter Notebook:

    Execute the Jupyter Notebook to extract and transform the data, and generate CSV files.
    This notebook contains the necessary code to perform the ETL process on the crowdfunding data.

- Create Tables in PostgreSQL:
    Use the provided crowdfunding_db_schema.sql file to create the required tables in a PostgreSQL database.
    This schema file defines the structure of the tables to store the transformed data.

- Load CSV Files into PostgreSQL:
    Import the generated CSV files into the corresponding tables within the PostgreSQL database.
    This step involves loading the transformed data into the appropriate database tables for further analysis.

- Verify Data Load:
    Query the PostgreSQL database to ensure that the data has been loaded correctly.
    Perform queries to confirm the presence and accuracy of the extracted and transformed data.

# Technologies Used:

The ETL pipeline was built using the following technologies:

- Python: Used to write the code for data extraction, transformation, and loading.
- Pandas: Utilized for data manipulation and transformation tasks.
- PostgreSQL: Used as the relational database management system to store the transformed data.
- Jupyter Notebook: Used as the development environment to execute the ETL pipeline.
- Excel: The original source data files were in Excel format and were processed during the extraction phase of    the pipeline.