INSERT INTO catalogs(name) VALUES ('Смартфоны и гаджеты'), ('Ноутбуки и компьютеры');

INSERT INTO sections(name, description, catalog_id) VALUES ('Смартфоны, мобильные телефоны','описание раздела сматрфонов',1),
                                                           ('Планшеты и электронные книги','описание раздела',1),
                                                           ('Ноутбуки','описание раздела ноутбуков',2),
                                                           ('Компьютеры и мониторы','описание раздела',2);


INSERT INTO products(name, is_active, price, description, discount, promo_discount) VALUES
                                                                                        ('IPhone', false, 1000,'iphone description', 10,10),
                                                                                        ('Samsung', true, 500,'samsung description', 15,15),
                                                                                        ('Huawei', true, 3000,'huawei laptop description', 20,20),
                                                                                        ('Mac', true, 5000,'mac description', 40,40);


INSERT INTO sectionsProducts( product_id, section_id) values (1,1), (2,1),(3,2),(4,2),(3,4),(4,4);

INSERT INTO productImages(product_id, link, is_main) VALUES (4,'main.jpg', true), (4,'second.jpg', false),(4,'third.jpg', false);
