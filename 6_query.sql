SELECT product_categories.id,product_categories.name, COUNT(products.id) AS jumlah FROM products INNER JOIN product_categories ON products.category_id=product_categories.id GROUP BY product_categories.id;