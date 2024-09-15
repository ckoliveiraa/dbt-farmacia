WITH source AS (
    SELECT *
    FROM {{ source('crm', 'unidades') }}
),
renamed AS (
    SELECT
        CAST(unit_id AS INT) AS id_unidade,
        city AS cidade,
        current_timestamp AS dt_processamento
    FROM source
)

SELECT *
FROM renamed