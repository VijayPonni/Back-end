# Prisma

# Project Setup :

* We first need to initialize npm with the following command :

```
npm init -y
```

* When we type this command in the terminal , a`package.json` file is created with some basic information like the below image.

<br><img src="Assets\pris1.png" ><br>

* Next we need to install all dependencies with the command :

* Our dependencies are only needed in the development. So we can save all of them in dev-dependencies.

* We need `prisma`

* We need `typescript` as prisma is built on typescript. Technically , we don't want to use typescript.

* We need `ts-node` which takes care of typescript definitions.

* We need `@types/node` which can help us with types on node .

* Additionally we need `nodemon` which allows us to refresh our server for every single changes we make. If we change anything and save the code , it will rerun the code automatically .

```
npm install --save-dev prisma typescript ts-node @types/node nodemon
```

* So . it will create a nodeModules folder with and update the downloaded dependencies inside the package.json file.

<br><img src="Assets\pris2.png" ><br>

* Create a `tsconfig.json` file to configure the typescript in the application. We can find the required tsconfigurations in the Prisma documentation in the below link.

<a href="https://www.prisma.io/docs/guides/upgrade-guides/upgrade-from-prisma-1/upgrading-prisma-binding-to-nexus#12-configure-typescript"> Click tsconfig.json file configuration options</a>

* Copy and paste these configurations in the tsconfig.json file as below :

<br><img src="Assets\pris3.png" ><br>

# Prisma Setup :

* Initialize prisma with the database sourece provide by typing thr following command ( postgresql is our database provider )

```
npx prisma init --datasource-provider postgresql
```
* Once we initialized the prisma , the schema.prisma , .env and .gitignore files will be created in our application like below image shows :

<br><img src="Assets\pris4.png" ><br>

## schema.prisma file :

* It is created under the new prisma folder.

* This file initially contains a generator and a datasouce .

* Our all database tables should be present here as schemas .

<br><img src="Assets\pris5.png" ><br>

## .env file :

* This .env file has the DatabaseUrl to connect with our database server.

* It will initially has the default url.

* `But we need to alter this URL to connect with our own database`.

<br><img src="Assets\pris6.png" ><br>

## .gitignore file :

* It ignores the specified files in git.

* it initially has node_modules and .env files by default. In future , we want to add other files , we can add it to this list .

<br><img src="Assets\pris7.png" ><br>

# Formatting the Prisma code :

* We can format our prisma code everytime we save the file.

* We can achieve this in two ways.

* Oneway of doing this is formatting using the terminal command below :

```
npm prisma format
```
* It formates our code to a readable format .

* The another way of doing this is configuring the vscode settings.

* Open the settings and switch to the JSON format of settings as below :

<br><img src="Assets\pris8.png" ><br>

* In the `Settings.json file` , Add the mentioned `[prisma]` changes , if it already available change the values mentioned in the below image .

<br><img src="Assets\pris9.png" ><br>

# Connecting to the database using the .env file in prisma :

## Generator in the schema.prisma file :

* Our all codes to manipulate or handle the database is going to be take plcae as schemas of schema.prisma file  .

* This file is purely belongs to prisma's own structure or format and not belongs to any other SQL language format.

* So , In order to run this prisma specified code , a prisma provider is required .

* To mention the provider that means to create a environment that runs the prisma code the generator is used.

* `prisma-client-js` provider is mostly used and it is default one.

* If we use graphQl , then generator may be differ but most cases we will only use the default generator only.

<br><img src="Assets\pris10.png" ><br>

## datasourec in schema.prisma file :

* datasourec defines the provider where we get our database like postgres and all . We are using the postgres .

* the second thing that the datasource contains is url of our database which is mentioned in .env file.

<br><img src="Assets\pris11.png" ><br>

* The URL to the databse willbe look like below :

<br><img src="Assets\pris12.png" ><br>

* According to the image , the URL is partinoned as four parts .

   * 1 represents the User.

   * 2 represents the Password .

   * 3 represents the Port number .

   * 4 represents the Database Name . // The database must be already exists.

* So , if i want to connect to my databse , i want to update my own database details the URL as below :

<br><img src="Assets\pris13.png" ><br>

* We can find the user in the `ownername` clumn in our  SQL database by listing the databases:

* My database is demo and owner name is `postgres` as below :

<br><img src="Assets\pris14.png" ><br>

