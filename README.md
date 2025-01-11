# OLA-Performance-Analytics-Using-SQL-and-Power-BI 

# Power BI Dashboard: [Link](https://app.powerbi.com/links/DJYylR8bkp?ctid=405ddc34-d660-46e5-b52d-bfd0be156bb5&pbi_source=linkShare)

# Project Overview
This project focuses on analyzing OLA ride data to uncover operational inefficiencies, improve performance, and enhance customer satisfaction. By leveraging SQL for data exploration and Power BI for visualization, the analysis provides actionable insights to support data-driven business decisions.

# Objectives
- Analyze booking trends, cancellation reasons, customer ratings, and revenue metrics.
- Identify patterns affecting operational performance and customer satisfaction.
- Provide visual insights through interactive Power BI dashboards.
- Recommend strategies to reduce cancellations and improve service efficiency.

# Dataset
The dataset includes OLA ride information such as booking status, trip details, customer ratings, and revenue data.
- SQL Dataset : [Link](https://1drv.ms/x/c/408cf3a741dc6b18/ES0YeDisuBdJoORvH-eiN9gBZltNI7AlGfoLw2ASv-cn3w?e=gOVW6L)
- POWER BI Dataset : [Link](https://1drv.ms/x/c/408cf3a741dc6b18/ETTHONqVnXpIoLHCTvQ-CwMBRXGqkaHAo5sFtFxObV1CRg?e=WSPGbf)

# Business Problems and Solutions

1. Retrieve all successful bookings:

```sql
select *
from bookings
where `Booking Status` = 'Successful';
``` 

2. Find the average ride distance for each vehicle type:

```sql
select `Vehicle Type`, avg(`Ride Distance`) 
as avg_distance
from bookings
group by `Vehicle Type`;
```

3. Get the total number of cancelled rides by customers:

```sql
select * from bookings
where `Cancelled Rides by Customer` = '1';
```


4. List the top 5 customers who booked the highest number of rides:

```sql
select `Customer ID`, count(`Booking ID`)
as total_rides
from bookings
group by `Customer ID` 
order by total_rides desc limit 5;
```


5. Get the number of rides cancelled by drivers due to personal and car-related issues:

```sql
select count(*) from bookings 
where `Reason for cancelling by Driver` = 'Personal & Car related issues';
```

6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

```sql
select max(`Driver Ratings`) as max_ratings, min(`Driver Ratings`) as min_ratings
from bookings 
where `Vehicle Type` = 'Prime Sedan'; 
```

7. Retrieve all rides where payment was made using UPI:

```sql
select * from bookings
where`Payment Method` = 'UPI';
```

8. Find the average customer rating per vehicle type:

```sql
select avg(`Customer Rating`) as avg_CR
from bookings
group by `Vehicle Type`;
```

9. Calculate the total booking value of rides completed successfully:

```sql
select sum(`Booking Value`) as total_successful_bookings
from bookings
where `Booking Status` = 'Successful';
```

10. List all incomplete rides along with the reason:

```sql
select `Booking ID`, `Incomplete Rides Reason`
from bookings
where `Booking Status` = 'Incomplete';
```

# Findings
- Booking Trends: The majority of rides are completed, but a significant portion is canceled due to driver unavailability and high wait times.
- Revenue Growth: Revenue peaks during weekends and festive seasons, highlighting opportunities for targeted promotions.
- Customer Satisfaction: Cities with better driver availability and lower wait times show higher average ratings.
- Peak Hours: Demand is highest during morning (8–10 AM) and evening (5–8 PM) commute hours.

# Conclusions
The analysis reveals that operational efficiency can be improved by:
- Reducing Cancellations: Addressing driver unavailability and reducing wait times.
- Dynamic Pricing: Implementing surge pricing during peak hours to balance supply and demand.
- nDriver Incentives: Rewarding top-performing drivers to boost service quality.

# Future Work
- Integrate real-time data to optimize ride dispatching.
- Analyze customer feedback for service improvement.
- Compare OLA’s performance with competitors to identify market gaps.


