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

# Where clause and AND :

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

















































































