# nestJs

# What is nestJs ?

* nestJs is the nodejs backend framework.

* It is fully embrases typescript.

* nestJs is the advanced version of expressjs. Maintaning and creating architecture of a project is very difficult in expressjs for complex project but nestJs provides better scalability and maintability than expresJs.

* nestJS is a modular structure which means it has the whole application as many small pieces and combined together.

* It uses dependency injection.

* It always branded as Angular for backend.

# Why use nestJs ?

* structure  --> It has very good and easy structure.

* Modularity --> Which means it allows to have the whole application into many small pieces.

* Typescript --> It uses typescript.

* GraphQL    --> It allows to easy interaction with graphQL.

* microservices

* REST API

* Documentation --> It has very good documentation.

* Popularity   --> Most people uses nestJS in current days.

# NestJs Project setup :

* Nodejs must be installed.

* nestJs must be installed globally with the command below:

```
npm i -g @nestjs/cli
```

<br><img src="Assets\nest1.png"><br><br>

## Verifying the version of nest installed :

* We can check the version of nest installed using the below command :

```
nest -v
```
* The result may look like below :

```
Administrator@DESKTOP-JMHJJ51 MINGW64 ~/OneDrive/Documents/Back-end/NestJs (master)
$ nest -v
9.1.9
```
* We can also download the particular version by adding the version in the installation command as below :

```
npm i -g @nestjs/cli@8.0.0 ( Any version number that we require )
```

## Creating the new project with nest cli :

* We can create a new project folder with the below nestJs cli command :

```
nest new project_name
```

* This command will install the deafault nest project folders and files .

* And it also prompt a question to choose the `package manager`, so choose your applicable project manager.This will create a node_modules folder in your project.

<br><img src="Assets\nest2.png"><br><br>

* Once we installed the project , we can navigate to the newly created project to work in it.

## nest project's initial structure :

* The initial project will have the `src` folder which contains importatnt files are.

* It also has the `test` folder which helps in end to end testing ( e2e testing ).

* It also has some configuration files .

* `app.module.ts` is very important file where other modules can be imported.

# Modules :

* A Module in a nest Js application is simply a class with `@module({})` decorator.

* Without the the `@module({})` decorator , the file is simply a class.

* Decorator is usually decorates with multiple `meta-data` related to the particular class or functions where it is used.

* Likewise , `@Module({})` is also one of the decorators which contains with the `imports` , `exports` , `controllers` and `providers`.

* A module can import other modules.

* The rootmodule is `AppModule`.

* If we create any module that must be presented inside the `imports` arry of `AppModule`.

# Bootstraping logic :

* Bootstraping logic is in the `main.ts` file.

* There the AppModule is bootstraped by default.

* We can also specify our port number to run our application in that `main.ts`.

<br><img src="Assets\nest3.png"><br><br>

# Running the Application :

* To launch our application , we must use the below command in terminal :

* As i have chosen the `yarn` package manager I am using that.

* We can find this script inside the `package.json` file of our application.

<br><img src="Assets\nest4.png"><br><br>


```
yarn start:dev
```

* This command will run and produce the new `dist` folder in the application which contains the all the `javascript` files of all typescript by `compiling the code`.


<br><img src="Assets\nest5.png"><br><br>

# Creating modules using nest/cli command :

* We can create modules using the terminal command as below:

```
nest g module module_name
```

* It will ceate a new folder with the module_name we have provided and the module file added automatically with basic features.

* This newly created module will be automatically added to the AppModules imports array by the nest/cli.

* For example , If create a userModeule using the nest/cli , it will look like below :

* It creates the `user Module` :

<br><img src="Assets\nest6.png"><br><br>

* It updates the userModule in the AppModule :

<br><img src="Assets\nest7.png"><br><br>

# Breaking Modules :

## Controllers :

* Controllers are responsible to handle incoming requests and returning responses to the client.

## Providers :

Providers are services which are responsible for business logic.

# Auth Module :

* Our AuthModule should have AuthCOntroller and  AuthService.

* AuthController and AuthService are also the simple classes with the `@Controller({})` and `@Injectable()` decorators respectively.

