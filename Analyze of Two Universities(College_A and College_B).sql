
-- 1. Create new schema as alumni
create database alumni;
-------------------------------------------------------------------------------------------------------------------------
-- 2. Import all .csv files into MySQL
/*
-- After creating a database (alumni).
-- then right click on the alumni database.
-- there select (Table Data Import Wizard) 
-- and select file to import and finish.
*/
use alumni;
show tables;
-------------------------------------------------------------------------------------------------------------------------
-- 3. Run SQL command to see the structure of six tables
desc college_a_hs;
desc college_a_se;
desc college_a_sj;
desc college_b_hs;
desc college_b_se;
desc college_b_sj;
--------------------------------------------------------------------------------------------------------------------------
/*
-- 4.Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ)
	-- with Python.

		College_A_HS
import mysql
import mysql.connector
testdb=mysql.connector.connect(host='Localhost',user='root',password='6281',database='alumni')
cur_a_hs=testdb.cursor()
cur_a_hs.execute('select * from college_a_hs limit  1000')
cur_a_hs.fetchall()

		 College_A_SE
cur_a_se=testdb.cursor()
cur_a_se.execute('select * from college_a_se limit  1000')
cur_a_se.fetchall()

		College_A_SJ
cur_a_sj=testdb.cursor()
cur_a_sj.execute('select * from college_a_sj limit  1000')
cur_a_sj.fetchall()      
 
		College_B_HS
cur_b_hs=testdb.cursor()
cur_b_hs.execute('select * from college_b_hs limit  1000')
cur_b_hs.fetchall()

		College_B_SE
cur_b_se=testdb.cursor()
cur_b_se.execute('select * from college_b_se limit  1000')
cur_b_se.fetchall()

		College_B_SJ
cur_b_sj=testdb.cursor()
cur_b_sj.execute('select * from college_b_sj limit  1000')
cur_b_sj.fetchall()
        
*/
----------------------------------------------------------------------------------------------------------------------------

-- 5.Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) 
	-- into MS Excel.

-- College_A_HS
	/*
    1. open MS-Excel
    2. Select data on menu bar,then click on MySQL_for_Excel
    3. Then Double click on the Local_instanse for Excel and give root password to connect available Databases in sql.
    4. After that double click on the (alumni database), and select the table (College_A_HS) 
    5. Now click on the ( import mysql data ) you get small widget there and goto advance settings and give limit as 15000.
    6. the data of College_A_HS will be imported to excel.
    
    */

 -- College_A_SE
 /*
	1. open MS-Excel
    2. Select data on menu bar,then click on MySQL_for_Excel
    3. Then Double click on the Local_instanse for Excel and give root password to connect available Databases in sql.
    4. After that double click on the (alumni database), and select the table (College_A_SE) 
    5. Now click on the ( import mysql data ) you get small widget there and goto advance settings and give limit as 15000.
    6. the data of College_A_SE will be imported to excel.
*/
 -- College_A_SJ
 /*
	1. open MS-Excel
    2. Select data on menu bar,then click on MySQL_for_Excel
    3. Then Double click on the Local_instanse for Excel and give root password to connect available Databases in sql.
    4. After that double click on the (alumni database), and select the table (College_A_SJ) 
    5. Now click on the ( import mysql data ) you get small widget there and goto advance settings and give limit as 15000.
    6. the data of College_A_SJ will be imported to excel.
 */
 
 -- College_B_HS
 /*
	1. open MS-Excel
    2. Select data on menu bar,then click on MySQL_for_Excel
    3. Then Double click on the Local_instanse for Excel and give root password to connect available Databases in sql.
    4. After that double click on the (alumni database), and select the table (College_B_HS) 
    5. Now click on the ( import mysql data ) you get small widget there and goto advance settings and give limit as 15000.
    6. the data of College_B_HS will be imported to excel.
 */
 
 -- College_B_SE
 /*
	1. open MS-Excel
    2. Select data on menu bar,then click on MySQL_for_Excel
    3. Then Double click on the Local_instanse for Excel and give root password to connect available Databases in sql.
    4. After that double click on the (alumni database), and select the table (College_B_SE) 
    5. Now click on the ( import mysql data ) you get small widget there and goto advance settings and give limit as 15000.
    6. the data of College_B_SE will be imported to excel.
 */
 
--  College_B_SJ
/*
	1. open MS-Excel
    2. Select data on menu bar,then click on MySQL_for_Excel
    3. Then Double click on the Local_instanse for Excel and give root password to connect available Databases in sql.
    4. After that double click on the (alumni database), and select the table (College_B_SJ) 
    5. Now click on the ( import mysql data ) you get small widget there and goto advance settings and give limit as 15000.
    6. the data of College_B_SJ will be imported to excel.
*/

--------------------------------------------------------------------------------------------------------------------------

-- 6. Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values.
use alumni;
select * from college_a_hs;
CREATE VIEW College_A_HS_V AS
    SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo is not NULL AND LastUpdate is not NULL
            AND Name is not NULL
            AND FatherName is not NULL
            AND MotherName is not NULL
            AND Branch is not NULL
            AND Batch is not NULL
            AND Degree is not NULL
            AND PresentStatus is not NULL
            AND EntranceExam is not NULL
            AND Institute is not NULL
            AND Location is not NULL;
            