# Basic Prisma Model setup :

* schema Reprsents all of our data .

* Schema's should be created in the schema.prisma file .

* To create a very basic schema , first create model with the name you want and with the open and close curely bracs as below structure :

* Every model takes the defines inside it's own curly bracs . So we need to define model within the curely bracs .

### schema.prisma file :

```
.
.
.

model model_name {
.
.
.
}

```
* For example , If we want User Information whih means data , then we can initialize the User model as below :

<br><img src="Assets\pris15.png" ><br>

* We can see the error showing in the above image that suggests like below :

<br><img src="Assets\pris16.png" ><br>

* As the suggession says , model shuld be initializs with some `id`.

* We can do this as below :

```
model model_name {
  id_name id_type @id @default( default_value_of_id )
}
```

* So , I have created the id with type Int and the deafult value of autoincreament() function as below :

<br><img src="Assets\pris17.png" ><br>

* We can add other data of User like below :

```
model model_name {
    id_name id_type @id @default( value )
    second_data_name type_of_data
    .
    .
    .
}
```

* I have added a name attribue to the User Model as below :

<br><img src="Assets\pris18.png" ><br>

# Prisma Migration Basics :

* Prisma file is not connected to our database in any ways. So , the changes we are doing in this schema.prisma file will not be reflected in the database .

* So far we have created Model named `User` in our prima folder . To  make this change reflect in our database , we need to migrate with the command as follows :

```
npx prisma migrate
```

* We can optionally pass name and environment also.

```
npx prisma migrate environment_name --name name_of_the_migration
```
* If I want to do a migration after the User model creation , i will use the below command :

```
npx prisma migrate dev --name --name initial
```
* Once the migration happens successfully, the new folder named `migrations` will be created inside the prisma folder.

<br><img src="Assets\pris19.png" ><br>

* Inside that , the migration file will contain the SQL query for the defined schema in our schema.prisma file .

* As we have created a model with id and name attributes the query is reflected as create table with the columns id and name and also id as primary key as below :

<br><img src="Assets\pris20.png" ><br>

* After migrating our changes , the database is changed according to our schema in prisma.

# Prisma Client Basics :

* Once we migrate , the brand new prisma client is created as we see in the below image :

<br><img src="Assets\pris21.png" ><br>

* This prisma client is generated using the generator in the schema.prisma file .

* The client is simply the full code that determins the interaction between the schema we have in the schema.prisma file with the exact database.

* This client only allows us to update , edit and other opertaions on our database .

* It is full of types using the Typescript . So , it can give us the TypeSafety .

## Installing the Client Library :

* To install such client , we should use the below command :

```
npm i @prisma/client
```
* Once we install prisma/client , it will provide back with areference to access the prisma code .

* As we already know , the prisma client will contain the bunch of typescript code to interact with our database according to our schema.prisma file . So , this reference to the prisma/client will allow us to handle the database like create , edit update and delete and so on .

<br><img src="Assets\pris22.png" ><br>

## regenerating the client/library :

* If we want to regenerate our prisma/client library , we can apply the below command :

```
npx prisma generate
```

* It will update the client and provide the reference to the client a below :

<br><img src="Assets\pris23.png" ><br>

## Accessing the Prisma Client :

* We can access the prisma client by using the referenece provided when we installed prisma/client libray .

* The reference is something like below :

```
import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()
```
* We should add it in a brand new typescript file inside the application .

* I have created the `script.ts` file and added the reference as below :

<br><img src="Assets\pris24.png" ><br>

## Using async awiat :

* Everything in Prisma is an asynchronous which means everything needs to run , wait and finish the execution .

* So using async , await in the prisma will be easy to handle.

* The structure may look like below :

### scripts.ts file :

```
async function main() {
    // We can write our Prisma client queries here
}

main()
    .catch(
        e => {
            console.error(e.message)
        }
    )
    .finally(
        async () => {
            await prisma.$disconnect();         // Disconnects the prisma . It automatically occurs but adding here is
                                                   also Not Problem . ( Not manditory )
        }
    )


```

<br><img src="Assets\pris25.png" ><br>

# Running the script :

* Consider that i have created a User and consiling it as follows :

<br><img src="Assets\pris26.png" ><br>

* If i want to run it i have to do the following steps :

* I use nodemon to run this script.ts file everytime we make the changes and save it. To do this , add a script like below in the package.json file :

