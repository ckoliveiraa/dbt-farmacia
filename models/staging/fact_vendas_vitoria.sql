WITH source AS (
    SELECT *
    FROM {{ ref('vendas_vitoria') }}
),
renamed AS (
    SELECT
        CAST(purchase_id AS INT) AS id_venda,
        CAST(product_id AS INT) AS id_produto,
        CAST(customer_id AS INT) AS id_cliente,
        CAST(purchase_date AS DATE) AS data_venda,
        CAST(quantity AS INT) AS quantidade,
        'Vitoria' AS cidade,
        current_timestamp AS dt_processamento,
        'CSV' AS fonte
    FROM source
)

SELECT *
FROM renamed