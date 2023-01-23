# PostgreSQl

# Database

* A Database is a place where we can store, retrieve and manipulate the data like adding new-items, updating the existing content and deleting from the existing content.

* This is Database is simply a computer server which helps to store the data in a Table format and allows to retrieve , manipulate and other operations.

## Example

* Usually most of the websites we see or we use in our day-to-day life are using the database to store the data about us. Let us consider FaceBook , They store our profile information, our likes, our friends List and etc.

# PostgreSQL:

* In the word <b>PostgreSQL</b>,

  * Postgres is the actual database Engine and

  * SQL - Structured Query Language.

### Database Engine :

* The Database Engine is the software that is used by the DBMS ( Database Management Systems ) to make CRUD operations like CREATE , RETRIEVE , UPDATE and DELETE in the Database.

* Postgres is one of the database Engines .

* It is Opensource, Roubust ( Powerfull ) and so on.

### SQL -> Structured Query Language :

* SQL is a programming Language which is used to interact with Database using the commands.

* SQL allows us to manage the data in a relational DataBase.

* It is Easy,Powerful and Widely used all over the Internet.

### Example SQL command :

```sql
SELECT first_name FROM person
```
* In the above command ,

 * 'SELECT' is the SQL command to choose something from database.

 * 'first_name' is the <b>Column Name</b> in the DataBase.

 * 'FROM' is also a SQL keyword to choose from something.

 * 'person' is the <b>Table Name</b>

# How data is stored?

* Data is stored in the <b>Table</b>.

## Table :

* The Table is the formed with Two major things. They are:

 * Columns

 * Rows

 ### Sample image

 <br><br>

<img src="Assets\pic1.png">

<br><br><br><br>

# Relational DataBase

* The Relational Database is the relation or connection betwen one or more Tables.

* The tables must be connected with some unique_id to connect.

* This is used to partition the data into multiple tables to avoid unnecessary quesry confition .

* We can take the follow image for reference :

<br><br>

<img src="Assets\pic2.png">

<br><br><br><br>


# PostgreSQL:

* Postgres is a Object-Relational Database management System.

* Object-Relational Database Management System ( ORD ) is the database system that composed with the both Object-oriented database model and Relational Database.

* It is Modern and 35 years of active development.

* It is Opensource and easy to learn wheather other database engines like Oracle , MySQl requires the licence to use .

* There are many Database engines are available like PostgreSQl.

# PostgreSQL Installaion in Windows:

* Browse in google like "PostgreSQl".

* Kindly visit the very first link or Use this link :
<a href='https://www.postgresql.org/download/' target="/blank">Click Me to downlload PostgreSQl in WIndows</a>.

* Select 'Windows' option from multiple Operating System options as below:

<br><br>

<img src="Assets\pic3.png">

<br><br><br><br>

* Click on the 'Download the Installer' text which is a link which navigates to the installer page .

<br><br>

<img src="Assets\pic4.png">

<br><br><br><br>


* Download the Latest version of thePostgreSQL for the Windows Os from the listed Table .

<br><br>

<img src="Assets\pic5.png">

<br><br><br><br>

* A file will be downloaded into your system. So open it .

* If we open that file , it will prompt a window like below and press 'next'.
<br><br>

<img src="Assets\pic6.png">

<br><br><br><br>

* Choose the directory where you want to download the PostgreSQL and continue with "next" button.

<br><br>

<img src="Assets\pic7.png">

<br><br><br><br>

* Choose all the option and Select "next" as below image

<br><br>

<img src="Assets\pic8.png">

<br><br><br><br>

* Choose "next" option

<br><br>

<img src="Assets\pic9.png">

<br><br><br><br>

* Select your Password and remember it to connect with the database in future.

<br><br>

<img src="Assets\pic10.png">

<br><br><br><br>

* Leave the Post number as it shows like '5432' and press "next"


<br><br>

<img src="Assets\pic11.png">

<br><br><br><br>

* Leave the Local as it have as below an give "next"

