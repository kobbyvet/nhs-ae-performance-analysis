-- Monthly National 12-hour waits Trend

SELECT
    period,
    SUM(over_12hrs) AS total_12hr_waits,
    SUM(total_attendances) AS total_attendances,
    ROUND(SUM(over_12hrs) * 100.0 / SUM(total_attendances), 2) AS pct_12hr_waits
FROM ae_data
WHERE over_12hrs IS NOT NULL
GROUP BY period
ORDER BY period;