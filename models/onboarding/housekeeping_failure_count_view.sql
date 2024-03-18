{{ config(
    materialized="view",
    schema="onboarding"
) }}
with housekeeping_failure_count_view as (
SELECT COUNT(*) AS total_failures
FROM {{ ref('onboarding_housekeeping_failure') }} )
