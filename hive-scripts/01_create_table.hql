CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

CREATE TABLE IF NOT EXISTS medical_records (
  name STRING,
  age INT,
  gender STRING,
  blood_type STRING,
  medical_condition STRING,
  billing_amount FLOAT,
  test_results STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1");