## Interaction between AuthCotroller and AuthService :

* As we AuthController will receive the client Request and Respond to the request.

* These functions which means the business logics can be handles in the AuthServices.

* To use the Service files functions in the Controller `dependency injection` is used.

* Dependency Injection allows us to create the instance varibale of the service file in the controller by importing the AuthService and creating the new varibale in the constructor.

* This alone gives the instance of the AuthService in the AuthController.So we can utilize every functions and properties that available in AuthService in the AuthController.

### Example :

* Consider that i have simple function that consoles the a message in the AuthService named `test()`.

* If I want to use it in my AuhtController i want to inject it and use as below :

### Auth.controller.ts :

```
import { Controller } from "@nestjs/common";
import { AuthService } from "./auth.service";

@Controller({

})

export class AuthController {

    constructor(
        private authService:AuthService
    ){
        this.authService.test();
    }


}
```

### Auth.service.ts :

```
import { Injectable } from "@nestjs/common";

@Injectable({

})

export class AuthService{

    test(){
        console.log("I am test");
    }

}
```

# Creating endpoints in AuthController :

* Signup and sigin are the two initial endpoints that we should create in authcontroller.

* These are the simple functions with the `@Post('name')` decorator.

* The name inside the `@post('name')` decorator is also an important part in the endpoint path.

* The good practice to add the root route endpoint for the controller in the `@Controller('name_of_route_endpoint')` decorator.

* So we should provide the both root_route_endpoint in the `@Controller('name_of-the_root_route_endpoint')` decorator also in the particular function's `@Post('endPoint_name')` decorator to define the endpoint like below :

```
post Request :

..../auth/signup  --> Signup

.../auth/signin   --> signin


```

<br><img src="Assets\nest8.png"><br><br>


# using Postman to check the endpoint :

* Postman is an opensourece and free resource to check with the response for the endpoints.

* In Postman , if we provide our request endpoint with the appropriate Http client method , it will give us the response as below:

### Example :

* If i have a signup methos that only returns the string "I am sigup" , it can be obtained as below:

<br><img src="Assets\nest9.png"><br><br>

* We can also get other extra information on that API endpoint in the headers which means the content-type and so on.

<br><img src="Assets\nest10.png"><br><br>

# Moving the signup and signin functions to the AuthService :

* As the AuthController needs to only focus on the request and response we must move the all business logics to the service.

* From the service , we can obtain it in the cotroller using `Dependency Injection`.

### Example :

* I have moved the signup and signin functions to the AuthService and called them using the Dependency Injection in Authcontroller.

### AuthService.ts

```
import { Injectable } from "@nestjs/common";

@Injectable({

})

export class AuthService{

    signup(){
       //Logic for signup
        return {
            message : "Signup successfully!"
        }
    }

    sigin(){
        return {
            //Logic for sigin
            message : "sigin successfully!"
        }
    }

}
```

### Auth.Controller.ts :

```
import { Controller, Post } from "@nestjs/common";
import { AuthService } from "./auth.service";

@Controller('auth')

export class AuthController {

    constructor(
        private authService:AuthService
    ){}

    @Post('signup')
    signup(){
        return this.authService.signup();
    }

    @Post('signin')
    signin(){
    return this.authService.sigin();
    }
}
```
# Connecting to DataBase Using Prisma :

* To develop the busieness logic any functions we need to connect to our database.

* We can connect to the Database using the popular ORM `prisma`.

# Setting up Prisma in nestJs :

* To setup Prisma in nestjs , we should install the below pre-requests using the commands:

```
yarn add -D prisma@latest         // It will only install the prisma/cli
```

```
yarn add prisma/client           // It adds the Prisma Client.
```

* So now we can initialize the prisma using the below command :

```
npx prisma init                    // It creates the .env and schema file to the application.
```
* To connect with the database , we should use the newly genearted `.env` file . We can refer it in the `Prisma- learing -documentation `.

* We should create models like `User` and `bookmark`in the prisma.schema file. We can refer the `prisma -learing -documentation` to know about models and connetions.

* We can migrate it using the below command :

```
npx prisma migrate dev
```

# Creating Prisma Module :
















