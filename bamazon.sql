Drop DATABASE IF EXISTS bamazon_DB ;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(80) NULL,
  price DECIMAL(10, 2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

USE bamazon_DB;

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Bluetooth Headphone", "Electronic", 19.49, 25);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Blue Dry Dog Food", "Pet", 52.39, 15);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Apple Mac BookPro", "Computer", 999.99 , 20);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Women's  Training pant", "clothing", 42.49, 11);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Romaleo2", "clothing", 199.95, 2);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Rebook Crossfit Nano6", "clothing", 129.99, 1);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Samsung 5K TV", "Electronic", 299.99, 2);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Aldo Men's Oxford Dress Shoes", "clothing", 79.99, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("NongShim Shin Ramen", "Grocery", 1.49, 200);