USE hospital_db;

LOAD DATA LOCAL INPATH '/workspace/HIVE-PROJECT/data/healthcare_dataset.csv'
INTO TABLE medical_records;
