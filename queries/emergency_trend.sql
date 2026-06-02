--Emergency Admission Trend

SELECT
    period,
    SUM(total_emergency_admissions) AS total_emergency_admissions
FROM ae_data
WHERE total_emergency_admissions IS NOT NULL
GROUP BY period
ORDER BY period;