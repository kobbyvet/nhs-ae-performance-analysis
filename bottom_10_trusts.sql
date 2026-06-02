--Bottom 10 worst performing trust

SELECT 
    trust_name,
    region,
    ROUND(AVG(pct_4hr_total), 1) AS avg_4hr_performance,
    SUM(over_12hrs) AS total_12hr_waits
FROM ae_data
WHERE pct_4hr_total IS NOT NULL
GROUP BY trust_name, region
ORDER BY avg_4hr_performance ASC
LIMIT 10;