<br><br>

<img src="Assets\pic12.png">

<br><br><br><br>

* Press "next" as below:

<br><br>

<img src="Assets\pic13.png">

<br><br><br><br>

* It will prompt the Success screen. Press "Next" as follow:

<br><br>

<img src="Assets\pic14.png">

<br><br><br><br>

* Sample screen While downloading ...

<br><br>

<img src="Assets\pic15.png">

<br><br><br><br>

* Unselect the "stackBuilder Option" and select the "Finish".

<br><br>

<img src="Assets\pic16.png">

<br><br><br><br>

* Now the SETUP has Finished.

* So now you can find the SQL and pgAdmin installed in your device.

<br><br>

<img src="Assets\pic17.png" width="500px"> <br><br>
<img src="Assets\pic18.png" width="500px">

<br><br><br><br>

# Connecting to DataBase:

* As our computer acts as server which provides data , anyone can access to the database and view , edit or delete the operations whichever the database allows.

* So there are the following ways available to connect with the Database.

```

* GUI Client         --> It is very easy interms of understanding the database and performing
                       the operations in it.

* Terminal Commands  --> It is used to learn the terminal commands and helps to
                         understand the manipulation in database very deeply.

* Applications       --> Using the open source application that serves the database.

```

# Setup PSQL in windows :

* As we have installed the Postgres , we can see the 'pgAdmin' and 'p sql shell' in the postges application.

* Here pgAdmin is the GUI ( Graphical User Interface ) to the postgres database and psql is the command line interface to interact with the database.

* Open the psql by clicking the left bottom windows icon and type 'sql' ,  a command line will open .

* There we can set up our sql .

* Initial screen will be look like below:

<br><br>

<img src="Assets\pic19.png" width="500px"> <br><br>

<br>

* It will prompt some questions as listed below :

<br><br>

<img src="Assets\pic20.png" width="500px"> <br><br>

<br>

* According to the above image ,

  * 1 represents the server : Initially we will work in LocalHost , so press "Enter" to accept default option localHost.

  * 2 represents the Database to get acccess : Initally we are not created any databse , so we will use default postgres database . So press "Enter" to accept the default.

  * 3 represents the Port : The default port for postgres is 5432 . So press "Enter" to accept the default.

  * 4 represents the Userame : postgres is the username as default. So press "Enter" to accept the default userName.

  * 5 represents the password : As we have setup a password while we configure with the postgres , we should provide the same password. So type the password and press "Enter".

* Once we finish answering the questions prompted by the cli , it will prmpt `postgres=#`

* NOTE : IT will also fail when we do mistakes like entering wrong password or choose to connect with the database which is not present as below image .

<br>

<img src="Assets\pic21.png" width="500px"> <br><br>

<br>

# Create DataBase :

```
psql
```

```
\q           // To quit the current path of postgres or move back
```

```
\l        // To list the databases available.
```

* The SQL command to create the Database as below:

```
CREATE DATABASE demo;                 // Use Uppercase for Sql commands to differentiate. But still
                                        we can use lowercase always
```
<img src="Assets\pic22.png" width="500px"> <br><br>

# Connect to Databse

* The simple way to connect to the database is using \c command with the databae name as below.

* We can connect to different databses using the same command.

```
\c database_name
```

<img src="Assets\pic23.png" width="500px"> <br><br>

# Delete Database :

* To Delete any database use the below command :

```
DROP DATABASE database_name;
```

* NOTE : Kindly check twice before deleting any database because all data will be vanishd once you use this command.

<img src="Assets\pic24.png" width="500px"> <br><br>

### NOTE : We cannot delete the database which we are currently connecting to.

<br>

# Create Table :

## Table without any constrains:

* Connect to any Database with the `\c` command and then create Database with the following structure.

```
CREATE TABLE (
    column_name + Data_type + Constrains if any
);
```

```
\d                 // describe which lists the tables.
\d table-name      // describe the pariticular table.
```
<br>

