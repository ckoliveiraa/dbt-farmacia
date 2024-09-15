WITH source AS (
    SELECT *
    FROM {{ source('crm', 'clientes') }}
),
renamed AS (
    SELECT
        CAST(customer_id AS INT) AS id_cliente,
        CAST(unit_id AS INT) AS id_unidade,
        name AS nome_cliente,
        address AS endereco_cliente,
        phone AS telefone_cliente,
        email AS email_cliente,
        current_timestamp AS dt_processamento
    FROM source
)

SELECT *
FROM renamed