<br><img src="Assets\pris27.png" ><br>

* Then type the script you have defined in the terminal .

<br><img src="Assets\pris28.png" ><br>

# Basic overview of prisma from Top to Bottom :

* At the very top , we will create our schema in `schema.prisma` file .

* The schema defines the datasource we are using .

* The schema defines the generators that helps to link the schema to the typescript code .

* The schema also defies the models and enums all the other related to our database .

* Once we finsished the schema , them we will `migrate` it .

* `Migrartion` allows us to change the database according to the changes in this file.

* migration ensures that the database is always up-to-date with the schema file .

* When `migration` happens , the code also gets updated with the `generator`

* The `generator` creates the `client/library` and provides the reference .

* With the help of reference , we can interact with our code .

* It avoids the usage of raw SQL querirs .

* So , the schema file holds the every migrations and interactions with the database .

# Datasources and Generators :

## Datasources :

* We can only have one datasource which means only one database.Prisma directly connects to the one database .

* It should contain the `provider` with the `name of the database` we are using.

* It also must have the `url` which links to the particular database. Always use environment variables to use the database URLs( .env file )

### Using environment variables to use datasource :

* It is secure in the .env file .

* Also we can alter URL in this file with respective to the various environments like development , production and etc.

### schema.prisma file :

```
datasource db {
    provider = "name_of_the_database_provider"
    url = env(variable_that_stores_the_URL_of_the_database_in_env_file)
}
```
## Generators :

* We can have one or more generators. But mostly we will only use the default generator.

* It should have the provier that defines the name of the generator.

### schema.prisma file :

```
generator client {
    provider = "generator_name"
}
```

# Model Fields :

* Model is basically represents the tables in the databse where we can have the data.

* Model is essentially composed with bunch of different fields .

* Each row in a model is a field.

<br><img src="Assets\pris29.png" ><br>

* A field is compossed of four different parts.

* They are :

  * Field name  - Required Part in a field .

  * Field type  - Required Part in a field .

  * Modifiers   - Optional  Part in a field .

  * Attributes  - Optional Part in a field .

### Field Name :

* Field name is simply the name of the field like id , name , gender and etc.

### Field Type :

* This defines the type of the field .

* There are lot of types that we can use according to our requirement like Int , String and so on.

### Modifiers :

* Modifiers are used to decide about the field.

* For example , `?` is an `optional modifier` .

* It can be used in a field to make the field optional like below:

```
model User {
    id Int @id @default(autoincrement())
    name String
    email String?           // Here email is optional field as it has `?` modifier with it.
}
```

* The another important modifier is `Array modifier []` which helps to relatemultiple models in a single model.
### Attributes :

* Attributes are start with `@` symbol.
* @default @id are some examples of attributes.

<br><img src="Assets\pris30.png" ><br>


# Different Types of Fields :

* Int

* String

* Boolean

* BigInt

* Float

* Decimal

* DateTime

* Json  ( Postgres supporst this Json datatype but not all other datasource )

* Bytes

* Unsupported("")   --> Mostly we will not use it in schema file .

* Data that reprsents the another Object ( Which means name of another model )

* etc.

# Model Relationships :

* When linking one model with other the relationship starts.

* When the type of the field in a model is the another model name , then they are related models.

* Consider that i have `User Model` and the `Post Model`

* The `Post model` has the `author field` with the type `User`. Then they are related.

<br><img src="Assets\pris31.png" ><br>

* If we linked like the above image and save ,the autocomplete will add some extra features as below :

<br><img src="Assets\pris32.png" ><br>

* Likewise we can have relationships. Most basically we will go through the three relationships. They are :

 * One-To-Many Relationship -->  Like `Post`model has one Author and `Author` model has many Posts.

 * Many-To-Many Relationship --> Like one `post` can have `category` , and category can have many posts , posts an have many categories.

 * One-To-One Relationship --> Like `User` model has one `refeence` table and refernce has one User tabe .

# One-To-Many Relationship :

* One table can have multiple of other Tables.

* For example , `One User can hava multiple Posts.`

* So , we should add the new field to the model with the type of the another model.

* The `@relation` attribute will be automatically generated in the model inwhich we added the type as another model.

* `@relation` attribute two default arguments named `fields` and `references`.

* The `fields` argument takes the value of array[]. The array will have the newly auto generated special ID field inside it which
links this model with the another model.

