{{ config(materialized='table') }}

-- This model creates the "output" table by selecting all rows from the "recipients" table.
SELECT *
FROM {{ ref('recipients') }}
