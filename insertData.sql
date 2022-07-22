INSERT INTO catalogs(name)
VALUES ('Смартфоны и гаджеты'),
       ('Ноутбуки и компьютеры');

INSERT INTO sections(name, description, catalog_id)
VALUES ('Смартфоны, мобильные телефоны', 'описание раздела сматрфонов', 1),
       ('Планшеты и электронные книги', 'описание раздела', 1),
       ('Ноутбуки', 'описание раздела ноутбуков', 2),
       ('Компьютеры и мониторы', 'описание раздела', 2);

INSERT INTO images(link, alt)
VALUES ('main.png','default.png'),
       ('second.png', 'default.png'),
       ('third.png', 'default.png');

INSERT INTO products(name, is_active, price, description, discount_price, promo_price, main_section_id, main_image_id)
VALUES ('IPhone', false, 1000, 'iphone description', 700, 600, 1, 1),
       ('Samsung', true, 500, 'samsung description', 400, 300, 1, 1),
       ('Huawei', true, 500, 'samsung description', 400, 400, 1, 1),
       ('Xiaomi', true, 500, 'samsung description', 499, 400, 1, 1),
       ('Samsung', true, 500, 'samsung description', 400, 400, 3, 1),
       ('Huawei', true, 3000, 'huawei laptop description', 2000, 2500, 3, 1),
       ('Mac', true, 5000, 'mac description', 4000, 4000, 3, 1),
       ('HP', true, 5000, 'hp description', 4000, 4000, 4, 1),
       ('Samsung', true, 5000, 'samsung description', 4000, 4000, 4, 1);



INSERT INTO sectionsProducts(product_id, section_id)
values (1, 1),
       (2, 1),
       (8, 3),
       (8, 4);


INSERT INTO productsImages(image_id, product_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 1),
       (2, 2),
       (2, 3);
