SELECT
    person.name,
    menu.pizza_name,
    menu.price,
    ROUND(menu.price * (1 - person_discounts.discount / 100), 2) AS discount_price,
    pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person ON person_order.person_id = person.id
JOIN person_discounts 
    ON person_discounts.person_id = person_order.person_id
    AND person_discounts.pizzeria_id = menu.pizzeria_id
ORDER BY person.name, menu.pizza_name;
