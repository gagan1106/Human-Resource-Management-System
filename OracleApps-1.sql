    
CREATE TABLE XX_GAGAN_DEPARTMENT_T(DEPARTMENT_ID INT,
                                   DEPARTMENT_NAME VARCHAR2(50),
                                   MANAGER_ID VARCHAR2(50),
                                   PRIMARY KEY(DEPARTMENT_ID,MANAGER_ID)); 
INSERT ALL 
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1001, 'Human Resources', 'MGR001')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1002, 'Sales', 'MGR002')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1003, 'Finance', 'MGR003')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1004, 'IT', 'MGR004')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1005, 'Marketing', 'MGR005')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1006, 'Customer Support', 'MGR006')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1007, 'R&D', 'MGR007')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1008, 'Operations', 'MGR008')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1009, 'Legal', 'MGR009')
  INTO XX_GAGAN_DEPARTMENT_T VALUES(1010, 'Procurement', 'MGR010')
SELECT * FROM DUAL;


CREATE TABLE XX_GAGAN_EMPLOYEE_T(EMPLOYEE_ID INT PRIMARY KEY,
                                   EMPLOYEE_NAME VARCHAR2(50) NOT NULL,
                                   GENDER VARCHAR2(50) NOT NULL,
                                   DATE_OF_BIRTH varchar2(50),
                                   EMAIL VARCHAR2(50) UNIQUE NOT NULL,
                                   PHONE INT UNIQUE NOT NULL,
                                   JOB_TITLE VARCHAR2(50),
                                   CITY VARCHAR2(50),
                                   DEPARTMENT_ID INT,
                                   MANAGER_ID VARCHAR2(50),
                                   FOREIGN KEY (DEPARTMENT_ID,MANAGER_ID) REFERENCES XX_GAGAN_DEPARTMENT_T(DEPARTMENT_ID,MANAGER_ID));



/
INSERT ALL
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50000, 'Oliver Brown', 'Male','1990-07-15', 'oliver.brown@example.com', 9876543240, 'Marketing Manager', 'San Diego', 1001, 'MGR001')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50001, 'Isabella Johnson', 'Female', '1991-10-22', 'isabella.johnson@example.com', 9876543241, 'Sales Manager', 'New York', 1002, 'MGR002')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50002, 'Ethan Wilson', 'Male', '1986-01-17', 'ethan.wilson@example.com', 9876543242, 'Product Owner', 'Chicago', 1003, 'MGR003')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50003, 'Sophia Martinez', 'Female','1994-08-30', 'sophia.martinez@example.com', 9876543243, 'Financial Analyst', 'Los Angeles', 1004, 'MGR004')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50004, 'Daniel Lee', 'Male', '1989-03-04', 'daniel.lee@example.com', 9876543244, 'Customer Success Manager', 'San Francisco', 1005, 'MGR005')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50005, 'Mia Taylor', 'Female','1992-12-05', 'mia.taylor@example.com', 9876543245, 'HR Specialist', 'Dallas', 1006, 'MGR006')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50006, 'Alexander Thomas', 'Male', '1987-05-20', 'alexander.thomas@example.com', 9876543246, 'IT Consultant', 'Miami', 1007, 'MGR007')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50007, 'Chloe Robinson', 'Female','1993-04-02', 'chloe.robinson@example.com', 9876543247, 'Operations Manager', 'Seattle', 1008, 'MGR008')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50008, 'William Harris', 'Male', '1988-02-16',  'william.harris@example.com', 9876543248, 'Business Development Lead', 'Boston', 1009, 'MGR009')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50009, 'Lily Scott', 'Female', '1995-09-18', 'lily.scott@example.com', 9876543249, 'Legal Counsel', 'Washington', 1010, 'MGR010')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50010, 'Benjamin Lee', 'Male', '1984-11-12', 'benjamin.lee@example.com', 9876543250, 'Digital Marketing Specialist', 'San Diego', 1001, 'MGR001')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50011, 'Madison King', 'Female', '1993-05-03', 'madison.king@example.com', 9876543251, 'Project Manager', 'Austin', 1002, 'MGR002')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50012, 'Zachary Walker', 'Male', '1986-06-19', 'zachary.walker@example.com', 9876543252, 'Financial Consultant', 'Chicago', 1003, 'MGR003')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50013, 'Amelia Harris', 'Female', '1991-12-29', 'amelia.harris@example.com', 9876543253, 'Data Scientist', 'San Francisco', 1004, 'MGR004')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50014, 'Lucas Clark', 'Male','1990-10-08', 'lucas.clark@example.com', 9876543254, 'HR Generalist', 'Los Angeles', 1005, 'MGR005')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50015, 'Grace Miller', 'Female','1994-07-20',  'grace.miller@example.com', 9876543255, 'Marketing Strategist', 'San Diego', 1006, 'MGR006')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50016, 'Henry Davis', 'Male', '1985-02-03',  'henry.davis@example.com', 9876543256, 'R&D Manager', 'Dallas', 1007, 'MGR007')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50017, 'Olivia Garcia', 'Female', '1992-11-29',  'olivia.garcia@example.com', 9876543257, 'Customer Support Lead', 'Miami', 1008, 'MGR008')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50018, 'James Wilson', 'Male', '1988-08-14',  'james.wilson@example.com', 9876543258, 'Operations Coordinator', 'Boston', 1009, 'MGR009')
  INTO XX_GAGAN_EMPLOYEE_T VALUES (50019, 'Charlotte Taylor', 'Female', '1990-09-24', 'charlotte.taylor@example.com', 9876543259, 'Procurement Officer', 'Washington', 1010, 'MGR010')
SELECT * FROM DUAL;

CREATE TABLE XX_GAGAN_PERFORMANCE_REVIEW_T(REVIEW_ID INT PRIMARY KEY,
                                           EMPLOYEE_ID INT,
                                           REVIEW_DATE VARCHAR2(50),
                                           PERFORMANCE_SCORE INT NOT NULL,
                                           COMMENTS VARCHAR2(1000),
                                           FOREIGN KEY (EMPLOYEE_ID) REFERENCES XX_GAGAN_EMPLOYEE_T(EMPLOYEE_ID));
                 

