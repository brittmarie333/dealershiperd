CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE, 
    amount MONEY,
    salesperson_id INTEGER 
);
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100), 
    drivers_license VARCHAR(25), 
    car_id INTEGER,
    invoice_id INTEGER
);
CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    sp_name VARCHAR(50)
);
CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(25)
    model VARCHAR(50)
    car_year INTEGER, 
    new_or_used VARCHAR (5),
    salesperson_id INTEGER, 
    sv_history_id INTEGER 
);
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY, 
    mechanic_name VARCHAR(25), 
    specialization VARCHAR(25) 
);
CREATE TABLE mechanic_assignment (
    assignment_id SERIAL PRIMARY KEY, 
    mechanic_id INTEGER, 
    sv_ticket_id INTEGER
);
CREATE TABLE service_ticket (
    sv_ticket_id SERIAL PRIMARY KEY,
    issues VARCHAR(100),
    sv_date DATE , 
    customer_id INTEGER, 
    car_id INTEGER
);
CREATE TABLE service_history (
    sv_history_id SERIAL PRIMARY KEY,
    repair_done VARCHAR(100),
    sv_ticket_id INTEGER
);

ALTER TABLE invoice ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

ALTER TABLE customer ADD FOREIGN KEY (car_id) REFERENCES cars(car_id);

ALTER TABLE customer ADD FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id);

ALTER TABLE cars ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

ALTER TABLE cars ADD FOREIGN KEY (sv_history_id) REFERENCES service_history(sv_history_id);

ALTER TABLE mechanic_assignment ADD FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id);

ALTER TABLE mechanic_assignment ADD FOREIGN KEY (sv_ticket_id) REFERENCES service_ticket(sv_ticket_id);

ALTER TABLE service_ticket ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE service_ticket ADD FOREIGN KEY (car_id) REFERENCES car(car_id)