<img src="Assets\pic25.png" width="500px"> <br><br>

# Delete Table :

* To delete table , the below command can be used,

```
DROP TABLE table_name;
```
<img src="Assets\pic26.png" width="500px"> <br><br>

## Table with Constrains:

* We can create out Table columns with constrains like , NOT NULL , Primary Key .

* Let us consider our id column of the person table is unique for every row . So we can make it as  a Primary Key inorder to use it to connect with another table in future.

### Constrains :

```
NOT NULL               // Required Columns
PRIMARY KEY            // It helps to connect this column with another table.
```

### Data Types :

```
BIGSERIAL             // It will increment by 1 value for each column like serial no.
DATE                  // It will get the data in the formate of "YYYY-MM-DD"
```

* So the sample syntax for simple table with constrains may look like below:

```
CREATE TABLE person (
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(10) NOT NULL,
date_of_birth DATE NOT NULL,
email VARCHAR(200)
);
```

<img src="Assets\pic27.png" width="500px"> <br><br>

# Insert Records into Table :

* We have to insert records into our Table by the query . The follwing structure will help us to understand how to do it with the query.

### Common representaion of query to insert table records :

```

INSERT INTO table_name (
    col_name1 , col_name2 ,col_name3 , ...
)
VALUES ('value_for_col1','value_for_col2','value_for_col3' , ... upto to the defined columns );

```

### psql command:

```
\dt                // To describe/list only tables ( It will omit the sequence )
```

* The difference between the commands :

<img src="Assets\pic28.png" width="500px"> <br><br>

## Example insertion :

* For example if we insert first row for the created table person may look like below:

```
INSERT INTO person (
first_name ,
last_name,
gender,
date_of_birth
)
VALUES( 'Vijay' , 'S' , 'MALE' , '2001-03-31' );
```

* So , If the data is successfully inserted then the success message will be prompted by the sql command line as follows:

<br><img src="Assets\pic29.png" width="500px"> <br><br>

# Using the seperate file to create Tabel for large data.

* To get the large amout of data , we can use the mockroo website and download the file to our desktop.

   * Kindly visit this site to get mock data : https://www.mockaroo.com/


### psql command to run a seperate file in psql terminal:

```
\i 'path_of_ the_sql_file_with_forwardSlash'
```

## Example:

* For Example we can dow like below:

```
\i 'C:/Users/Administrator/OneDrive/Documents/Back-end/PostgreSQL/MockData/person.sql'
```
### NOTE : The path should be string and the slash should be forard slash otherwise it will show error.

<br><img src="Assets\pic30.png" width="500px"> <br><br>

# Selecting form table:

* We can select some partition data or full table to view with the help of psql queires.

### psql queries to select from table

```
SELECT FROM Table_name;                      // Selects nothing from table. It will only show the number
                                           of rows in the table.

SELCT * FROM Table_name;                     // Selects everything from table. It will display the
                                                whole table.

SELECT column_name FROM Table_name;          // Selcts specified column.

SELECT col_1,col_2 FROM Table_name;          // Selcts specified columns.

```

## Example :

<br><img src="Assets\pic31.png" width="500px"> <br><br>

# Sorting data using ORDER BY key word:

* ORDER BY is a sql key word to sort the data in the table either in Ascending or Dscending order.

* The dafault order state is Ascending order. So don't nedd to mention the Ascending .

* The keywords for Ascending is `ASC` and Descending is `DES` .

* We can implement to any columns which contains the datatypes as integers, data , string and so on.

* We can only Sort one column at a time.

### psql commands for various ORDER BY queries :

```
SELECT * FROM table_name ORDER BY column_name;

SELECT * FROM table_name ORDER BY column_name ASC;

SELECT * FROM table_name ORDER BY column_name DESC;

----------------------------------------------------------------------------
 SELECT * FROM table_name ORDER BY col1,col2;
 NOTE : We cannot apply sorting for multiple columns.
```
<br><img src="Assets\pic32.png" width="500px"> <br><br>

