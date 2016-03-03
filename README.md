# prime-solo-joins_w_05

In this challenge, we’re going to practice performing SQL queries with multiple tables. This should help better solidify some 
concepts that were covered during lecture.

Assumptions
You are using pgAdmin
Postgres is currently running on your computer
Setup
Follow the instructions below before continuing with this challenge.

Create your database, table, and data
We are creating a database with a multiple tables and records. Please follow the instructions below to create a new database 
with this table and data.

Open pgAdmin, if needed
Connect to your server, if needed
Right-click on the Databases option (listed just under the icon that represents your server) and click New Database…
In the dialog, give your database a name (your choice)
Click on the OK tab/button to save your database
Open the SQL editor
Paste everything from this file (https://drive.google.com/file/d/0B10Wu-zrSBwMYTJUMkM3MWxnM1E/view?usp=sharing) into a textbox
Click the green run button to create our tables and data!
Entity Relationship Diagram (ERD)
See a diagram of the available entities and their relationships. 
https://docs.google.com/drawings/d/1AyIEFz6pvTtVZJ8M9GCJD38WNZ3ylJT0Pc1YB9P5sX8/edit?usp=sharing

NOTE: Remember that a many-to-many relationship requires a join table, so the entities in the diagram may be missing some actual tables. 
Explore the tables in your database.

GitHub repo
Create a GitHub repo named “prime-solo-joins”.
Create a file called “joins-solution.sql”. You will store your responses to the exercise questions here. 
NOTE: This is merely a text file with a .sql extension.
Exercise
For each of the following questions

Write a comment that specifies which question you are answering. (SQL comments are two dashes, followed by text.)
Write the SQL query that answers the question, below that comment.
Example question and answer
-- 0. Get all the users
SELECT * FROM customers;
Tasks
Get all customers and their addresses.
Get all orders and their line items.
Which warehouses have cheetos?
Which warehouses have diet pepsi?
Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
How many customers do we have?
How many products do we carry?
What is the total available on-hand quantity of diet pepsi?
