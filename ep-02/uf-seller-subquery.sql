select * 
from (
        select seller_state,
                count(seller_id) as qtd_vendedores
        from tb_sellers

        -- where seller_state IN ('SP', 'RJ', 'PR')

        group by seller_state
     )

where qtd_vendedores > 10