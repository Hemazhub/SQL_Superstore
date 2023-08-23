CREATE Database Superstore;
create table ord as
select orders.*, quantity.Quantity, quantity.Sales, quantity.Discount, quantity.Profit from orders 
join quantity on orders.Row_ID = quantity.Row_ID;


create table Samplestore as
select ord.*,people.Person,returns.Returned 
from ord left join people on ord.`Customer Name`=people.Person
left join returns on ord.Order_ID=returns.Order_ID;

select * from samplestore;

select city, sales, profit from samplestore;

select segment, max(sales), max(Profit), max(Discount) from samplestore group by Segment;


select city, sales from samplestore
order by sales desc
limit 3;

