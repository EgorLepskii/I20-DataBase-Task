# Вывод названия раздела и количества товаров в нем.
SELECT s.id, s.name, COUNT(sP.id) as products_count
FROM sections s
         JOIN sectionsProducts sP on s.id = sP.section_id
         JOIN products p on p.id = sP.product_id AND p.is_active = TRUE
GROUP BY s.id
ORDER BY products_count desc;


# Детальная страница раздела.

SELECT s.id,
       s.name,
       s.description
FROM sections s;


SELECT p.id              as product_id,
       p.name,
       p.main_section_id as main_section_id,
       s.name            as main_section_name,
       i.link            as main_image_link,
       i.alt             as alt
FROM sectionsProducts sP
         JOIN products p on p.id = sP.product_id
         JOIN images i on i.id = p.main_image_id
         JOIN sections s on s.id = p.main_section_id
WHERE sP.section_id = 1
  AND p.is_active = true
LIMIT 12 OFFSET 0;


# Получение информации о товаре по идентификатору
SELECT p.name,
       p.description,
       p.price,
       p.promo_price,
       p.discount_price,
       p.main_image_id,
       p.main_section_id
FROM products p
WHERE p.id = 1;

# Получение разделов товара
SELECT s.id, s.name
FROM sectionsProducts sP
         JOIN sections s on s.id = sP.section_id
WHERE sP.product_id = 1;

# Получение картинок товара
SELECT i.link, i.alt
FROM productsImages pI
         JOIN images i on i.id = pI.image_id
where product_id = 1;


# Дополнительное задание 1
SELECT s.id, s.name, COUNT(sP.id) as products_count
FROM sectionsProducts sP
         RIGHT JOIN sections s on s.id = sP.section_id
         LEFT JOIN products p ON sP.product_id = p.id
WHERE p.is_active = TRUE
   OR p.id IS NULL
GROUP BY s.id
ORDER BY products_count desc;


# Дополнительное задание 2
SELECT s.id, s.name, COUNT(sP.id) as products_count
FROM sectionsProducts sP
         RIGHT JOIN sections s on s.id = sP.section_id
         LEFT JOIN products p ON sP.product_id = p.id
WHERE p.is_active = TRUE
   OR p.id IS NULL
GROUP BY s.id
HAVING products_count >= 2
ORDER BY products_count desc;
