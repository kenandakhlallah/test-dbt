{{ config(
    materialized="view",
    schema="onboarding"
) }}
with source as (
    
    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    SELECT COUNT(*) AS total_failures
FROM {{ ref('onboarding_housekeeping_failure') }} )

),
housekeeping_failure_count_view as (
SELECT * 
FROM source )