INSERT ALL
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (1,50000, '2024-01-15', 85, 'Good performance overall.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (2,50001, '2024-01-16',  88, 'Strong leadership skills.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (3,50002,'2024-01-17', 90, 'Excellent understanding of product management.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (4,50003, '2024-01-18', 78, 'Needs to improve communication skills.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (5,50004, '2024-01-19', 92, 'Consistently exceeds expectations.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (6,50005, '2024-01-20', 80, 'Good team player but room for improvement in project management.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (7,50006, '2024-01-21', 85, 'Great attention to detail, needs improvement in multitasking.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (8,50007, '2024-01-22', 90, 'Strong research skills, good collaboration with cross-functional teams.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (9,50008, '2024-01-23', 88, 'Reliable and organized, good problem-solving skills.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (10,50009,'2024-01-24', 91, 'Excellent in legal advisory and compliance management.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (11,50010,'2024-01-25', 84, 'Creative in marketing, needs more strategic input.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (12,50011,'2024-01-26', 89, 'Effective communicator and team motivator.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (13,50012, '2024-01-27', 86, 'Strong analytical skills, could work on time management.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (14,50013,'2024-01-28', 87, 'Proactive and self-motivated, needs to develop more technical expertise.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (15,50014, '2024-01-29', 91, 'Excellent problem-solving skills, dependable.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (16,50015, '2024-01-30', 90, 'Consistent performer with a strong focus on goals.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (17,50016,'2024-01-31', 88, 'Good team lead, needs to improve delegation skills.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (18,50017, '2024-02-01', 84, 'Solid performance, should focus on process optimization.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (19,50018, '2024-02-02', 86, 'Strong operational skills, room for improvement in efficiency.')
  INTO XX_GAGAN_PERFORMANCE_REVIEW_T VALUES (20,50019, '2024-02-03', 92, 'Excellent in procurement, great attention to supplier relationships.')
SELECT * FROM DUAL;

                 
CREATE TABLE XX_GAGAN_ATTENDANCE_T(EMPLOYEE_ID INT,
                                   ATTENDANCE_DATE VARCHAR2(50),
                                   STATUS VARCHAR2(50),
                                   FOREIGN KEY (EMPLOYEE_ID) REFERENCES XX_GAGAN_EMPLOYEE_T(EMPLOYEE_ID));

--
DROP table XX_GAGAN_ATTENDANCE_T;


INSERT ALL
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50000, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50001, '2024-01-15', 'Absent')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50002, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50003, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50004, '2024-01-15',  'Absent')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50005, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50006, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50007, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50008, '2024-01-15', 'Absent')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50009, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50010, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50011, '2024-01-15', 'Absent')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50012, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50013, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50014, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50015, '2024-01-15', 'Absent')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50016, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50017, '2024-01-15', 'Present')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50018, '2024-01-15', 'Absent')
  INTO XX_GAGAN_ATTENDANCE_T VALUES ( 50019, '2024-01-15', 'Present')
SELECT * FROM DUAL;

                                   
CREATE TABLE XX_GAGAN_PAYROLL_T(PAYROLL_ID INT PRIMARY KEY,
                                EMPLOYEE_ID INT,
                                PAY_DATE VARCHAR2(50) NOT NULL,
                                BASE_SALARY INT NOT NULL,
                                BONUS INT ,
                                DEDUCTION INT,
                                TOTAL_SALARY INT NOT NULL,
                                FOREIGN KEY (EMPLOYEE_ID) REFERENCES XX_GAGAN_EMPLOYEE_T(EMPLOYEE_ID));


INSERT ALL
  INTO XX_GAGAN_PAYROLL_T VALUES (200001, 50000, '2024-01-31',  5000, 500, 200, 5300)
  INTO XX_GAGAN_PAYROLL_T VALUES (200002, 50001, '2024-01-31', 6000, 600, 250, 6350)
  INTO XX_GAGAN_PAYROLL_T VALUES (200003, 50002, '2024-01-31', 5500, 550, 200, 5850)
  INTO XX_GAGAN_PAYROLL_T VALUES (200004, 50003, '2024-01-31', 7000, 700, 300, 7400)
  INTO XX_GAGAN_PAYROLL_T VALUES (200005, 50004, '2024-01-31', 7500, 750, 350, 7900)
  INTO XX_GAGAN_PAYROLL_T VALUES (200006, 50005, '2024-01-31',  4500, 450, 150, 4800)
  INTO XX_GAGAN_PAYROLL_T VALUES (200007, 50006, '2024-01-31', 6000, 600, 200, 6400)
  INTO XX_GAGAN_PAYROLL_T VALUES (200008, 50007, '2024-01-31', 8000, 800, 400, 8400)
  INTO XX_GAGAN_PAYROLL_T VALUES (200009, 50008, '2024-01-31', 5500, 550, 250, 5800)
  INTO XX_GAGAN_PAYROLL_T VALUES (200010, 50009, '2024-01-31', 9500, 950, 500, 9950)
  INTO XX_GAGAN_PAYROLL_T VALUES (200011, 50010, '2024-01-31', 5200, 520, 200, 5520)
  INTO XX_GAGAN_PAYROLL_T VALUES (200012, 50011, '2024-01-31', 5800, 580, 250, 6130)
  INTO XX_GAGAN_PAYROLL_T VALUES (200013, 50012, '2024-01-31',  6600, 660, 300, 6960)
  INTO XX_GAGAN_PAYROLL_T VALUES (200014, 50013, '2024-01-31', 7000, 700, 350, 7350)
  INTO XX_GAGAN_PAYROLL_T VALUES (200015, 50014, '2024-01-31', 7500, 750, 400, 7850)
  INTO XX_GAGAN_PAYROLL_T VALUES (200016, 50015,'2024-01-31',  6300, 630, 200, 6730)
  INTO XX_GAGAN_PAYROLL_T VALUES (200017, 50016, '2024-01-31', 8000, 800, 350, 8450)
  INTO XX_GAGAN_PAYROLL_T VALUES (200018, 50017, '2024-01-31', 9000, 900, 400, 9500)
  INTO XX_GAGAN_PAYROLL_T VALUES (200019, 50018, '2024-01-31', 6700, 670, 250, 7120)
  INTO XX_GAGAN_PAYROLL_T VALUES (200020, 50019, '2024-01-31', 7800, 780, 350, 8130)
  SELECT * FROM DUAL;

COMMIT;
                                
SELECT * FROM XX_GAGAN_DEPARTMENT_T;
SELECT * FROM XX_GAGAN_EMPLOYEE_T;
SELECT * FROM XX_GAGAN_PERFORMANCE_REVIEW_T;
SELECT * FROM XX_GAGAN_ATTENDANCE_T;
SELECT * FROM XX_GAGAN_PAYROLL_T;

/
SELECT A.EMPLOYEE_ID ,
               A.EMPLOYEE_NAME,
               A.EMAIL,
               A.JOB_TITLE,
               B.PERFORMANCE_SCORE,
               B.COMMENTS,
               C.ATTENDANCE_DATE,
               C.STATUS,
               D.TOTAL_SALARY
FROM 
        XX_GAGAN_EMPLOYEE_T A 
JOIN    XX_GAGAN_PERFORMANCE_REVIEW_T B ON A.EMPLOYEE_ID=B.EMPLOYEE_ID
JOIN    XX_GAGAN_ATTENDANCE_T C ON A.EMPLOYEE_ID=C.EMPLOYEE_ID
JOIN    XX_GAGAN_PAYROLL_T D ON A.EMPLOYEE_ID=D.EMPLOYEE_ID;

/
SET SERVEROUTPUT ON;

------------------------------------------- INSERT ATTENDANCE -------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE TRACK_ATTENDANCE(P_EMPLOYEE_ID IN VARCHAR2, P_DATE IN DATE, P_STATUS IN VARCHAR2)
IS
    V_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO V_COUNT
    FROM XX_GAGAN_ATTENDANCE_T 
    WHERE EMPLOYEE_ID = P_EMPLOYEE_ID AND ATTENDANCE_DATE = P_DATE;

    IF V_COUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Attendance for this employee on the given date already exists.');
    ELSE
        INSERT INTO XX_GAGAN_ATTENDANCE_T(EMPLOYEE_ID, ATTENDANCE_DATE, STATUS)
        VALUES (P_EMPLOYEE_ID, P_DATE, P_STATUS);
        DBMS_OUTPUT.PUT_LINE('Attendance record inserted.');
    END IF;
END;


EXEC TRACK_ATTENDANCE( 50001,TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Present');


 ------------------------------------------- RETRIEVE ATTENDANCE ----------------------------------------------------------------

CREATE OR REPLACE PROCEDURE GET_EMPLOYEE_ATTENDANCE(P_EMPLOYEE_ID IN NUMBER, P_START_DATE IN DATE, P_END_DATE IN DATE)
IS
    
    CURSOR ATT_CUR IS
        SELECT 
            EMPLOYEE_ID, 
            ATTENDANCE_DATE, 
            STATUS        
        FROM 
            XX_GAGAN_ATTENDANCE_T
        WHERE 
            EMPLOYEE_ID = P_EMPLOYEE_ID
            AND ATTENDANCE_DATE BETWEEN P_START_DATE AND P_END_DATE
        ORDER BY 
            ATTENDANCE_DATE;
BEGIN
    FOR EMP_DATA IN ATT_CUR LOOP  
        DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: ' || EMP_DATA.EMPLOYEE_ID|| 
                             ', DATE: ' || EMP_DATA.ATTENDANCE_DATE ||
                             ', STATUS: ' || EMP_DATA.STATUS);
    END LOOP;
END;


EXEC GET_EMPLOYEE_ATTENDANCE(50000,TO_DATE('2024-01-15', 'YYYY-MM-DD'),TO_DATE('2024-12-13', 'YYYY-MM-DD'));       

------------------------------------------- PERFORMANCE REVIEW -------------------------------------------------------------------
---------------------------------------------- ADD REVIEW ------------------------------------------------------------------------
CREATE SEQUENCE XX_GAGAN_PERFORMANCE_REVIEW_SEQ
START WITH 20
INCREMENT BY 1;

CREATE OR REPLACE PROCEDURE ADD_PERFORMANCE_REVIEW(
    P_EMPLOYEE_ID IN INT,
    P_REVIEW_DATE IN DATE,
    P_PERFORMANCE_SCORE IN INT,
    P_COMMENTS IN VARCHAR2
)
IS
    V_REVIEW_ID INT;
BEGIN
   
    SELECT XX_GAGAN_PERFORMANCE_REVIEW_SEQ.NEXTVAL INTO V_REVIEW_ID FROM DUAL;

    INSERT INTO XX_GAGAN_PERFORMANCE_REVIEW_T (
        REVIEW_ID,
        EMPLOYEE_ID,
        REVIEW_DATE,
        PERFORMANCE_SCORE,
        COMMENTS
    ) VALUES (
        V_REVIEW_ID,
        P_EMPLOYEE_ID,
        P_REVIEW_DATE,
        P_PERFORMANCE_SCORE,
        P_COMMENTS
    );

    DBMS_OUTPUT.PUT_LINE('Performance review added of Employee ID ' || P_EMPLOYEE_ID|| ' and generated review id is '|| V_REVIEW_ID);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred while adding the performance review: ' || SQLERRM);
END;


EXEC ADD_PERFORMANCE_REVIEW(50000, TO_DATE('2024-12-13', 'YYYY-MM-DD'), 90, 'Excellent performance');

-------------------------------------------------- UPDATE REVIEW ------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE UPDATE_PERFORMANCE_REVIEW(P_REVIEW_ID IN INT,P_PERFORMANCE_SCORE IN INT,P_COMMENTS IN VARCHAR2)
IS
BEGIN
    UPDATE XX_GAGAN_PERFORMANCE_REVIEW_T
    SET 
        PERFORMANCE_SCORE = P_PERFORMANCE_SCORE,
        COMMENTS = P_COMMENTS
    WHERE REVIEW_ID = P_REVIEW_ID;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Performance review updated for Review ID ' || P_REVIEW_ID);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No review found for the provided Review ID.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred while updating the performance review: ' || SQLERRM);
END;

SET SERVEROUTPUT ON;

EXEC UPDATE_PERFORMANCE_REVIEW(1,90,'Very nice, professional,talented');

--------------------------------------------------- GET REVIEW ---------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE GET_EMPLOYEE_PERFORMANCE_REVIEWS(P_EMPLOYEE_ID IN INT,P_START_DATE IN DATE,P_END_DATE IN DATE)
IS
    V_AVG INT;
    
    CURSOR R_CUR IS
        SELECT REVIEW_ID,REVIEW_DATE,PERFORMANCE_SCORE,COMMENTS
        FROM XX_GAGAN_PERFORMANCE_REVIEW_T
        WHERE EMPLOYEE_ID = P_EMPLOYEE_ID
        AND REVIEW_DATE BETWEEN P_START_DATE AND P_END_DATE
        ORDER BY REVIEW_DATE;
BEGIN
  
    FOR R_DATA IN R_CUR LOOP
        DBMS_OUTPUT.PUT_LINE('Review ID: ' || R_DATA.REVIEW_ID || 
                             ', Date: ' || TO_CHAR(R_DATA.REVIEW_DATE, 'YYYY-MM-DD') ||
                             ', Score: ' || R_DATA.PERFORMANCE_SCORE || 
                             ', Comments: ' || R_DATA.COMMENTS);
    
    IF R_CUR%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No reviews found for Employee ID ' || P_EMPLOYEE_ID || ' between ' || TO_CHAR(P_START_DATE, 'YYYY-MM-DD') || ' and ' || TO_CHAR(P_END_DATE, 'YYYY-MM-DD'));
    END IF;
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred while fetching the performance reviews: ' || SQLERRM);
END;

SET SERVEROUTPUT ON;
  
EXEC GET_EMPLOYEE_PERFORMANCE_REVIEWS(50000, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'));

------------------------------------------------ DELETE REVIEW --------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE DELETE_PERFORMANCE_REVIEW(P_REVIEW_ID IN INT)
IS
BEGIN
    DELETE FROM XX_GAGAN_PERFORMANCE_REVIEW_T 
    WHERE REVIEW_ID = P_REVIEW_ID;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Performance review deleted for Review ID ' || P_REVIEW_ID);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No review found for the provided Review ID.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred while deleting the performance review: ' || SQLERRM);
END;

EXEC DELETE_PERFORMANCE_REVIEW(21);

------------------------------------ Generate Payroll Report for Employee ---------------------------------------------

CREATE OR REPLACE PROCEDURE GET_EMPLOYEE_PAYROLL_REPORT(
    P_EMPLOYEE_ID IN INT,
    P_START_DATE IN DATE,
    P_END_DATE IN DATE
)
IS
    CURSOR payroll_cursor IS
        SELECT 
            PAYROLL_ID,
            PAY_DATE,
            BASE_SALARY,
            BONUS,
            DEDUCTION,
            TOTAL_SALARY
        FROM XX_GAGAN_PAYROLL_T
        WHERE EMPLOYEE_ID = P_EMPLOYEE_ID
        AND PAY_DATE BETWEEN P_START_DATE AND P_END_DATE
        ORDER BY PAY_DATE;
BEGIN
    FOR payroll IN payroll_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Payroll ID: ' || payroll.PAYROLL_ID ||
                             ', Date: ' || TO_CHAR(payroll.PAY_DATE, 'YYYY-MM-DD') ||
                             ', Base Salary: ' || payroll.BASE_SALARY ||
                             ', Bonus: ' || NVL(payroll.BONUS, 0) ||
                             ', Deduction: ' || NVL(payroll.DEDUCTION, 0) ||
                             ', Total Salary: ' || payroll.TOTAL_SALARY);
    

    IF payroll_cursor%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No payroll records found for Employee ID ' || P_EMPLOYEE_ID ||
                             ' between ' || TO_CHAR(P_START_DATE, 'YYYY-MM-DD') ||
                             ' and ' || TO_CHAR(P_END_DATE, 'YYYY-MM-DD'));
    END IF;
    END LOOP;                         
                             

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred while fetching payroll report: ' || SQLERRM);
END;

