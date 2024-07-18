--Building new features
select max(product_weight_g) as peso_maior,
       min(product_weight_g) as peso_menor,
       avg(product_weight_g) as peso_medio,
       sum(product_weight_g) as peso_total
from tb_products

limit 10 