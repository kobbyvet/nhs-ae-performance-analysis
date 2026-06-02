--Best vs Worst region

SELECT
    region,
    ROUND(AVG(pct_4hr_total), 1) AS avg_4hr_performance,
    SUM(over_12hrs) AS total_12hr_waits,
    SUM(total_attendances) AS total_attendances
FROM ae_data
WHERE pct_4hr_total IS NOT NULL
GROUP BY region
ORDER BY avg_4hr_performance DESC;