SET SERVEROUTPUT ON;

EXEC GET_EMPLOYEE_PAYROLL_REPORT(50001, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'));


------------------------------------------- FUNCTION TO FIND EMPLOYESS IN GIVEN DEPARTMENT ----------------------------------------

CREATE OR REPLACE FUNCTION GET_EMPLOYEES_BY_DEPARTMENT_ID(
    F_DEPARTMENT_ID IN INT
) 
RETURN SYS_REFCURSOR  -- USE TO RETURN A CURSOR
IS
    EMP_CUR SYS_REFCURSOR;
BEGIN
    OPEN EMP_CUR FOR
        SELECT 
            EMPLOYEE_ID,
            EMPLOYEE_NAME,
            JOB_TITLE,
            CITY,
            EMAIL,
            PHONE
        FROM XX_GAGAN_EMPLOYEE_T
        WHERE DEPARTMENT_ID = F_DEPARTMENT_ID;
    
    RETURN EMP_CUR;
END;

DECLARE
    emp_cursor SYS_REFCURSOR;
    
    emp_id        XX_GAGAN_EMPLOYEE_T.EMPLOYEE_ID%TYPE;
    emp_name      XX_GAGAN_EMPLOYEE_T.EMPLOYEE_NAME%TYPE;
    job_title     XX_GAGAN_EMPLOYEE_T.JOB_TITLE%TYPE;
    city          XX_GAGAN_EMPLOYEE_T.CITY%TYPE;
    email         XX_GAGAN_EMPLOYEE_T.EMAIL%TYPE;
    phone         XX_GAGAN_EMPLOYEE_T.PHONE%TYPE;
BEGIN

    emp_cursor := GET_EMPLOYEES_BY_DEPARTMENT_ID(1001);

    LOOP
        FETCH emp_cursor INTO emp_id, emp_name, job_title, city, email, phone;

        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('ID: ' || emp_id || ', Name: ' || emp_name || ', Job Title: ' || job_title || ', City: ' || city || ', Email: ' || email || ', Phone: ' || phone);
    END LOOP;

    CLOSE emp_cursor;
END;
/


DECLARE
    emp_cursor SYS_REFCURSOR;
BEGIN
    emp_cursor := GET_EMPLOYEES_BY_DEPARTMENT_ID(1001);

    DBMS_OUTPUT.PUT_LINE('Function executed successfully for department ID 10.');
END;


------------------------------------------------------ PACKAGE CREATION ----------------------------------------------------------------------

CREATE OR REPLACE PACKAGE XX_GAGAN_HRM_PKG
IS
  PROCEDURE TRACK_ATTENDANCE(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN VARCHAR2, P_DATE IN VARCHAR2, P_STATUS IN VARCHAR2); -- INSERT ATTENDANCE
  
  PROCEDURE GET_EMPLOYEE_ATTENDANCE(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN NUMBER, P_START_DATE IN VARCHAR2, P_END_DATE IN VARCHAR2); -- GET ATTENDANCE
  
  PROCEDURE ADD_PERFORMANCE_REVIEW(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN INT,P_REVIEW_DATE IN VARCHAR2,P_PERFORMANCE_SCORE IN INT,P_COMMENTS IN VARCHAR2); -- ADD REVIEW
  
  PROCEDURE UPDATE_PERFORMANCE_REVIEW(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_REVIEW_ID IN INT,P_PERFORMANCE_SCORE IN INT,P_COMMENTS IN VARCHAR2);  -- UPDATE REVIEW
  
  PROCEDURE GET_EMPLOYEE_PERFORMANCE_REVIEWS(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN INT,P_START_DATE IN VARCHAR2,P_END_DATE IN VARCHAR2);  -- GET REVIEW
  
  PROCEDURE DELETE_PERFORMANCE_REVIEW(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_REVIEW_ID IN INT);  --DELETE REVIEW
  
  PROCEDURE GET_EMPLOYEE_PAYROLL_REPORT(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN INT,P_START_DATE IN VARCHAR2,P_END_DATE IN VARCHAR2); -- GET PAYROLL REPORT
  
   FUNCTION GET_EMPLOYEES_BY_DEPARTMENT_ID(F_DEPARTMENT_ID IN INT) RETURN SYS_REFCURSOR;
END XX_GAGAN_HRM_PKG;


CREATE OR REPLACE PACKAGE BODY XX_GAGAN_HRM_PKG
IS
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    PROCEDURE TRACK_ATTENDANCE(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN VARCHAR2, P_DATE IN VARCHAR2, P_STATUS IN VARCHAR2)
    IS
        V_COUNT NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO V_COUNT
        FROM XX_GAGAN_ATTENDANCE_T 
        WHERE EMPLOYEE_ID = P_EMPLOYEE_ID AND ATTENDANCE_DATE = P_DATE;
    
        IF V_COUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Attendance for this employee on the given date already exists.');
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Attendance for this employee on the given date already exists.');
        ELSE
            INSERT INTO XX_GAGAN_ATTENDANCE_T(EMPLOYEE_ID, ATTENDANCE_DATE, STATUS)
            VALUES (P_EMPLOYEE_ID, P_DATE, P_STATUS);
            DBMS_OUTPUT.PUT_LINE('Attendance record inserted.');
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Attendance record inserted.');
        END IF;
    END TRACK_ATTENDANCE;
    
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    PROCEDURE GET_EMPLOYEE_ATTENDANCE(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN NUMBER, P_START_DATE IN VARCHAR2, P_END_DATE IN VARCHAR2)
    IS
        CURSOR ATT_CUR IS
            SELECT EMPLOYEE_ID,ATTENDANCE_DATE,STATUS        
            FROM XX_GAGAN_ATTENDANCE_T
            WHERE EMPLOYEE_ID = P_EMPLOYEE_ID AND ATTENDANCE_DATE BETWEEN P_START_DATE AND P_END_DATE
            ORDER BY ATTENDANCE_DATE;
    BEGIN
        FOR EMP_DATA IN ATT_CUR LOOP  
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: ' || EMP_DATA.EMPLOYEE_ID|| 
                                 ', DATE: ' || EMP_DATA.ATTENDANCE_DATE ||
                                 ', STATUS: ' || EMP_DATA.STATUS);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'EMPLOYEE ID: ' || EMP_DATA.EMPLOYEE_ID|| 
                                 ', DATE: ' || EMP_DATA.ATTENDANCE_DATE ||
                                 ', STATUS: ' || EMP_DATA.STATUS);
        END LOOP;
    END GET_EMPLOYEE_ATTENDANCE;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    PROCEDURE ADD_PERFORMANCE_REVIEW(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN INT,P_REVIEW_DATE IN VARCHAR2,P_PERFORMANCE_SCORE IN INT,P_COMMENTS IN VARCHAR2)
    IS
        V_REVIEW_ID INT;
    BEGIN
        SELECT XX_GAGAN_PERFORMANCE_REVIEW_SEQ.NEXTVAL INTO V_REVIEW_ID FROM DUAL;
        INSERT INTO XX_GAGAN_PERFORMANCE_REVIEW_T (
            REVIEW_ID,
            EMPLOYEE_ID,
            REVIEW_DATE,
            PERFORMANCE_SCORE,
            COMMENTS
        ) VALUES (
            V_REVIEW_ID,
            P_EMPLOYEE_ID,
            P_REVIEW_DATE,
            P_PERFORMANCE_SCORE,
            P_COMMENTS
        );
    
        DBMS_OUTPUT.PUT_LINE('Performance review added of Employee ID ' || P_EMPLOYEE_ID|| ' and generated review id is '|| V_REVIEW_ID);
        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Performance review added of Employee ID ' || P_EMPLOYEE_ID|| ' and generated review id is '|| V_REVIEW_ID);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error occurred while adding the performance review: ' || SQLERRM);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Error occurred while adding the performance review: ' || SQLERRM);
    END ADD_PERFORMANCE_REVIEW;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    PROCEDURE UPDATE_PERFORMANCE_REVIEW(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_REVIEW_ID IN INT,P_PERFORMANCE_SCORE IN INT,P_COMMENTS IN VARCHAR2)
    IS
    BEGIN
        UPDATE XX_GAGAN_PERFORMANCE_REVIEW_T
        SET 
            PERFORMANCE_SCORE = P_PERFORMANCE_SCORE,
            COMMENTS = P_COMMENTS
        WHERE REVIEW_ID = P_REVIEW_ID;
    
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Performance review updated for Review ID ' || P_REVIEW_ID);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Performance review updated for Review ID ' || P_REVIEW_ID);
        ELSE
            DBMS_OUTPUT.PUT_LINE('No review found for the provided Review ID.');
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'No review found for the provided Review ID.');
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error occurred while updating the performance review: ' || SQLERRM);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Error occurred while updating the performance review: ' || SQLERRM);
    END UPDATE_PERFORMANCE_REVIEW;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    PROCEDURE GET_EMPLOYEE_PERFORMANCE_REVIEWS(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN INT,P_START_DATE IN VARCHAR2,P_END_DATE IN VARCHAR2)
    IS
        V_AVG INT;
        
        CURSOR R_CUR IS
            SELECT REVIEW_ID,REVIEW_DATE,PERFORMANCE_SCORE,COMMENTS
            FROM XX_GAGAN_PERFORMANCE_REVIEW_T
            WHERE EMPLOYEE_ID = P_EMPLOYEE_ID
            AND REVIEW_DATE BETWEEN P_START_DATE AND P_END_DATE
            ORDER BY REVIEW_DATE;
    BEGIN
      
        FOR R_DATA IN R_CUR LOOP
            DBMS_OUTPUT.PUT_LINE('Review ID: ' || R_DATA.REVIEW_ID || ', Date: ' || R_DATA.REVIEW_DATE ||', Score: ' || R_DATA.PERFORMANCE_SCORE || ', Comments: ' || R_DATA.COMMENTS);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Review ID: ' || R_DATA.REVIEW_ID || 
                                 ', Date: ' ||R_DATA.REVIEW_DATE ||
                                 ', Score: ' || R_DATA.PERFORMANCE_SCORE || 
                                 ', Comments: ' || R_DATA.COMMENTS);
        IF R_CUR%NOTFOUND THEN
            DBMS_OUTPUT.PUT_LINE('No reviews found for Employee ID ' || P_EMPLOYEE_ID || ' between ' || P_START_DATE || ' and ' || P_END_DATE);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'No reviews found for Employee ID ' || P_EMPLOYEE_ID || ' between ' || P_START_DATE || ' and ' ||P_END_DATE);
        END IF;
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error occurred while fetching the performance reviews: ' || SQLERRM);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Error occurred while fetching the performance reviews: ' || SQLERRM);
    END GET_EMPLOYEE_PERFORMANCE_REVIEWS;
  
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    PROCEDURE DELETE_PERFORMANCE_REVIEW(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_REVIEW_ID IN INT)
    IS
    BEGIN
        DELETE FROM XX_GAGAN_PERFORMANCE_REVIEW_T 
        WHERE REVIEW_ID = P_REVIEW_ID;
    
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Performance review deleted for Review ID ' || P_REVIEW_ID);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Performance review deleted for Review ID ' || P_REVIEW_ID);
        ELSE
            DBMS_OUTPUT.PUT_LINE('No review found for the provided Review ID.');
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'No review found for the provided Review ID.');
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error occurred while deleting the performance review: ' || SQLERRM);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Error occurred while deleting the performance review: ' || SQLERRM);
    END DELETE_PERFORMANCE_REVIEW;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    PROCEDURE GET_EMPLOYEE_PAYROLL_REPORT(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_EMPLOYEE_ID IN INT,P_START_DATE IN VARCHAR2,P_END_DATE IN VARCHAR2)
    IS
        CURSOR payroll_cursor IS
            SELECT 
                PAYROLL_ID,
                PAY_DATE,
                BASE_SALARY,
                BONUS,
                DEDUCTION,
                TOTAL_SALARY
            FROM XX_GAGAN_PAYROLL_T
            WHERE EMPLOYEE_ID = P_EMPLOYEE_ID
            AND PAY_DATE BETWEEN P_START_DATE AND P_END_DATE
            ORDER BY PAY_DATE;
    BEGIN
        FOR payroll IN payroll_cursor LOOP
            DBMS_OUTPUT.PUT_LINE('Payroll ID: ' || payroll.PAYROLL_ID ||
                                 ', Date: ' || payroll.PAY_DATE ||
                                 ', Base Salary: ' || payroll.BASE_SALARY ||
                                 ', Bonus: ' || NVL(payroll.BONUS, 0) ||
                                 ', Deduction: ' || NVL(payroll.DEDUCTION, 0) ||
                                 ', Total Salary: ' || payroll.TOTAL_SALARY);
             FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Payroll ID: ' || payroll.PAYROLL_ID ||
                                 ', Date: ' || payroll.PAY_DATE ||
                                 ', Base Salary: ' || payroll.BASE_SALARY ||
                                 ', Bonus: ' || NVL(payroll.BONUS, 0) ||
                                 ', Deduction: ' || NVL(payroll.DEDUCTION, 0) ||
                                 ', Total Salary: ' || payroll.TOTAL_SALARY);
    
        IF payroll_cursor%NOTFOUND THEN
            DBMS_OUTPUT.PUT_LINE('No payroll records found for Employee ID ' || P_EMPLOYEE_ID ||
                                 ' between ' || P_START_DATE ||
                                 ' and ' || P_END_DATE);
                                 
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'No payroll records found for Employee ID ' || P_EMPLOYEE_ID ||
                                 ' between ' || P_START_DATE ||
                                 ' and ' ||P_END_DATE);
        END IF;
        END LOOP;                         
                                 
    
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error occurred while fetching payroll report: ' || SQLERRM);
            FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'Error occurred while fetching payroll report: ' || SQLERRM);
    END GET_EMPLOYEE_PAYROLL_REPORT;
  
 -- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--------------------------------------- FUNCTION TO FIND EMPLOYEES WHEN ENTER DEPT ID ----------------------------------------------------

    FUNCTION GET_EMPLOYEES_BY_DEPARTMENT_ID(
        F_DEPARTMENT_ID IN INT
    ) 
    RETURN SYS_REFCURSOR  -- USE TO RETURN A CURSOR
    IS
        EMP_CUR SYS_REFCURSOR;
    BEGIN
        OPEN EMP_CUR FOR
            SELECT 
                EMPLOYEE_ID,
                EMPLOYEE_NAME,
                JOB_TITLE,
                CITY,
                EMAIL,
                PHONE
            FROM XX_GAGAN_EMPLOYEE_T
            WHERE DEPARTMENT_ID = F_DEPARTMENT_ID;
        
        RETURN EMP_CUR;
    END;

