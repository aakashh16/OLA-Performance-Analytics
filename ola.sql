create database Ola;
Use Ola;
show tables;
select * from bookings;

#1. Retrieve all successful bookings:

create view successful_bookings as
select *
from bookings
where `Booking Status` = 'Successful';

select * from successful_bookings;  


#2. Find the average ride distance for each vehicle type:

create view avg_distance as
select `Vehicle Type`, avg(`Ride Distance`) 
as avg_distance
from bookings
group by `Vehicle Type`;

select * from avg_distance; #final


#3. Get the total number of cancelled rides by customers:

create view total_rides_cancelled_by_customers as
select * from bookings
where `Cancelled Rides by Customer` = '1';

select * from total_rides_cancelled_by_customers;


#4. List the top 5 customers who booked the highest number of rides:

create view top_5_customers as
select `Customer ID`, count(`Booking ID`)
as total_rides
from bookings
group by `Customer ID` 
order by total_rides desc limit 5;

select * from top_5_customers; #final


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:

create view rides_cancelled_by_drivers_due_to_PC_related_issues as
select count(*) from bookings 
where `Reason for cancelling by Driver` = 'Personal & Car related issues';

select * from rides_cancelled_by_drivers_due_to_PC_related_issues;


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

create view max_min_driver_ratings as
select max(`Driver Ratings`) as max_ratings, min(`Driver Ratings`) as min_ratings
from bookings 
where `Vehicle Type` = 'Prime Sedan'; 

select * from max_min_driver_ratings;


#7. Retrieve all rides where payment was made using UPI:

create view upi_payment as 
select * from bookings
where`Payment Method` = 'UPI';

select * from upi_payment;


#8. Find the average customer rating per vehicle type:

create view avg_CR_per_VT as
select avg(`Customer Rating`) as avg_CR
from bookings
group by `Vehicle Type`;

select * from avg_CR_per_VT;


#9. Calculate the total booking value of rides completed successfully:

create view total_successful_bookings as
select sum(`Booking Value`) as total_successful_bookings
from bookings
where `Booking Status` = 'Successful';

select * from total_successful_bookings;

#10. List all incomplete rides along with the reason:

create view all_incomplete_rides_WR as
select `Booking ID`, `Incomplete Rides Reason`
from bookings
where `Booking Status` = 'Incomplete';

select * from all_incomplete_rides_WR;



-- Queries
#1. Retrieve all successful bookings:
select * from successful_bookings; #final 

#2. Find the average ride distance for each vehicle type:
select * from avg_distance; #final

#3. Get the total number of cancelled rides by customers:
select * from total_rides_cancelled_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
select * from top_5_customers; #final

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from rides_cancelled_by_drivers_due_to_PC_related_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from max_min_driver_ratings;

#7. Retrieve all rides where payment was made using UPI:
select * from upi_payment;

#8. Find the average customer rating per vehicle type:
select * from avg_CR_per_VT;

#9. Calculate the total booking value of rides completed successfully:
select * from total_successful_bookings;

#10. List all incomplete rides along with the reason:
select * from all_incomplete_rides_WR;