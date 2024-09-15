WITH source AS (
    SELECT *
    FROM {{ source('crm', 'vendedores') }}
),
renamed AS (
    SELECT
        CAST(vendor_id AS INT) AS id_vendedor,
        name AS nome_vendedor,
        email AS email_vendedor,
        current_timestamp AS dt_processamento
    FROM source
)

SELECT *
FROM renamed