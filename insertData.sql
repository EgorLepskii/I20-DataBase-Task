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
VALUES ('10.png', 'default.png'),
       ('1.png', 'default.png'),
       ('2.png', 'default.png'),
       ('3.png', 'default.png'),
       ('49.png', 'default.png'),
       ('4.png', 'default.png'),
       ('50.png', 'default.png'),
       ('5.png', 'default.png'),
       ('6.png', 'default.png'),
       ('7.png', 'default.png'),
       ('8.png', 'default.png'),
       ('9.png', 'default.png'),
       ('a_13_2.jpeg', 'default.png'),
       ('a_13.jpeg', 'default.png'),
       ('a23-2.png', 'default.png'),
       ('a_23.jpg', 'default.png'),
       ('default.jpg', 'default.png'),
       ('HONOR_MagicBook_2.jpg', 'default.png'),
       ('hp_15_2.jpg', 'default.png'),
       ('hp_15_3.jpeg', 'default.png'),
       ('huawei_p_2.jpeg', 'default.png'),
       ('huawei_p.jpeg', 'default.png'),
       ('img1.png', 'default.png'),
       ('iphone_4_1.jpeg', 'default.png'),
       ('iphone_4_2.jpeg', 'default.png'),
       ('iphone5_1.jpg', 'default.png'),
       ('iphone5_2.jpeg', 'default.png'),
       ('iphone_6_1.jpeg', 'default.png'),
       ('iphone_6_2.jpeg', 'default.png'),
       ('iphone8_1.jpeg', 'default.png'),
       ('iphone_8_2.jpeg', 'default.png'),
       ('iphone_x_1.jpeg', 'default.png'),
       ('iphone_x_2.jpg', 'default.png'),
       ('iphone_x_3.jpeg', 'default.png'),
       ('mac_1.jpg', 'default.png'),
       ('mac_2.jpg', 'default.png'),
       ('magicbook_1.jpeg', 'default.png'),
       ('nokia_1.jpg', 'default.png'),
       ('nokia_2.jpeg', 'default.png'),
       ('Note9__2.jpg', 'default.png'),
       ('redmi_10_1.jpg', 'default.png'),
       ('redmi_10_+2.jpeg', 'default.png'),
       ('redmi_10_3.jpeg', 'default.png'),
       ('redmi_9_1.jpeg', 'default.png'),
       ('samsung_21_2.jpeg', 'default.png'),
       ('samsung_a51_1.jpg', 'default.png'),
       ('samsung_a51_2.jpeg', 'default.png'),
       ('samsung_s21_1.jpeg', 'default.png'),
       ('sumaung_a51_3', 'default.png'),
       ('test.sh', 'default.png'),
       ('Слой 48 копия.png', 'default.png');

INSERT INTO products(name, is_active, price, description, discount_price, promo_price, main_section_id, main_image_id)
VALUES ('IPhone X', true, 1000, 'iphone X description', 700, 600, 5, 32),
       ('Samsung galaxy A51', true, 500, 'samsung A51 phone description', 400, 300, 1, 46),
       ('Huawei P', true, 500, 'huawei P description', 400, 400, 1, 22),
       ('Xiaomi redmi 10', true, 500, 'xiaomi phone description', 499, 400, 1, 41),
       ('Iphone 8', true, 500, 'iphone 8 description', 499, 400, 1, 30),
       ('Nokia', true, 300, 'nokia description', 499, 400, 1, 38),
       ('Samsung s21', true, 500, 'samsung phone description', 499, 400, 1, 48),
       ('Samsung a13', true, 500, 'samsung phone description', 499, 400, 1, 48),
       ('Samsung a23', true, 5000, 'samsung phone description', 499, 400, 1, 16),
       ('Xiaomi redmi note 9', true, 500, 'xiaomi phone description', 499, 400, 1, 40),
       ('iPhone 6', true, 500, 'iphone 6 description', 499, 400, 1, 28),
       ('iPhone 4', true, 500, 'iphone 4 description', 499, 400, 1, 24),
       ('iPhone 5', true, 500, 'iPhone 5 description', 499, 400, 1, 26),
       ('MacBook', true, 5000, 'MacBook description', 4000, 4000, 3, 35),
       ('HP 15', true, 3000, 'HP15 description', 2000, 2000, 3, 19),
       ('Huawei magic book', true, 2000, 'iPhone 5 description', 1000, 1000, 3, 18);



INSERT INTO sectionsProducts(product_id, section_id)
values (1, 1),
       (1, 2),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (8, 1),
       (9, 1),
       (10, 1),
       (11, 1),
       (12, 1),
       (13, 1),
       (14, 3),
       (15, 3),
       (16, 3);

INSERT INTO productsImages(image_id, product_id)
VALUES (32, 1),
       (46, 2),
       (22, 3),
       (41, 4),
       (30, 5),
       (38, 6),
       (48, 7),
       (48, 8),
       (16, 9),
       (40, 10),
       (28, 11),
       (24, 12),
       (26, 13),
       (35, 14),
       (19, 15),
       (18, 16),
       (4, 1),
       (8, 11),
       (46, 4),
       (7, 1),
       (37, 3),
       (21, 5),
       (42, 8),
       (17, 4),
       (48, 12),
       (45, 15),
       (19, 11),
       (15, 1),
       (47, 6),
       (50, 15),
       (50, 13),
       (48, 13),
       (47, 7),
       (30, 12),
       (28, 9),
       (21, 11),
       (28, 13),
       (33, 1),
       (5, 10),
       (7, 10),
       (14, 8),
       (39, 2),
       (2, 13),
       (32, 6),
       (12, 1),
       (47, 9),
       (25, 9),
       (5, 5),
       (35, 7),
       (39, 6),
       (26, 3),
       (50, 3),
       (45, 11),
       (16, 11),
       (10, 5);