END XX_GAGAN_HRM_PKG;
  /
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> END OF PACKAGE BODY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

DECLARE
V_ERRBUFF VARCHAR2(100);
V_RET_CODE VARCHAR2(100);
BEGIN
--XX_GAGAN_HRM_PKG.TRACK_ATTENDANCE(V_ERRBUFF,V_RET_CODE,50003,TO_DATE('2024-12-14', 'YYYY-MM-DD'), 'Present');
--XX_GAGAN_HRM_PKG.GET_EMPLOYEE_ATTENDANCE(V_ERRBUFF,V_RET_CODE,50003,TO_DATE('2024-01-15', 'YYYY-MM-DD'),TO_DATE('2024-12-14', 'YYYY-MM-DD'));
--XX_GAGAN_HRM_PKG.ADD_PERFORMANCE_REVIEW(V_ERRBUFF,V_RET_CODE,50002, TO_DATE('2024-12-13', 'YYYY-MM-DD'), 90, 'Excellent, Professional');
--XX_GAGAN_HRM_PKG.UPDATE_PERFORMANCE_REVIEW(V_ERRBUFF,V_RET_CODE,22,90,'Nice, Professional,Talented');
--XX_GAGAN_HRM_PKG.GET_EMPLOYEE_PERFORMANCE_REVIEWS(V_ERRBUFF,V_RET_CODE,50002, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'));
--XX_GAGAN_HRM_PKG.DELETE_PERFORMANCE_REVIEW(V_ERRBUFF,V_RET_CODE,22);
--XX_GAGAN_HRM_PKG.GET_EMPLOYEE_PAYROLL_REPORT(V_ERRBUFF,V_RET_CODE,50001, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'));
XX_GAGAN_HRM_PKG.XX_GAGAN_EXECUTE_HRM_PROCESSES(V_ERRBUFF,V_RET_CODE,50001,'2024-12-15');
END;

SELECT * FROM XX_GAGAN_EMPLOYEE_T;


select * from fnd_lookup_values order by creation_date desc;  -- LOOK UP 
select * from fnd_lookup_values WHERE LOOKUP_TYPE='XX_GAGAN_HRM_CITY'; 
select * from fnd_flex_value_sets order by creation_date desc; -- VALUE SET



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> MASTER PROCEDURE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
/
CREATE OR REPLACE PROCEDURE XX_GAGAN_EXECUTE_HRM_PROCESSES(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_DEPT_ID IN INT)
    IS
        P_ERRBUFF VARCHAR2(100);
        P_RETCODE VARCHAR2(100);
    BEGIN
--    P_EMPLOYEE_ID IN VARCHAR2,P_DATE IN VARCHAR2,P_STATUS IN VARCHAR2,
--                                             P_START_DATE IN VARCHAR2,P_END_DATE IN VARCHAR2,P_PERFORMANCE_SCORE IN INT,P_REVIEW_ID IN INT,P_COMMENTS IN VARCHAR2,
    
        -- Track Attendance
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'MARKING ATTENDANCE');
--        XX_GAGAN_HRM_PKG.TRACK_ATTENDANCE(P_ERRBUFF, P_RETCODE, P_EMPLOYEE_ID, P_DATE, P_STATUS);
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
--        -- Get Employee Attendance 
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'GET ATTENDANCE');
--        XX_GAGAN_HRM_PKG.GET_EMPLOYEE_ATTENDANCE(P_ERRBUFF, P_RETCODE, P_EMPLOYEE_ID, P_START_DATE, P_END_DATE);
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
--        -- Add Performance Review
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'ADDING REVIEW');
--        XX_GAGAN_HRM_PKG.ADD_PERFORMANCE_REVIEW(P_ERRBUFF, P_RETCODE, P_EMPLOYEE_ID, P_DATE, P_PERFORMANCE_SCORE, P_COMMENTS);
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
--        -- Update Performance Review
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'UPDATING REVIEW');
--        XX_GAGAN_HRM_PKG.UPDATE_PERFORMANCE_REVIEW(P_ERRBUFF, P_RETCODE, P_REVIEW_ID, P_PERFORMANCE_SCORE, P_COMMENTS); -- Assume REVIEW_ID is 1 for update
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
--        -- Get Performance Reviews
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'GETTING REVIEW');
--        XX_GAGAN_HRM_PKG.GET_EMPLOYEE_PERFORMANCE_REVIEWS(P_ERRBUFF, P_RETCODE, P_EMPLOYEE_ID, P_START_DATE, P_END_DATE);
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
--        -- Delete Performance Review
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'DELETE REVIEW');
--        XX_GAGAN_HRM_PKG.DELETE_PERFORMANCE_REVIEW(P_ERRBUFF, P_RETCODE, P_REVIEW_ID ); -- Assume REVIEW_ID is 1 for delete
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
--        -- Get Payroll Report
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'PAYROLL REPORT');
--        XX_GAGAN_HRM_PKG.GET_EMPLOYEE_PAYROLL_REPORT(P_ERRBUFF, P_RETCODE, P_EMPLOYEE_ID, P_START_DATE, P_END_DATE);
--        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'');
--        -- GET DETAILS OF EMPLOYEE BY DEPT ID
        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'DETAILS OF EMPLOYEE FOR GIVE DEPARTMENT ID ');
        DECLARE
            emp_cursor SYS_REFCURSOR;
            
            emp_id        XX_GAGAN_EMPLOYEE_T.EMPLOYEE_ID%TYPE;
            emp_name      XX_GAGAN_EMPLOYEE_T.EMPLOYEE_NAME%TYPE;
            job_title     XX_GAGAN_EMPLOYEE_T.JOB_TITLE%TYPE;
            city          XX_GAGAN_EMPLOYEE_T.CITY%TYPE;
            email         XX_GAGAN_EMPLOYEE_T.EMAIL%TYPE;
            phone         XX_GAGAN_EMPLOYEE_T.PHONE%TYPE;
        BEGIN
        
            emp_cursor := GET_EMPLOYEES_BY_DEPARTMENT_ID(P_DEPT_ID); -- Example department ID
        
            LOOP
                FETCH emp_cursor INTO emp_id, emp_name, job_title, city, email, phone;
        
                EXIT WHEN emp_cursor%NOTFOUND;
                DBMS_OUTPUT.PUT_LINE('ID: ' || emp_id || ', Name: ' || emp_name || ', Job Title: ' || job_title || ', City: ' || city || ', Email: ' || email || ', Phone: ' || phone);
                FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'ID: ' || emp_id || ', Name: ' || emp_name || ', Job Title: ' || job_title || ', City: ' || city || ', Email: ' || email || ', Phone: ' || phone);
            END LOOP;
        
            CLOSE emp_cursor;
        END;
