USE hospital_db;

-- View all records
SELECT * FROM medical_records;

-- Average billing amount
SELECT AVG(billing_amount) AS avg_billing FROM medical_records;

-- Count by test result
SELECT test_results, COUNT(*) AS result_count FROM medical_records GROUP BY test_results;

-- Patients with Obesity
SELECT name, age, billing_amount FROM medical_records WHERE medical_condition = 'Obesity';
