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

# Таблица товаров
CREATE TABLE products
(
    id              int unsigned      not null auto_increment primary key,
    name            varchar(255)      not null,
    main_section_id int unsigned      not null, # ссылка на основной раздел товара
    is_active       boolean           not null, # товар может быть неактивным
    price           smallint unsigned not null,
    description     varchar(255)      not null,
    discount        tinyint unsigned  not null, # скидка для товара
    promo_discount  tinyint unsigned  not null, # скидка с учетом промокода
    UNIQUE INDEX (name, main_section_id),       # имя товара уникальное в пределах основного раздела
    FOREIGN KEY (main_section_id) REFERENCES sections (id)
);

# Таблица, хранящая ссылки на изображения для определенного товара
CREATE TABLE productImages
(
    id         int unsigned not null auto_increment primary key,
    product_id int unsigned not null,
    link       varchar(255) not null,
    is_main    boolean      not null, # главное изображение(картинка для анонса)
    foreign key (product_id) references products (id)
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
