WITH source AS (
    SELECT *
    FROM {{ source('crm', 'vendas') }}
),
renamed AS (
    SELECT
        CAST(purchase_id AS INT) AS id_venda,
        CAST(customer_id AS INT) AS id_cliente,
        CAST(vendor_id AS INT) AS id_vendedor,
        CAST(unit_id AS INT) AS id_unidade,
        CAST(product_id AS INT) AS id_produto,
        CAST(purchase_date AS DATE) AS data_venda,
        CAST(quantity AS INT) AS quantidade,
        current_timestamp AS dt_processamento,
        'CRM' AS fonte
    FROM source
)

SELECT *
FROM renamed
