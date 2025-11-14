SAITM Department 1 Data Dump and Analysis

This document provides an overview of the SQL schema and data found in saitm_dep1.sql, along with important notes regarding data quality and suggestions for cleaning the dataset.

1. File and Database Overview

The file saitm_dep1.sql is a MySQL dump intended for the saitm database. It contains the schema definition and data for a single table: dep1.

Component

Detail

Database Name

saitm

Table Name

dep1

Total Records

$\approx 49$

Engine

InnoDB

Purpose

Student academic records

2. Table Schema (dep1)

The dep1 table is structured as follows. Note that no primary key or unique constraints were defined in the source SQL, which contributes to the data quality issues observed.

Column Name

Data Type

Description

name

varchar(30)

Student's name.

rollno

int

Student's roll number or ID.

grade

varchar(10)

Final letter grade (e.g., 'A', 'D', 'F').

marks

int

Raw numerical marks or score.

3. Data Quality Issues: Duplicates Detected

A preliminary analysis of the insertion data ($\approx 49$ records) reveals significant data redundancy. Many students appear multiple times with identical records, and sometimes with different roll numbers or grades, suggesting potential errors or multiple entries for different attempts/subjects.

For example, the record ('hitesh', 1, 'A', 98) is repeated multiple times.

Suggested Data Cleaning Query

If the goal is to obtain a list of unique student records based on all four fields (Name, Roll Number, Grade, and Marks), you can clean the table using a temporary staging approach:

-- 1. Create a temporary table with distinct records
CREATE TABLE dep1_staging AS
SELECT DISTINCT name, rollno, grade, marks
FROM dep1;

-- 2. Empty the original table (optional, but recommended)
TRUNCATE TABLE dep1;

-- 3. Insert the unique records back into the original table
INSERT INTO dep1
SELECT *
FROM dep1_staging;

-- 4. Drop the staging table
DROP TABLE dep1_staging;

-- Result: The dep1 table will now contain only unique combinations of all four columns.


4. Import Instructions

To load the data into your local MySQL environment:

Command Line Steps

Ensure you are logged out of the MySQL prompt.

Run the import command, which will create the saitm database if it doesn't exist, and then load the schema and data:

# Create the database first
mysql -u [your_username] -p -e "CREATE DATABASE IF NOT EXISTS saitm;"

# Import the SQL file
mysql -u [your_username] -p saitm < saitm_dep1.sql


Verification

After import, confirm the table and data exist:

USE saitm;
SELECT COUNT(*) AS total_records_before_cleaning FROM dep1;
SELECT name, rollno, grade, marks FROM dep1 ORDER BY name LIMIT 5;
