select seller_state,
        count(seller_id) as qtd_vendedores
from tb_sellers

-- Filtro pré agg (agregação)
where seller_state IN ('SP', 'RJ', 'PR')

-- agregação
group by seller_state

-- filtro pós agregação
having count(seller_id) > 10