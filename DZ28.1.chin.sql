use `hillel-qauto`;
select * from user_profiles where Name like "%am%";

select MAX(totalCost) AS max_expense
from expenses
JOIN cars ON cars.id = expenses.carId
JOIN car_brands ON car_brands.id = cars.carBrandId
where car_brands.title = 'Audi';

select car_brands.id AS car_id, COUNT(car_models.id) AS count_models
from car_brands
JOIN car_models ON car_models.carBrandId = car_brands.id
where car_brands.title IN ('Audi', 'BMW')
group by car_brands.id;

select car_models.title AS car_model, car_brands.title AS car_brand, COUNT(DISTINCT users.id) AS user_count
from users
JOIN cars ON cars.userId = users.id
JOIN car_models ON car_models.id = cars.carModelId
JOIN car_brands ON car_brands.id = car_models.carBrandId
group by car_models.id, car_brands.id;

select distinct users.email
from users
join cars ON cars.userId = users.id;