# DISTINCT keyword :

* The DISTINCT keyword is used with the SELECT method of table to get only unique records.

* It removes the duplicate records from that table column.

### psql command to remoe duplicate data from a table column.

```
SELECT DISTINCT column_name FROM table_name;
```

<br><img src="Assets\pic33.png" width="500px"> <br><br>

# WHERE clause and AND :

* `WHERE` clause helps to filter the columns with some conditions .

* we can filter multiple columns with multiple condition by adding `AND` and `OR` keywords.

### psql command for filter the table items with the conditions :

```
SELECT * FROM table_name WHERE condition_on_col;

SELECT * FROM table_name WHERE condition_on_col1 AND condition_on_col2;

SELECT * FROM tale_name WHERE ( condition_on_col1_first_filter_value OR condition_of_col1_sec_filter_value);
```

<br><img src="Assets\pic34.png" width="500px"> <br><br>

# Comparison Operators :

* The basic compariso operators are used to filter the data with WHERE clause .

* As usual , it will return either true or false .

* The = , < , > <= ,>= are acts as same as javascript.

* The only differenece here is , it will use `<>` symbolt to check non-equality.

* The strings, numbers and dates can also be compared with these comparison operators.

```
SELECT 1=1;
```

<br><img src="Assets\pic35.png" width="500px"> <br><br>

# LIMIT

* Limit is a keyword to Limit the data from a table .

* We can set the number of rows that we need to display using the `LIMIT` keyword.

<br><img src="Assets\pic36.png" width="500px"> <br><br>

# OFFSET

* OFFSET is another keyword which is used to define the start position of the table row.

* If we provide the start row number , it will list the table from the neat row only.

<br><img src="Assets\pic37.png" width="500px"> <br><br>

# FETCH

* FETCH is the official keyword in psql to limit the data in a table.

* We can use FETCH  as below to limit the data in a table.

```
SELECT * FROM table_name FETCH FIRST no_pf_rows ROW ONLY;
```

<br><img src="Assets\pic38.png" width="500px"> <br><br>

# IN

* IN is a keyword that is used to group multiple options while filtering the column data with WHERE keyword.

* It is the simplified way of filtering the data in a column according to condition as it reduces the duplication of column name while defining the condition in query .

* It is similar to using OR keyword but it negotiates the reppetion of column names.

```
SELECT * FROM table_name WHERE coulumn_name IN ( 'value1' , 'value2' , ... );

```

* It is similar to the following structure using OR:

```
SELECT * FROM table_name WHERE column_name = 'value1' OR coulmn_name = 'value2' ;
```

<br><img src="Assets\pic39.png" width="500px"> <br><br>

# BETWEEN

* BETWEEN is a keyword which is used to define our start position and end position of data in the condition operation WHERE.

* We can limit our data using this keyword according to our condition.

```
SELECT * FROM table_name WHERE  column_name BETWEEN start_value AND end_value;
```
<br><img src="Assets\pic40.png" width="500px"> <br><br>

# LIKE

* LIKE operator is used to math the text values against the patterns using the wildcards.

* In this case , wildcards are `%` symblo which can be considered as any value.

* For example , if i want to filter the column that contains text , we can specifyusing the LIKE keyword and `%` as below:

```
SELECT * FROM table_name WHERE column_name LIKE '% the_text_you_want'
```
* We can place our `%` wildcard whereever we want inbetween the text. So that we can define filter text we want to avoid.

* For example , if want to get only the email with extension facebook.com , i can write my query as below:

<br><img src="Assets\pic41.png" width="500px"> <br><br>

* We can also use `__` underscores to specify the number of charecters in a text.

<br><img src="Assets\pic42.png" width="500px"> <br><br>

# ILIKE

* ILIKE is the keyword which acts as same as LIKE but it will ignore case sensitivity where LIKE checks the case also.

* For example , if i check any name starts with letter `b` in a column using ILKIE keyword , it will also bring the data which contains capital `B` as initial letter whereas LIKE won't.