* The second `references` argument takes the value of array[]. This array will the `Id` which denotes the id field of the another model which we should be linked.

<br><img src="Assets\pris33.png" ><br>

## Example : Having two Posts in a User Model :

* To have more than one fields links in another model , we should name the another model fields by adding the first argumant in `@relation(name_of_relation,fields[..],references:[..])`

* Then the relation_name should be appended with the `@relation(name_of_relation)` in the model which have many relation to one model.

* If the User Model have two relation like :

  * WrittenPosts
  * FavouritePosts

  , Then it should look like below:

<br><img src="Assets\pris34.png" ><br>

# Many-To-Many relationship :

* One model can have multiple of another Model and that anotherModel can also have multiple model of the firstOne.

* It can be achieved by simply adding the another model names with [] modifiers in each models any one fields.

## Example : Post can have multiple category and category can have multiple Post :

* We can acheive it as below image :

<br><img src="Assets\pris35.png" ><br>

# One-To-One Relationship :

* We can have add relation to any one of the models.

* The model which have the `@relation` attribute should have the `@unique` attribute in the field which acts as the value for the `fields` argument in @relation attribute.

* The other model should have this related model as type with the `?` modifier.

## Example : User model have one UserPreference model :

* It can be achieved a below :

<br><img src="Assets\pris36.png" ><br>

# Model Attributes :

## Field Level Attributes :

* Field level attributes can be used with the fields of a model.

* It starts with the single `@` symbol.

* @unique() , @updatedAt , @default() , @id are field level attributes.

## Block level Attributes :

* Block level attributes apply to the whole model { ... }

* It always start with `@@` symbols to represent the block level attribute.

* @@unique([multipleFields]) , @@index([multipleFields]) and @@id([multipleFields]) these are some block-level-attributes.

# Enums

* enum is an important datasource generator model.

* It can be used to have multiple values in a single model with the keyword `enum`

```
enum enum_name {
    value1
    value2
    value3
    .
    .
    .
}
```

* It allows to use the enum variable to choose any one value among the all other values.

* If we have hardcode list of values , enum is the best way to handle it.

## Handilng various Roles of a user in a enum :

<br><img src="Assets\pris37.png" ><br>


# Client create Operations :

* We should only use one prismaClient instance for all operations.

* We don't need to use many prisma client varibales . If we do this , our databse will not work as expected beacuse of multiple connections.

<br><img src="Assets\pris38.png" ><br>

* To craete a model , we just want to apply `create()` function with the prisma client instance and the particular model name with `. (period)  ` notation.

* Inside the create function , we just need to pass an `{}` as an argument and that object should containn the `data :` as property.

* The `data:` property should take the column fields and their values as values.

## Example :

* We have already created a User Model with the the fields like id , age , name , email , role and etc.

* To create the model with the data we should follow the below syntax :

### scripts.ts file

```
async function main() {
const user = await prisma.user.create({
    data : {
        name : "Vijay",
        age : 21 ,
        email : "vijay@yopmail.com",
    }
})
console.log("User :" , user)
}
```

<br><img src="Assets\pris39.png" ><br>

## Nested creation :

* We can create another model inside one model's create function using the prisma.

* To achieve this we must add the another model's name as the field with the `create :` property insdide it.


```
async function main() {
await prisma.user.deleteMany();
const user = await prisma.user.create({
    data : {
        name : "Vijay",
        age : 21 ,
        email : "vijay@yopmail.com",
        UserPreferences : {             //  Second model to create
            create : {
                emailUpdates : true       // Fields with their corresponding values.
            }
        }
    },
})
console.log("User :" , user)
}
```

* So the result should look like below :

<br><img src="Assets\pris40.png" ><br>


## Using include and select queries :

* We can use some queries like `include` and `select` to our model .
* We should mention the field names with boolean value `true` to those quries inorder to get the result we wanted.
* We cannot use the `select` and `include` queries together in a model. If we do it may show error :

## Example : Using `select` query to select only name and age in the User model :

<br><img src="Assets\pris41.png" ><br>

# CreateMany :

* We can use `createMany()` function to create many data to a model.

* `createMany()` takes the `data` property values as `array` throughwhich we can set many data in object format .

* We can get the `count of created data` as result by consoling the model.

* We cannot use any additional queries like `select` and `inclues` when use this createMany() function.

## Example : Creating many data in User model :

<br><img src="Assets\pris42.png" ><br>

