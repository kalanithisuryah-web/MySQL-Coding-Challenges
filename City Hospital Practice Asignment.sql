CREATE DATABASE City_Hospital;
Use City_Hospital;

Create Table Patients(
Patient_ID int primary key,
patient_name varchar(100),
Age int,
Gender varchar(8),
Admission_Date date
);

ALTER TABLE Patients
ADD Doctor_assigned varchar(50);


desc patients;

/* ------------------------------------------------------------------------------------------------------------------------------------*/

/* Today's challenge ready-


SQL Question 2: ALTER – Add Column
Scenario:
 Later, the hospital decides to store the doctor assigned to each patient.
Task:
 Write a SQL command to add a new column DoctorAssigned VARCHAR(50) to the Patients table.
Expected Output:
 The Patients table now has an additional column DoctorAssigned. */
 
 
 Use City_Hospital;
 
 ALTER TABLE Patients
 ADD COLUMN DoctorAssigned VARCHAR (50);
 
 DESC Patients;
 /* --------------------------------------------------------------------------------------------------------------------------------- */
 
 