<br><img src="Assets\pic43.png" width="500px"> <br><br>

# GROUP BY

* GROUP BY is a keyword which performs on a column with the COUNT(*) operator to identify the number of values availale on each item in the column.

<br><img src="Assets\pic44.png" width="500px"> <br><br>

# HAVING

* HAVING is a keyword which is used with the GROUP BY key keyword which helps to perform the additional operation on the COUNT(*) operation to filter with the condition.

* COUNT(*) is an aggregating function which returns the single vlue from a list or data.

* There are lot of aggregational function available . We can aware of those by visitig the URL given below:

* https://www.postgresql.org/docs/15/functions-aggregate.html

<br><img src="Assets\pic45.png" width="500px"> <br><br>

# Aggregate Functions :

    * Aggregate functions provide single resullt from many values.

    * MIN , MAX , AVG and ROUND are the vey basic and commnly used aggregate functions.

<br><img src="Assets\pic46.png" width="500px"> <br><br>

# SUM #

* SUM aggregate function is used to add the column values in a table.

<br><img src="Assets\pic47.png" width="500px"> <br><br>

# Arithemetic Operators :

* We can perform Addition , Substraction , Multiplication , division , Modulus , Factorial on numbers using the Artithematic operators like + , - , * , / , % , ! .

<br><img src="Assets\pic48.png" width="500px"> <br><br>

* Here is an example on Arithematic operators :

<br><img src="Assets\pic49.png" width="500px"> <br><br>


# AS keyword :

* AS keyword is used to override the existing column name.

* Sometimes , the SQL will take the Function name as column name . So AS keyword is used to override the default column name.

<br><img src="Assets\pic50.png" width="500px"> <br><br>

# COALESCE :

* COALESCE is a keyword which is used to provide a default value for the null values in a column.

* COALESCE keyword usually takes the next existing value if any value is null in the passes values as follows:

<br><img src="Assets\pic51.png" width="500px"> <br><br>

* For example , If we haven't any email id's in a column , we can mention that empty column with some text like "email is not Provided" using the COALESCE keywors as below:

<br><img src="Assets\pic52.png" width="500px"> <br><br>

# NULLIF

* NULLIF is a keyword which takes two argument.

* It returns null value if two arguments are same .

* It returns the first argument value , if the two arguments are different.

<br><img src="Assets\pic53.png" width="500px"> <br><br>

* This NULLIF keyword is mostly used to avoid divisible by zero errors .

<br><img src="Assets\pic54.png" width="500px"> <br><br>

# Timestamps and Dates:

* Date is a very important to know the exact record creation time , deletion time or updation time in a table.

* We can get the exat current time using the `NOW()` functions and also we can get specific Date and time by mentioning tht DATE and TIME by specifying them with `::` as below example shows:

<br><img src="Assets\pic55.png" width="500px"> <br><br>

## Adding and Substracting Dates.

* We can addand substract dates using the arthemetic operators and the INTERVAL keyword together .

<br><img src="Assets\pic56.png" width="500px"> <br><br>

## Extracting the values from the Timestamp.

* We can get the exact value of year , month or century , Day Of Week (DOW) value from a timetamp in  some situations by using the EXTRACT keyword.

<br><img src="Assets\pic57.png" width="500px"> <br><br>

# AGE function:

* AGE fnction is used to calculate the age.

* It takes two arguments as input , the first argument is Current Date and the second argument is Date_of_birth or year or whatever format of our birth date.

<br><img src="Assets\pic58.png" width="500px"> <br><br>

# Primary Key :

* Primary keys are used to identify the each row with it's own uniquness.

* This primary key constraint is need to be given to a column of a table which contains unique value for all the rows.

* It is helpful when all the column_data are same for more than one row. It differentiates the two rows with the unique primary keys.

## Understanding the Primary Key

* The Primary key can be added as constraints in table creation.

<br><img src="Assets\pic59.png" width="500px"> <br><br>


