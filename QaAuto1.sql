create database QaAuto1;
use QaAuto1;
create table Car_Brands (
id int auto_increment not null unique primary key,
title varchar(10));

create table Car_Models (
id int auto_increment not null unique primary key,
title varchar (20),
carBrandId int,
foreign key (carBrandId) references  Car_Brands(id)
);


insert into Car_Brands (id, title) 
values (1,"Audi"),
(2,"BMW");

select * from Car_Brands;

create table Users (
id int auto_increment not null primary key,
Firstname varchar (100) not null,
Lastname varchar (100) not null,
email varchar (100)not null unique,
password varchar (100)not null
);

select * from Users;

CREATE TABLE cars (
  id int auto_increment not null primary key,
  userId INT NOT NULL,
  carBrandId INT NOT NULL,
  carModelId INT NOT NULL,
  mileage INT,
  initialMileage INT,
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
  FOREIGN KEY (carModelId) REFERENCES car_models(id)
);

ALTER TABLE Users MODIFY email VARCHAR(255);
ALTER TABLE Users MODIFY password VARCHAR(255);


insert into Users (id,Firstname, Lastname, email, password)
values(1, "Anna", "Chin", "chi@gmail.com","luckyday1304")
;

SELECT * FROM car_models;

INSERT INTO car_models (carBrandId, title) VALUES (1, 'A4');
INSERT INTO car_models (carBrandId, title) VALUES (1, 'Q7');

INSERT INTO Cars (id, userId, carBrandId, carModelId, mileage, initialMileage) 
VALUES (1, 1, 1, 1, 50000, 0);

SELECT * FROM CARS;




