# SQL_Superstore
Performing some basic SQL operations in the Superstore dataset

# Steps to import the data to the MySql workbench:-
1. Download the superstore data from Google and save it in the form of CSV format.
   This dataset consists of three tables Order, People, and Return
   ("order" table contains records related to the order_id, date, customer_details, place, sales, quantity, discount, etc..,
   The "People" table contains name, region, and
   The "return" table has order_id and product return details)
3. Create a new database using
   CREATE Database Superstore;
4. Import all the tables in the created database by right-clicking on the tables of the Schemas using the Table Data import wizard. Wait until the table gets imported with no errors

# Join Operations
Join all different tables based on the primary and foreign keys and form a single table (Samplestore)

# To return the city-wise sales, profit
select city, sales, profit from samplestore;

# To return segment wise max sales, discount, profit
select segment, max(sales), max(Profit), max(Discount) from samplestore group by Segment;

# To return city wise top 3 sales
select city, sales from samplestore
order by sales desc
limit 3;





