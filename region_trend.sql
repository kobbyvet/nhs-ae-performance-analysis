-- 4 hour performance by region over time

SELECT 
    period,
    region,
    ROUND(AVG(pct_4hr_total), 1) AS avg_4hr_performance
FROM ae_data
WHERE pct_4hr_total IS NOT NULL
GROUP BY period, region
ORDER BY period, region;