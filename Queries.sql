/*
1. Show all the department names along with their heads. */
SELECT department.dept_name,physician.Name 
FROM department,physician 
WHERE department.Head=physician.EmployeeID;
/*
2. Write a query in SQL to count the number of patients who taken appointment with at least one physician. */
SELECT count(DISTINCT patient) AS "No. of patients taken at least one appointment"
FROM appointment;
/*
3. Write a query in SQL to find the floor and block where the room number 123 belongs to. */
SELECT blockfloor AS "Floor",
       blockcode AS "Block"
FROM room
WHERE number=123;
/*
4. Write a query in SQL to count the number available rooms. */
SELECT count(*) "Number of available rooms"
FROM room
WHERE unavailable='false';
/*
5. Write a query in SQL to obtain the name of the physician and the departments they are affiliated with. */
SELECT p.name AS "Physician",
       d.name AS "Department"
FROM physician p,
     department d,
     affiliated_with a
WHERE p.employeeid=a.physician
  AND a.department=d.departmentid;
/*
6. Write a query in SQL to obtain the name of the physicians who are trained for a special treatement. */
SELECT p.name AS "Physician",
       c.name AS "Treatement"
FROM physician p,
     PROCEDURE c,
               trained_in t
WHERE t.physician=p.employeeid
  AND t.treatment=c.code;
/*
7. Write a query in SQL to obtain the name of the physicians with department who are yet to be affiliated. */
SELECT p.name AS "Physician",
       p.position,
       d.dept_name AS "Department"
FROM physician p
JOIN affiliated_with a ON a.physician=p.employeeid
JOIN department d ON a.department=d.departmentid
WHERE primaryaffiliation='false';
/*
8.  Write a query in SQL to obtain the name of the physicians who are not a specialized physician. */
SELECT p.name AS "Physician",
       p.position "Designation"
FROM physician p
LEFT JOIN trained_in t ON p.employeeid=t.physician
WHERE t.treatment IS NULL
ORDER BY employeeid;
/*
9. Write a query in SQL to obtain the name of the patients with their physicians by whom they got their preliminary treatement. */
SELECT t.name AS "Patient",
       t.address AS "Address",
       p.name AS "Physician"
FROM patient t
JOIN physician p ON t.pcp=p.employeeid;
/*
10. Write a query in SQL to find the name of the patients and the number of physicians they have taken appointment. */
SELECT p.name "Patient",
       count(t.patient) "Appointment for No. of Physicians"
FROM appointment t
JOIN patient p ON t.patient=p.ssn
GROUP BY p.name
HAVING count(t.patient)>=1;
/*
11. Write a query in SQL to count number of unique patients who got an appointment for examination room C. */
SELECT count(DISTINCT patient) AS "No. of patients got appointment for room C"
FROM appointment
WHERE examinationroom='C';
/*
12. Write a query in SQL to find the name of the patients and the number of the room where they have to go for their treatment. */
SELECT p.name AS "Patient",
       a.examinationroom AS "Room No.",
       a.Start AS "Date and Time of appointment"
FROM patient p
JOIN appointment a ON p.ssn=a.patient;
/*
13.  Write a query in SQL to find the name of the nurses and the room scheduled, where they will assist the physicians. */
SELECT n.name AS "Name of the Nurse",
       a.examinationroom AS "Room No."
FROM nurse n
JOIN appointment a ON a.prepnurse=n.employeeid;
/*
14. Write a query in SQL to find the name of the patients who taken the appointment on the 25th of April at 10 am, and also display their physician, assisting nurses and room no. */
SELECT t.name AS "Name of the patient",
       n.name AS "Name of the Nurse assisting the physician",
       p.name AS "Name of the physician",
       a.examinationroom AS "Room No.",
       a.Start
FROM patient t
JOIN appointment a ON a.patient=t.ssn
JOIN nurse n ON a.prepnurse=n.employeeid
JOIN physician p ON a.physician=p.employeeid
WHERE Start='2008-04-25 10:00:00';
/*
15. Write a query in SQL to find the name of patients and their physicians who does not require any assistance of a nurse. */
SELECT t.name AS "Name of the patient",
       p.name AS "Name of the physician",
       a.examinationroom AS "Room No."
FROM patient t
JOIN appointment a ON a.patient=t.ssn
JOIN physician p ON a.physician=p.employeeid
WHERE a.prepnurse IS NULL;
/*
16. Write a query in SQL to find the name of the patients, their treating physicians and medication. */
SELECT t.name AS "Patient",
       p.name AS "Physician",
       m.name AS "Medication"
FROM patient t
JOIN prescribes s ON s.patient=t.ssn
JOIN physician p ON s.physician=p.employeeid
JOIN medication m ON s.medication=m.code;