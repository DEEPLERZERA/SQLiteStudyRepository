-- EX1:

select 
        t3.customer_state,
        round( sum(t2.price), 2) as receita,
        sum(t2.price) / count(distinct t1.customer_id) as avg_receita_por_cliente 

from tb_orders as t1

left join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_customers as t3
on t1.customer_id = t3.customer_id

where t1.order_status = 'delivered'

group by t3.customer_state

order by sum(t2.price) desc

-- EX2:

select 
        t3.seller_state,
        round( sum(t2.price), 2) as receita, 
        sum(t2.price) / count(distinct t2.seller_id) as avg_receita_por_vendedor

from tb_orders as t1

left join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t2.seller_id = t3.seller_id

where t1.order_status = 'delivered'

group by t3.seller_state

order by sum(t2.price) desc

-- EX3:

select 
        t3.seller_state,
        round( avg(t2.product_weight_g), 2) as peso_medio

from tb_order_items as t1

left join tb_products as t2
on t1.product_id = t2.product_id 

left join tb_sellers as t3
on t1.seller_id = t3.seller_id

left join tb_orders as t4 
on t1.order_id = t4.order_id

where t4.order_status = 'delivered'
and strftime('%Y', t4.order_approved_at) = '2017'

group by t3.seller_state 

order by avg(t2.product_weight_g) desc

