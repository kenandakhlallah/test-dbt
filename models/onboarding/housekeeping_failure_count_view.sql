
{{ config(
    materialized="view",
    schema="onboarding"
) }}
SELECT COUNT(*) AS total_failures
FROM onboarding_housekeeping_failure
