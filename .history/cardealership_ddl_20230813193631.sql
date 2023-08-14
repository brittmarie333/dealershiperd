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
)
CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    sp_name VARCHAR(50)
)
CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(25)
    model VARCHAR(50)
    car_year INTEGER, 
    new_or_used VARCHAR (5),
    salesperson_id INTEGER, 
    sv_history_id INTEGER 
)
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY, 
    mechanic_name VARCHAR(25), 
    specialization VARCHAR(25) 
)
CREATE TABLE mechanic_assignment (
    assignment_id SERIAL PRIMARY KEY, 
    mechanic_id INTEGER, 
    sv_ticket_id INTEGER
)
CREATE TABLE service
