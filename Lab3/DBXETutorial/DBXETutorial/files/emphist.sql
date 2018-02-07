CREATE TABLE "EMPLOYMENT_HISTORY" AS
  (select	 "JOBS"."JOB_TITLE" as "JOB_TITLE",
	 "DEPARTMENTS"."DEPARTMENT_NAME" as "DEPARTMENT_NAME",
	 "EMPLOYEES"."FIRST_NAME" as "FIRST_NAME",
	 "EMPLOYEES"."LAST_NAME" as "LAST_NAME",
	 "JOB_HISTORY"."START_DATE" as "START_DATE",
	 "JOB_HISTORY"."END_DATE" as "END_DATE" 
 from	 "EMPLOYEES" "EMPLOYEES",
	 "JOB_HISTORY" "JOB_HISTORY",
	 "JOBS" "JOBS",
	 "DEPARTMENTS" "DEPARTMENTS" 
 where   "EMPLOYEES"."EMPLOYEE_ID"="JOB_HISTORY"."EMPLOYEE_ID"
 and	 "JOBS"."JOB_ID"="JOB_HISTORY"."JOB_ID"
 and	 "DEPARTMENTS"."DEPARTMENT_ID"="JOB_HISTORY"."DEPARTMENT_ID");

ALTER TABLE "HR"."EMPLOYMENT_HISTORY" ADD  CONSTRAINT "CONSTRAINT2" UNIQUE ("END_DATE", "LAST_NAME", "START_DATE")  ENABLE  VALIDATE;