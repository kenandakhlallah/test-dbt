
{{ config(
    materialized="view",
    schema="onboarding"
) }}
with onboarding.housekeeping_failure_count_view as (
SELECT COUNT(*) AS total_failures
FROM onboarding_housekeeping_failure )
