Create DATABASE sales;

CREATE TABLE customers(

customer_id int IDENTITY(1,1) primary key ,
firstname nvarchar(50)NOT NULL ,
lastname nvarchar(50) NOT NULL ,
phone nvarchar(50) NOT NULL ,
Email nvarchar(50) NOT NULL,
street nvarchar(50) NOT NULL,
city nvarchar (50) NOT NULL , 
zip_code int NOT NULL
);
CREATE TABLE orders(

order_id int IDENTITY(1,1) primary key ,
customer_id nvarchar(50) NOT NULL,
oreder_status nvarchar(50) NOT NULL,
order_date datetime NOT NULL ,
required_date datetime NOT NULL,
Shipped_date datetime NOT NULL,
Store_id int NOT NULL,
);

CREATE TABLE staffs(
staff_id int IDENTITY(1,1) NOT NULL PRIMARY KEY ,
firstname nvarchar(50)NOT NULL ,
lastname nvarchar(50) NOT NULL ,
phone nvarchar(50) NOT NULL ,
Email nvarchar(50) NOT NULL,
active int NOT NULL,
Store_id int NOT NULL,
manage_id int NOT NULL,
);

CREATE TABLE stores(
Store_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
store_name nvarchar(50) NOT NULL,
lastname nvarchar(50) NOT NULL ,
phone nvarchar(50) NOT NULL ,
Email nvarchar(50) NOT NULL,
street nvarchar(50) NOT NULL,
city nvarchar (50) NOT NULL , 
zip_code int NOT NULL
);

CREATE TABLE order_items(

item_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
order_id int references orders(order_id),
product_id int NOT NULL ,
list_price int NOT NULL ,
discount text NOT NULL ,
);