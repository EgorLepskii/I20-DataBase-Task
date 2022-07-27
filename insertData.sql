USE
i20DataBase;

INSERT INTO catalogs(name)
VALUES ('Смартфоны и гаджеты'),
       ('Ноутбуки и компьютеры'),
       ('Бытовая техника');

INSERT INTO sections(name, description, catalog_id)
VALUES ('Смартфоны, мобильные телефоны', 'описание раздела сматрфонов', 1),
       ('Планшеты и электронные книги', 'описание раздела планшетов', 1),
       ('Ноутбуки', 'описание раздела ноутбуков', 2),
       ('Компьютеры и мониторы', 'описание раздела компьютеров и мониторов', 2),
       ('Холодильники', 'описание раздела холодильников', 3);

INSERT INTO images(link, alt)
VALUES ('main.png', 'default.png'),
       ('second.png', 'default.png'),
       ('third.png', 'default.png');

INSERT INTO products(name, is_active, price, description, discount_price, promo_price, main_section_id, main_image_id)
VALUES ('IPhone', true, 1000, 'iphone description', 700, 600, 5, 1),
       ('Samsung', true, 500, 'samsung phone description', 400, 300, 1, 1),
       ('Huawei', true, 500, 'huawei phone description', 400, 400, 1, 1),
       ('Xiaomi', true, 500, 'xiaomi phone description', 499, 400, 1, 1),
       ('Samsung', true, 500, 'samsung laptop description', 400, 400, 3, 1),
       ('Huawei', true, 3000, 'huawei laptop description', 2000, 2500, 3, 1),
       ('Mac', true, 5000, 'mac description', 4000, 4000, 3, 1),
       ('HP', true, 5000, 'hp description', 4000, 4000, 4, 1),
       ('Samsung', true, 5000, 'samsung description', 4000, 4000, 4, 1),
       ('Huawei MagicBook', true, 5000, 'huawei description', 10000, 9000, 4, 1),
       ('HP15', true, 4000, 'HP description', 3000, 3000, 4, 1),
       ('Asus', true, 3000, 'asus description', 2000, 2000, 4, 1),
       ('Asus 2', true, 1000, 'asus description', 2000, 2000, 4, 1),
       ('Nokia', true, 1000, 'asus description', 2000, 2000, 4, 1);



INSERT INTO sectionsProducts(product_id, section_id)
values (1, 5),
       (1, 1),
       (2, 1),
       (8, 3),
       (3, 1),
       (4, 1),
       (4, 2),
       (5, 3),
       (6, 3),
       (5, 4),
       (6, 4),
       (5, 1),
       (6, 1),
       (7, 1),
       (9, 1),
       (10, 1),
       (11, 1),
       (12, 1),
       (13, 1),
       (14, 1);


INSERT INTO productsImages(image_id, product_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 1),
       (2, 2),
       (2, 3),
       (2, 4),
       (2, 5),
       (2, 6),
       (2, 7),
       (2, 8),
       (2, 9),
       (2, 10),
       (2, 11),
       (2, 12),
       (2, 13),
       (2, 14);

