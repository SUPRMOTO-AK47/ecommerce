
CREATE TABLE role (
  role_id INT PRIMARY KEY,
  role VARCHAR(255)
);

CREATE TABLE `user` (
  user_id INT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE user_role (
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES `user` (user_id),
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role (role_id)
);

CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
  total_amount INT ,
  user_id INT,
    FOREIGN KEY (user_id) REFERENCES `user` (user_id)
);

CREATE TABLE category (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(255)
);

CREATE TABLE product (
product_id INT PRIMARY KEY,
  price DOUBLE ,
  product_name VARCHAR(255),
  category_id INT ,
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    seller_id INT ,
        FOREIGN KEY (seller_id) REFERENCES `user` (user_id)
);

CREATE TABLE cart_product (
cp_id INT PRIMARY KEY,
  cart_id INT ,
      FOREIGN KEY (cart_id) REFERENCES cart (cart_id),
  product_id INT ,
    FOREIGN KEY (product_id) REFERENCES product (product_id),
    quantity INT
);

insert into role (role_id, role) values
(1,'CONSUMER'),
(2,'SELLER');

insert into `user` (user_id,username,password) values
(1,'jack', 'pass_word'),
(2,'bob', 'pass_word'),
(3,'apple', 'pass_word'),
(4,'glaxo', 'pass_word');

insert into user_role (user_id, role_id) values
(1,1),
(2,1),
(3,2),
(4,2);

insert into cart (cart_id, total_amount, user_id) values
(1,20,1),
(2,0,2);

insert into category (category_id, category_name) values
(1,'Fashion'),
(2,'Electronics'),
(3,'Books'),
(4,'Groceries'),
(5,'Medicines');

insert into product (product_id,price, product_name,category_id, seller_id) values
(1,29190.0, 'Apple', 2,3),
(2,5.0, 'Crocin', 5,4);

insert into cart_product (cp_id,cart_id,product_id, quantity) values
(1,1,2,2);