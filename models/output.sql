{{ config(materialized='table') }}

-- Create the "output" table by selecting all rows from the external "recipients" table.
SELECT *
FROM {{ source('my_source', 'recipients') }}
