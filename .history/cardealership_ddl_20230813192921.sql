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
CREATE TABLE 