* This can be found in the table's bottom section. We can see this information while describing the table as below:

<br><img src="Assets\pic60.png" width="500px"> <br><br>


* This primary key won't allow us to create the duplicate column value. It will throw error like the key already exists.

<br><img src="Assets\pic61.png" width="500px"> <br><br>

## Droping Primary Key constrain :

* We can remove the primary key constarin by altering table as below :

<br><img src="Assets\pic62.png" width="500px"> <br><br>

## Adding Primary Key Constrain :

* To add the Primary Key in a table , we must alter the table with Primary Key constraint keyword as below:

```
ALTER TABLE table_name ADD PRIMARY KEY (column_names,,,..);

```
* The PRIMARY KEY keyword's parenthesis may take multiple columns as input in order to define the combined primary_key.

* It won't allow the columns which have duplicate values within it.It will show error if any duplicates found in a column which is tried to use as a Primary_key.

<br><img src="Assets\pic63.png" width="500px"> <br><br>

* The Primary_key column must be unique values.

<br><img src="Assets\pic64.png" width="500px"> <br><br>

# Unique Constraints :

* Unique Constraints are used to have unique values in any columns of a table.

* Unique constraints are not same as Primary Key because primary keys are used to identify a row in a table.

* We can add this unique contraints to any column where we don't want any duplicate column values.

## Adding Unique constraintsm:

* We can add this unique constraints by two methods.

* First method is,

```
ALTER TABLE table_name ADD UNIQUE( column_name);
```

* This method will provide the unique contraints using the postgres name as below:

<br><img src="Assets\pic65.png" width="500px"> <br><br>

* According to the above image ,the name for the unique constraint was given by the postgres.

* If we want to use our own name for the unique constraint , we should follow the second method.

* The second method is ,

```
ALTER TABLE table_name ADD CONSTRAINT unique_constraint_name UNIQUE (column_name OR column_names);
```

<br><img src="Assets\pic66.png" width="500px"> <br><br>

## Droping Unique constraints :

* We can drop our unique constraints whenever we want by using the below command:

```
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
```

* Consider that , we have created the constraint in the name of 'unique_email_id' for email column in a person table. So we can drop the constraint as below:

<br><img src="Assets\pic67.png" width="500px"> <br><br>

## NOTE :

* Unique constraints won't allow to insert the duplicate values into it's column and also we cannot add unique constraints to the column which has the duplicate values.

* We can refer the below images as example :

* As the column has two duplicate emails , we cannot create constraint. it will throw the following error:

<br><img src="Assets\pic68.png" width="500px"> <br><br>

* As we have already created the unique constraint for the column email , we cannot insert duplicate value to the email column. If we try to insert the duplicate value to the email column , it will throw error as below:

<br><img src="Assets\pic69.png" width="500px"> <br><br>

# Check constraints :

* Check constraint is allow us to add a constraint to a column based on a boolean condition.

* These check constraints are used to restrict the column values according to the condtion specified.

## Adding Check Constraint to the table:

* We can add theCheck constraint to the table column by using the below syntax:

```
ALTER TABLE table_name ADD CONSTRAINT check_constraint_name CHECK (condition on column_values);
```

<br><img src="Assets\pic70.png" width="500px"> <br><br>

* We cannot add the check constraints to column which is not satisfyinh the condition we defined in the check constraints.

* It will show violation error message as below if we try to do it.

<br><img src="Assets\pic71.png" width="500px"> <br><br>

# DELETE from Table:

* We can delete the whole table records with the below command. But it is risky.

```
DELETE FROM table_name;
```
<br><img src="Assets\pic72.png" width="500px"> <br><br>

### NOTE : If we create the table with new values , the id number will be continue will not start with the 1.

* We can delete the record in a table according to the condition using the WHERE clause as below:

* For example , If we want to delete only one record whose name id is some number , the we can use the below structure:

```
DELETE FROM table_name WHERE condition;
```
<br><img src="Assets\pic73.png" width="500px"> <br><br>



















































































