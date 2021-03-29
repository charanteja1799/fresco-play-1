select country.name, car_model.name, sum(sales.quantity*car_model.price) as total_sales from sales join country on country.id = sales.country_id join car_model on car_model.id = sales.model_id where sales.sales_date like "%2020" group by country.name, car_model.name order by total_sales asc;