END XX_GAGAN_EXECUTE_HRM_PROCESSES;


CREATE OR REPLACE PROCEDURE XX_GAGAN_GET_DETAIL_BY_DEPT_ID(ERRBUFF VARCHAR2,RETCODE VARCHAR2,P_DEPT_ID IN INT)
    IS
        P_ERRBUFF VARCHAR2(100);
        P_RETCODE VARCHAR2(100);
    BEGIN

        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'---------------------------------------------------------------------------------------------');
        FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'DETAILS OF EMPLOYEE FOR GIVE DEPARTMENT ID ');
        DECLARE
            emp_cursor SYS_REFCURSOR;
            
            emp_id        XX_GAGAN_EMPLOYEE_T.EMPLOYEE_ID%TYPE;
            emp_name      XX_GAGAN_EMPLOYEE_T.EMPLOYEE_NAME%TYPE;
            job_title     XX_GAGAN_EMPLOYEE_T.JOB_TITLE%TYPE;
            city          XX_GAGAN_EMPLOYEE_T.CITY%TYPE;
            email         XX_GAGAN_EMPLOYEE_T.EMAIL%TYPE;
            phone         XX_GAGAN_EMPLOYEE_T.PHONE%TYPE;
        BEGIN
        
            emp_cursor := GET_EMPLOYEES_BY_DEPARTMENT_ID(P_DEPT_ID); -- Example department ID
        
            LOOP
                FETCH emp_cursor INTO emp_id, emp_name, job_title, city, email, phone;
        
                EXIT WHEN emp_cursor%NOTFOUND;
                DBMS_OUTPUT.PUT_LINE('ID: ' || emp_id || ', Name: ' || emp_name || ', Job Title: ' || job_title || ', City: ' || city || ', Email: ' || email || ', Phone: ' || phone);
                FND_FILE.PUT_LINE(FND_FILE.OUTPUT,'ID: ' || emp_id || ', Name: ' || emp_name || ', Job Title: ' || job_title || ', City: ' || city || ', Email: ' || email || ', Phone: ' || phone);
            END LOOP;
        
            CLOSE emp_cursor;
        END;
