# sql-challenge

You will find the ERD image in "EmployeeSQL" folder. It is called "ERD_SQL_Challenge.png".

There are two .sql files in this directory as well. One called "create_tables.sql", which creates all the tables and establishes relationships between them.

The other .sql file, "data_analysis_queries.sql", contains all the queries required to answer the data analysis questions.

I ran the "create_tables.sql" file in PostgreSQL to create the tables. I then read in all the csv files from the "data" directory. I only had to make one change to the CSVs, which was to add a composite key to the dept_emp table. This was necessary because some employees belong to more than one department.

This also came up again during analysis: in question 4, the result has more rows than there are unique employees because some employees belong to more than one department. We could choose to filter to unique employees but that would require us to somehow pick one department per employee.
