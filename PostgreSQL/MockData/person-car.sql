create table car_uuid (
	car_id UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
insert into car_uuid (car_id, make, model, price) values ( uuid_generate_v4() , 'Dodge', 'Intrepid', '538412.81');
insert into car_uuid (car_id, make, model, price) values ( uuid_generate_v4(), 'Saab', '9-3', '322451.94');

create table person_uuid (
	person_id UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
    person_foreign UUID REFERENCES car_uuid ( car_id ),
    UNIQUE ( person_foreign )
);
insert into person_uuid (person_id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ( uuid_generate_v4() , 'Kali', 'Beasleigh', null, 'Female', '2022-09-03', 'Canada');
insert into person_uuid (person_id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ( uuid_generate_v4() , 'Barn', 'Gregorace', null, 'Male', '2022-10-20', 'Russia');
insert into person_uuid (person_id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ( uuid_generate_v4() , 'Claudette', 'Kielty', 'ckielty2@simplemachines.org', 'Female', '2022-05-08', 'Indonesia');