# Client Read Operations :

## findUnique query :

* `findUnique()` allows us to get the unique records in a database which have `@unique` contraint.

* Inside the `findUnique()` function we always should use the `where` clause to specify the particular record according to the condition .

<br><img src="Assets\pris43.png" ><br>

* In a model we may set a block level attribute as `@@unique([multiple_fields])`. So we can filter with this cobined fields as below :

* Consider that , i have set `age` and `name` fields as `block-level` attributes with `@@unique` constrainnts in the user model .

* So , If I try to filter with respect to both , it may look like below :

<br><img src="Assets\pris44.png" ><br>


* If we try to filter any `incorrect record` , it will respond with `null` value as below :

<br><img src="Assets\pris45.png" ><br>

## findFirst() query :

* findFirst() allows us to filter the very first record wit the condition we specify .

* It also works on every field of a model even without `@unique()` contraint.

* For example , If i have many records with age 21 , i can find the very first one as follows :

<br><img src="Assets\pris46.png" ><br>

## findMany() query :

* It allows us to filter all the records that matches with the condition specifies in a `array format` as below :

* If i want everyone of age 21 in a array format i can do it with `findMany()` as below :

<br><img src="Assets\pris47.png" ><br>


## distict query :

* When `distinct` is used only the different value is obtained.

* We can use it on multile fields also.

<br><img src="Assets\pris48.png" ><br>

## Pagination :

* We can use `take` query to limit the number of records.

* We can use `skip` with the `take` to skip any particular record using it's position.

* We can also use  `orderBy` to order the records either in Ascending and Descending order.

* For example , I have 3 records and I can apply the above queries to those lists as below :

<br><img src="Assets\pris49.png" ><br>

# Advanced Filtering :

* `equals`  --> It exactly works as where .

* `not`  --> It provides the result opposite to our condition.

* `in`    --> It takes the array of values to filter.

* `notIn` --> Opposite of `in` .

* `lt`  --> Checks `less than`

* `gt`  --> checks wheather `Greater Than or Equal to `

* `lte`  --> checks wheather `Less Than or Equal to`

* `contains` --> It checks one string has another string within it.

* `startsWith`  --> It checks string wheather that starts with the given.

# combining multiple queries with AND , OR and NOT :

* We can combine multiple queries with AND , OR and NOT.

* We should menttion all queries inside `array` with below syntax:

```
async function main() {
const user = await prisma.user.findMany({
    where : {
        AND : [
            {   age : 21 } ,
            { name : 'vijay'}
        ]
    }
})
console.log("User ...." , user)
}
```

# Relationship filtering :

* It allows us to apply query on another model fields .

* For example , we can get the result of aone model when applying query condition that based on another related model.

* If i try to filter the `User` model with the `userpreferenece` model's field , i can do like below :

<br><img src="Assets\pris50.png" ><br>

* We can also check with `every` , `some` and `none` queries in relative models.

# Client update Operations :

## update() :

* `update()` function takes two sections. First one is `where` clause and second one is `create`.

* It updates only the first match that satisfies the conition.

* We can also use `includes` and `select` queries after updaing.

<br><img src="Assets\pris51.png" ><br>

## updateMany()

* `updateMany()` works same as the `update()` but the difference is it updated all the data that matches the condition we defined.

* It returns the number of record updated as a result.

* `updateMnay()` should not allow to have `select` or `includes` queries like `craeteMany()`.

<br><img src="Assets\pris52.png" ><br>

## Supporting to fancy functions :

* `update()` and `updateMany()` methods allow us to apply the the following functionalities to the numbers :

  * increament

  * decrement

  * add

  * mutiply

  * divide

<br><img src="Assets\pris53.png" ><br>

# Connect existing Relationships :

* We can use `connect` keyword to get connect with the another model while updating and creating.

<br><img src="Assets\pris54.png" ><br>

* We can also use `disconnect` to get disconnected with another model. we just want to set `disconnect` property to `true`

<br><img src="Assets\pris55.png" ><br>


# Client Delete Operations :

* We can delete data using `delete()` function y specifying the condition on the field has `@unique` constarint.

<br><img src="Assets\pris56.png" ><br>

* We can also delete multiple records using `deleteMany()` function. It returns the number of records deleted.

* We can also delete every records using `deleteMany()` without specifying any conditions.

<br><img src="Assets\pris57.png" ><br>































































































