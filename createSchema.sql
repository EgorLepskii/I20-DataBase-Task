CREATE TABLE catalogs(id int unsigned not null auto_increment primary key, name varchar(255), UNIQUE INDEX (name));

CREATE TABLE sections(id int unsigned not null AUTO_INCREMENT PRIMARY KEY, name varchar(255) not null, description varchar(255) not null, catalog_id int unsigned not null, FOREIGN KEY(catalog_id) REFERENCES catalogs(id), UNIQUE INDEX (name));

CREATE TABLE products(id int unsigned not null auto_increment primary key , name varchar(255) not null,  is_active boolean not null, price smallint unsigned, description varchar(255) not null, discount tinyint unsigned, promo_discount tinyint unsigned, UNIQUE INDEX (name));

CREATE TABLE productImages(id int unsigned not null auto_increment primary key , product_id int unsigned not null , link varchar(255) not null , is_main boolean not null,  foreign key (product_id) references products(id));

CREATE TABLE sectionsProducts(id int unsigned not null auto_increment primary key, product_id int unsigned not null , section_id int unsigned not null , foreign key (product_id) references products(id), foreign key (section_id) references sections(id));
