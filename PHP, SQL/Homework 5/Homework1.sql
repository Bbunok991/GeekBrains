SELECT * FROM products.mobile_phones;

SELECT Product_name, Manufacture, Price
FROM products.mobile_phones
WHERE Product_count >2;

SELECT * 
FROM products.mobile_phones
WHERE Manufacture = 'Samsung';

SELECT *
FROM products.mobile_phones
WHERE Product_name LIKE 'Iphone%';

SELECT *
FROM products.mobile_phones
WHERE Product_name LIKE 'Samsung%';

SELECT *
FROM products.mobile_phones
WHERE Product_name REGEXP '[0123456789]';

SELECT *
FROM products.mobile_phones
WHERE Product_name REGEXP '[8]';