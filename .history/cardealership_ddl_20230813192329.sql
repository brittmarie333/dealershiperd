CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE, 
    amount MONEY, 
    FOREIGN KEY (salesper) REFERENCES invoice
)