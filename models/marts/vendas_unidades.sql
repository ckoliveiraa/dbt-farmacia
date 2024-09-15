{{ config(
    materialized='view'
) }}

WITH agg_farmaciasbr AS (
    SELECT *
    FROM {{ ref('agg_farmaciasbr') }}
)

SELECT
    cidade,
    SUM(quantidade * preco_produto) AS Total_vendido
FROM agg_farmaciasbr
WHERE EXTRACT(YEAR FROM data_venda) = 2023
GROUP BY cidade
ORDER BY Total_vendido DESC
