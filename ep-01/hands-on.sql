-- Ex1:

select product_category_name,
      count(product_id) as qtd --Like creating a feature?
from tb_products
where product_category_name = 'artes'

-- Ex2:

select count(product_id) as qtd
from tb_products 
where product_length_cm * product_height_cm * product_width_cm > 5000 

-- Ex3:

select product_id, product_category_name, product_name_lenght, product_description_lenght, product_photos_qty, product_weight_g, product_length_cm, product_height_cm, product_width_cm,
        ((product_length_cm * product_height_cm * product_width_cm) / 1000) / 1000 as volume_m3  -- convert to m3 
from tb_products

limit 10  --Creating a new variable, a new feature that doesnt exists in the original dataset

-- Ex4:

select count(product_id) as qtd 
from tb_products 
where product_category_name = 'beleza_saude'
      and (product_height_cm * product_width_cm * product_length_cm) < 1000

