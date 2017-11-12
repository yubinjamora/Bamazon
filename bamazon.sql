Drop DATABASE IF EXISTS bamazon_DB ;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(80) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Bluetooth Headphone", "Electronic", 19.49, 25);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);

Insert into products (product_name, department_name, price, stock_quantity)
values ("Nike Men's  Training Short", "clothing", 39.95, 6);