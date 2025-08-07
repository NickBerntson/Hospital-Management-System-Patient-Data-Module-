--======================================== 
--Create patients table
--======================================== 

CREATE TABLE patients (  

    patient_id number GENERATED ALWAYS AS IDENTITY,   

    patient_name VARCHAR2(50) NOT NULL,  

    patient_gender CHAR(1) NOT NULL,    

    patient_dob DATE NOT NULL,   

    patient_phone VARCHAR2(15),    

    patient_status VARCHAR2(20) NOT NULL,    

    patient_address VARCHAR2(255),   

    patient_allergies VARCHAR2(255),   

    patient_insurance VARCHAR2(100),    

    patient_e_contact VARCHAR2(100),  

    CONSTRAINT pk_patients PRIMARY KEY (patient_id)  

); 

--======================================== 
-- Colum Description: 
--======================================== 

COMMENT ON COLUMN patients.patient_id IS 'Unique identifier for the patient'; 

COMMENT ON COLUMN patients.patient_name IS 'Full name of the patient'; 

COMMENT ON COLUMN patients.patient_gender IS 'Gender identity of the patient (M/F/O)'; 

COMMENT ON COLUMN patients.patient_dob IS 'Date of birth of the patient'; 

COMMENT ON COLUMN patients.patient_phone IS 'Patient’s phone number contact'; 

COMMENT ON COLUMN patients.patient_status IS 'Current status of the patient (Active/Inactive)'; 

COMMENT ON COLUMN patients.patient_address IS 'Patient’s current address'; 

COMMENT ON COLUMN patients.patient_allergies IS 'List of known allergies from the patient'; 

COMMENT ON COLUMN patients.patient_insurance IS 'Patient’s insurance provider'; 

COMMENT ON COLUMN patients.patient_e_contact IS 'Name of patient emergency contact'; 

--======================================== 
-- Insert SQL: 
--======================================== 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('John Doe', 'M', TO_DATE('2004-02-21', 'YYYY-MM-DD'), '+1-800-999-9999', 'Active', '1400  

Washington Ave, Albany, NY, 12222', 'Pollen, Penicillin', 'ABC Health Insurance', 'Jane Doe'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Gloria Hunt', 'F', TO_DATE('1970-09-19', 'YYYY-MM-DD'), '+1-800-888-8888', 'Active', '856 Palisade Ave, Yonkers, NY, 10703', 'Peanuts, Dust', 'DEF Health Insurance', 'Bob Hunt'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Frank Murphy', 'M', TO_DATE('1992-07-23', 'YYYY-MM-DD'), '+1-800-777-7777', 'Inactive', '200 Main St, Hastings-on-Hudson, NY, 10706', 'Shellfish, Latex', 'GHI Health Insurance', 'Pearl Murphy'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Kaleb Rowling', 'M', TO_DATE('2005-11-04', 'YYYY-MM-DD'), '+1-800-666-666', 'Inactive', '81 Polaris Dr, Saratoga Springs, NY 12866', 'Wool, Bees', 'JKL Health Insurance', 'Lisa Rowling'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Kate Turpin', 'F', TO_DATE('1961-04-17', 'YYYY-MM-DD'), '+1-800-555-5555', 'Active', '141 Washington Ave, Albany, NY, 12222', 'Amoxicillin', 'MNO Health Insurance', 'Chris Turpin'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Sandra Muller', 'F', TO_DATE('2002-12-01', 'YYYY-MM-DD'), '+1-800-444-4444', 'Active', '30 N.Baltimore Ave, Ocean City, MD, 21843', 'Apples, Leather', 'PQR Health Insurance', 'Benjamin Muller'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Grant Ciszewski', 'M', TO_DATE('1988-03-03', 'YYYY-MM-DD'), '+1-800-333-3333', 'Active', '100 Collingwood Ave, Buffalo, NY, 14215', 'Peaches', 'STU Health Insurance', 'Colline Ciszewski'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Chase Oisin', 'M', TO_DATE('2006-01-18', 'YYYY-MM-DD'), '+1-800-222-2222', 'Inactive', '62 Wall St, New York, NY, 10005', 'Wheat, Tulips', 'VWX Health Insurance', 'Vanessa Oisin'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact)   

VALUES ('Brianna Cole', 'F', TO_DATE('1997-09-13', 'YYYY-MM-DD'), '+1-800-111-1111', 'Active', '3 Newbury St, Boston, MA, 02116', 'Pollen', 'YZZ Health Insurance', 'Vincent Cole'); 

INSERT INTO patients (patient_name, patient_gender, patient_dob, patient_phone, patient_status, patient_address, patient_allergies, patient_insurance, patient_e_contact) 

VALUES ('Paul Valentine', 'M', TO_DATE('1947-10-08', 'YYYY-MM-DD'), '+1-800-000-0000', 'Active', '925 Bank St, Newark, NJ 07102', 'Soot', 'ZZZ Health Insurance', 'Mary Valentine'); 

--======================================== 
-- View all patients: 
--======================================== 

SELECT * FROM patients;