select * from college_a_hs_v;
----------------------------------------------------------------------------------------------------------------------------------

-- 7. Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.

select * from college_a_se;

CREATE VIEW College_A_SE_V AS
    SELECT 
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;

select * from College_A_SE_V;

------------------------------------------------------------------------------------------------------------------------------

-- 8. Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.

select * from college_a_sj;

CREATE VIEW College_A_SJ_V AS
    SELECT 
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
select * from College_A_SJ_V;
------------------------------------------------------------------------------------------------------------------------------------

-- 9. Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.

select * from college_b_hs;

CREATE VIEW College_B_HS_V AS
    SELECT 
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;

select * from College_B_HS_V;
----------------------------------------------------------------------------------------------------------------------------------

-- 10. Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.

select * from college_b_se;

CREATE VIEW College_B_SE_V AS
    SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;

select * from College_B_SE_V;
-----------------------------------------------------------------------------------------------------------------------------------

-- 11. Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V.

select * from college_b_sj;

CREATE VIEW College_B_SJ_V AS
    SELECT 
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;

select * from College_B_SJ_V;
------------------------------------------------------------------------------------------------------------------------------------

-- 12. Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views 
     -- (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V)

use alumni;

-- College_A_HS_V
delimiter //
create  procedure college_a_hs_sp()
begin
select lower(name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from  College_A_HS_V;
end //
delimiter ;

call college_a_hs_sp();

-- College_A_SE_V
delimiter //
create  procedure college_a_se_sp()
begin
select lower(name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from  College_A_SE_V;
end //
delimiter ;

call college_a_se_sp();

-- College_A_SJ_V
delimiter //
create  procedure college_a_sj_sp()
begin
select lower(name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from  College_A_SJ_V;
end //
delimiter ;

call college_a_sj_sp();

--  College_B_HS_V
delimiter //
create  procedure college_b_hs_sp()
begin
select lower(name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from  College_B_HS_V;
end //
delimiter ;

call college_b_hs_sp();

-- College_B_SE_V
delimiter //
create  procedure college_b_se_sp()
begin
select lower(name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from  College_B_SE_V;
end //
delimiter ;

call college_b_se_sp();

-- College_B_SJ_V
delimiter //
create  procedure college_b_sj_sp()
begin
select lower(name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from  College_B_SJ_V;
end //
delimiter ;

call college_b_sj_sp();
-----------------------------------------------------------------------------------------------------------------------------------

-- 13. Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
		-- into MS Excel and make pivot chart for location of Alumni.
        
--      -------------------ANS ARE ATTACHED AS SCREENSHOTS.--------------------------

-----------------------------------------------------------------------------------------------------------------------------------
 -- 14. Write a query to create procedure get_name using the cursor to fetch names of all students from college A.
 
 use alumni;
select * from college_a;

delimiter $$
create procedure get_name()
begin
declare temp text;
declare finished int default 0;
declare Name1 text default "";
declare cursor1 cursor for select Name from college_a;
declare continue handler for not found set finished =1;
open cursor1;
L_var : loop
	fetch cursor1 into temp;
	if finished =1 then leave L_var;
	end if;
	set Name1 =concat(temp,";",Name1);
end loop;
select Name1;
close cursor1;
end $$
delimiter ;
 
call get_name();
 
----------------------------------------------------------------------------------------------------------------------------------

-- 15. Write a query to create procedure get_name using the cursor to fetch names of all students from college B.

use alumni;
select * from college_b;

delimiter $$
create procedure get_name1()
begin
declare temp1 text;
declare finished int default 0;
declare Name2 text default "";
declare cursor2 cursor for select Name from college_b;
declare continue handler for not found set finished =1;
open cursor2;
L_var : loop
	fetch cursor2 into temp1;
	if finished =1 then leave L_var;
	end if;
	set Name2 =concat(temp1,";",Name2);
end loop;
select Name2;
close cursor2;
end $$
delimiter ;
 
call get_name1();

------------------------------------------------------------------------------------------------------------------------------------

-- 16. Calculate the percentage of career choice of College A and College B Alumni 
		-- (w.r.t Higher Studies, Self Employed and Service/Job).     

-- COLLEGE_A

select * from college_a;
select * from college_a_hs;
SELECT 
    'Higher_Studies' AS 'Career__Choice',
    (COUNT(college_A_HS.rollno) / 5884) * 100 'College A(%)'
FROM
    College_A_HS 
UNION SELECT 
    'Self_Employed',
    (COUNT(college_A_SE.rollno) / 5884) * 100
FROM
    college_A_SE 
UNION SELECT 
    'Service/Job',
    (COUNT(college_A_SJ.rollno) / 5884) * 100
FROM
    college_A_SJ;

-- COLLEGE_B

select'Higher_Studies' as 'Career__Choice', 
    (COUNT(college_B_HS.rollno) / 2259) * 100 'College_B(%)'
FROM
    college_B_HS 
UNION SELECT 
    'Self_Employes',
    (COUNT(college_B_SE.rollno) / 2259) * 100 
FROM
    college_B_SE 
UNION SELECT 
    'Service/Job',
    (COUNT(college_B_SJ.rollno) / 2259) * 100
FROM
    college_B_SJ;




