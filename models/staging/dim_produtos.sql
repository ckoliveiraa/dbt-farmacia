WITH source AS (
    SELECT *
    FROM {{ source('crm', 'produtos') }}
),
renamed AS (
    SELECT
        CAST(product_id AS INT) AS id_produto,
        name AS nome_produto,
        CAST(price AS FLOAT) AS preco_produto,
        current_timestamp AS dt_processamento
    FROM source
)

SELECT *
FROM renamed
  