END XX_GAGAN_GET_DETAIL_BY_DEPT_ID;
/
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


DECLARE
    -- Define variables for input parameters
    V_EMPLOYEE_ID VARCHAR2(100) := '50001';  -- Example Employee ID
    V_DATE DATE := TO_DATE('2024-12-14', 'YYYY-MM-DD');  -- Example Date
    V_STATUS VARCHAR2(20) := 'Present';  -- Example Attendance Status
    V_START_DATE DATE := TO_DATE('2024-01-01', 'YYYY-MM-DD');  -- Example Start Date
    V_END_DATE DATE := TO_DATE('2024-12-31', 'YYYY-MM-DD');  -- Example End Date
    V_PERFORMANCE_SCORE INT := 85;  -- Example Performance Score
    V_REVIEW_ID INT := 20;  -- Example Review ID (for update and delete operations)
    V_COMMENTS VARCHAR2(500) := 'Good performance';  -- Example Comments
    V_DEPT_ID INT := 1001;
    -- Define variables for output parameters
    V_ERRBUFF VARCHAR2(100);
    V_RETCODE VARCHAR2(100);
BEGIN
    -- Call the procedure
    XX_GAGAN_EXECUTE_HRM_PROCESSES(
        V_ERRBUFF, 
        V_RETCODE, 
        V_EMPLOYEE_ID, 
        V_DATE, 
        V_STATUS, 
        V_START_DATE, 
        V_END_DATE, 
        V_PERFORMANCE_SCORE, 
        V_REVIEW_ID, 
        V_COMMENTS,
        V_DEPT_ID
    );
    
    
END;

SET SERVEROUTPUT ON;

COMMIT;