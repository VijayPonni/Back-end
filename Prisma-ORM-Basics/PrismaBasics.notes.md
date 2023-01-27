# Prisma ORM :

* Prisma is an Open source tool or ORM ( Object Relational Mapping ) to work with database.

* As SQL queries are not fit to work with Databses in modern app development , the ORM's implemented the Object Relational Mapping.

* The Object Relational Mapping allows to express data with the Object orientated code like Javascript classes.

* Prisma is one among the ORM's.

* Prisma has it's own `Declarative Schema Definition Language`

* In Prisma , we can write schema which is code to handle the data in a simple and human readable way .

* This schema can be inferred with any existing Databases.

* Then Prisma converts the schema into Type Definitions that allows every Type Safe CRUD operations with the connected DataBase.

# Getting Started with Prisma :

## Pre-requests to get Start with Prisma :

* A Relational Database like MySql , postgres or Mongo DB.

* A simple nodeJs project . I have created a simple nodeJs project with the help of the below blog :

<a href="https://levelup.gitconnected.com/set-up-and-run-a-simple-node-server-project-38b403a3dc09"> How to create a simple Nodejs project?</a>

## Steps to get start with Prisma :

## Step 1:

* In an NodeJs Project , Run the below command

```
npx prisma init
```

* This command will install the prisma and creates a new folder named `Prisma` with `schema.prisma` file as below :

<br><img src="Assets\pris1.png"><br>

* it will also create `.env` file where we can connect to our DataBase .

<br><img src="Assets\pris2.png"><br>

## Step 2 :

* To connect with the Database which we already created run the below comand :

```
npx prisma db pull
```
* This command needs to be set up our DataBase in .env file , we must set our Database user name and Password to access it as below:

<br><img src="Assets\pris3.png"><br>

* If anything gets wrong , it will show error.

* If everything works correct , prisma will automatically add the schemas according to the database as below:

   * I have four tables in my database . So , After db pull command my `schema.prisma` file look like below:

<br><img src="Assets\pris4.png"><br>

## Relation between model in prisma file and Databse table:

* After pulling the existing DataBase the models have been automatically added into schema.prisma file .

* This model represents the Table that present the Database.

* For example , I have the Table `car` in DataBase and the Model for the `car` table will look like below :

<br><img src="Assets\pris5.png"><br>

* So the model also have the same table in the Object Oriented Notation with the columns and types of each column and also the Constraints we defined for the columns.

## Step 3 :

* If we want to modify our table , we can edit in the model and run the below command :

```
npx prisma migrate
```

* For example , If decide to add an column to the car table , i must add it in the model like this and run the command ` npx prisma migrate`.

<br><img src="Assets\pris6.png"><br>

## Step 4 :

* To interact with the DataBase in the server we should run te foloowing command :

```
npx prisma generate
```
* This will successfully install and prompt like below image :

<br><img src="Assets\pris7.png"><br>

* We can use this prismaClint by adding the imports in js file where we want work with tout Database.It will also contribute auto-completion while working with the prisma commands which are alternative to the SQL queries.

<br><img src="Assets\pris8.png"><br>












