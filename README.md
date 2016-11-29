##**APP USAGE:**  
This app stores a key and value pair (passed to it via the url) in session variables.  
Set the key and value using the following url  
(subsitute "key123" for your key and "value123" for your value):  
http://localhost:4000/set?key123=value123  

Retrieve the value of the key you have previously stored using the following url  
(subsitute "key123" for your key to retrieve your value):  
http://localhost:4000/get?key=key123  

##**APP MISUSAGE:**  
If you do not correctly set a key value pair you will be redirected to an information page.  
If you do not correctly retrieve a key value pair you will be redirected to an information page.  

##**APPROACH:**  
This app is built using Ruby on Rails.  
Routes were manually configured rather than configured by Rails using "resources".  
Capybara for used for testing the app.  

##**DOWNLOADING AND RUNNING CODE:**  

```
$ git clone https://github.com/glynester/Store_Key  
$ cd Store_Key  
$ bundle  
$ rake server  
```

Visit http://localhost:4000/info in your preferred browser  
Follow the instructions as per "APP USAGE" above or the instructions on the info page. 

##**RUNNING TESTS:**  
To run tests, from the command line ensure you are in the project directory and run:  

```
$ rspec  
```

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Database server tech test
Today we will practice a tech test to demonstrate your understanding of web technologies. This is an actual tech test that was given to one of our coaches when they applied for a dev role.

Bear in mind that most tech tests do not have a set timeframe. Although we do have a "soft" time limit, imposed mainly by the structure of the week, we are not expecting you to finish within the day - so take your time and focus on writing the best code you can produce.

The brief

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

If you finish, you can work on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.
