SELECT *
FROM {{ ref('agg_farmaciasbr') }}
WHERE quantidade * preco_produto <= 0