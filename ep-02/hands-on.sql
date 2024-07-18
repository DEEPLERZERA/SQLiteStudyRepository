

-- EX 4:

select product_category_name,
        avg(product_name_lenght) as media_nome,
        max(product_name_lenght) as max_nome,
        min(product_name_lenght) as min_nome
from tb_products

where product_category_name is not null 
and product_description_lenght > 100

group by product_category_name

having avg(product_description_lenght) > 500

order by min(product_name_lenght) desc


