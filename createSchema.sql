# Таблица каталогов
CREATE TABLE catalogs
(
    id   int unsigned not null auto_increment primary key,
    name varchar(255) not null,
    UNIQUE INDEX (name)
);

# Таблица разделов, отношение один ко многим с каталогом
# (один каталог содержит много разделов)
CREATE TABLE sections
(
    id          int unsigned not null AUTO_INCREMENT PRIMARY KEY,
    name        varchar(255) not null,
    description varchar(255) not null,
    catalog_id  int unsigned not null,
    FOREIGN KEY (catalog_id) REFERENCES catalogs (id),
    UNIQUE INDEX (name)
);


# Таблица, хранящая ссылки на изображения
CREATE TABLE images
(
    id   int unsigned not null auto_increment primary key,
    link varchar(255) not null,
    alt  varchar(255) not null
);


# Таблица товаров
CREATE TABLE products
(
    id              int unsigned      not null auto_increment primary key,
    name            varchar(255)      not null,
    main_section_id int unsigned      not null, # ссылка на основной раздел товара
    main_image_id   int unsigned      not null, # ссылка на основное изображение товара
    is_active       boolean           not null, # товар может быть неактивным
    price           smallint unsigned not null,
    description     varchar(255)      not null,
    discount_price  smallint unsigned not null, # цена с учетом скидки
    promo_price     smallint unsigned not null, # цена с учетом промокода
    UNIQUE INDEX (name, main_section_id),       # имя товара уникальное в пределах основного раздела
    FOREIGN KEY (main_section_id) REFERENCES sections (id),
    FOREIGN KEY (main_image_id) REFERENCES images (id)
);

# Таблиуа связи товаров и изображений(многие ко многим)
CREATE TABLE productsImages
(
    id         INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    image_id   INT UNSIGNED NOT NULL,
    product_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (image_id) REFERENCES images (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);

# Таблица связи товаров и разделов. Используется отношение многие ко многим, тк товар
# может содержаться в нескольких разделах
CREATE TABLE sectionsProducts
(
    id         int unsigned not null auto_increment primary key,
    product_id int unsigned not null,
    section_id int unsigned not null,
    foreign key (product_id) references products (id),
    foreign key (section_id) references sections (id)
);
