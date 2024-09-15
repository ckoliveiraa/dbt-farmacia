WITH agg_farmaciasbr AS (
    SELECT *
    FROM {{ ref('agg_farmaciasbr') }}
)

SELECT
    nome_cliente,
    quantidade * preco_produto AS total_comprado,
    cidade
FROM agg_farmaciasbr
ORDER BY total_comprado DESC
LIMIT 10
