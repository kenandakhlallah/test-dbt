CREATE OR REPLACE VIEW onboarding.housekeeping_failure_count_view AS
SELECT COUNT(*) AS total_failures
FROM onboarding.onboarding_housekeeping_failure;
