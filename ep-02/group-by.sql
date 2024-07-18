select product_category_name,
        count(product_id) as qtd_produtos,
        max(product_weight_g) as peso_maior,
        min(product_weight_g) as peso_menor,
        avg(product_weight_g) as peso_medio
from tb_products

where product_category_name is not null

group by product_category_name