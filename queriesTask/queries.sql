# Вывод названия раздела и количества товаров в нем.
SELECT s.id, s.name, COUNT(sP.id) as products_count
FROM sections s
         JOIN sectionsProducts sP on s.id = sP.section_id
GROUP BY s.name
ORDER BY products_count desc;


# Детальная страница раздела.
SELECT DISTINCT s.id,
                s.name            as category_name,
                s.description,
                p.name,
                p.main_section_id as main_section_id,
                s2.name           as main_section_name,
                i.link            as main_image_link,
                i.alt             as alt
FROM sections s
         JOIN sectionsProducts sP on s.id = sP.section_id
         JOIN products p on p.id = sP.product_id
         LEFT JOIN productsImages pI on p.id = pI.product_id
         JOIN images i on i.id = p.main_image_id
         JOIN sections s2 on s2.id = p.main_section_id
WHERE s.id = 1 AND p.is_active = true
LIMIT 12 OFFSET 0;


# Получение информации о товаре по идентификатору
SELECT p.name,
       p.description,
       p.price,
       p.promo_price,
       p.discount_price,
       i.link as main_image,
       s.id   as main_section_id,
       s.name as main_section_name
FROM products p
         JOIN images i on i.id = p.main_image_id
         JOIN sections s on s.id = p.main_section_id
WHERE p.id = 1;

# Получение разделов товара
SELECT s.id, s.name
FROM sectionsProducts
         JOIN sections s on s.id = sectionsProducts.section_id
WHERE sectionsProducts.product_id = 5;

# Получение картинок товара
SELECT i.link, i.alt
FROM productsImages pI
         JOIN images i on i.id = pI.image_id
where product_id = 1;

# Дополнительное задание 1
SELECT s.id, s.name, COUNT(sP.id) as products_count
FROM sections s
         LEFT JOIN sectionsProducts sP on s.id = sP.section_id
GROUP BY s.name
ORDER BY products_count desc;

# Дополнительное задание 2
SELECT s.id, s.name, COUNT(sP.id) as products_count
FROM sections s
         JOIN sectionsProducts sP on s.id = sP.section_id
GROUP BY s.name
HAVING products_count >= 2
ORDER BY products_count desc;
