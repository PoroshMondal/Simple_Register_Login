Simple Register Login Mini Project
---------------------------------------

# This is a simple project of register, login with token based authentication.

# Spring Framework, JWT Authentication, JPA, Lombok is used for this project.

# db folder contains the exported database used in this project.

# MySQL is used for db operation.

# There four(4) API is implemented -
   
   1. Register
   2. Login
   3. demo 
   4. admin_only 

Register API
----------------

API: http://localhost:8080/register
Method: POST
 
Request Body:
      {
    	"firstName": "Jhonson",
    	"lastName": "Will",
    	"username": "Jhonson",
    	"password": "1234",
    	"role": "ADMIN"   // It can be USER for Role define
    }

Response:

   {
    "token": "eyJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJKaG9uc29uV2lsbCIsImlhdCI6MTcwOTI2MzA0NCwiZXhwIjoxNzA5MzQ5NDQ0fQ.MpgfnkGqXSLjvlKMy0D50MSPzAPQAsSQAPlfmXmQXRD1B84Qu45qQOWiCfVWEZ5n"
   }


Login API
--------------------

API: http://localhost:8080/login
Method: POST

Request Body:

     {
    	"username": "JhonsonWill",
    	"password": "1234"
     }

Response:
     {
    	"token": "eyJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJKaG9uc29uV2lsbCIsImlhdCI6MTcwOTI2MzA3NywiZXhwIjoxNzA5MzQ5NDc3fQ.zaeel6i35L5r3QPEka5vSTDKupSWJbdhhTn4wViBePZO329idAKummac7JVvBojY"
     }


Demo API
------------------

API: http://localhost:8080/demo
Method: GET

Request Body:  Empty
Param: Empty

Response:

  "Hello from secured url" // Static string data will be returned as response


Admin Only API:
--------------------

API: http://localhost:8080/admin_only
Method: GET

Request Body:  Empty
Param: Empty

Response:

   "Hello from admin only" // // Static string data will be returned as response
