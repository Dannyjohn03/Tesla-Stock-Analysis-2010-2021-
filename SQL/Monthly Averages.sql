SELECT 
    FORMAT(CAST([Date] AS DATE), 'yyyy-MM') AS [Month],
    ROUND(AVG([Open]), 2) AS Avg_Open,
    ROUND(AVG([High]), 2) AS Avg_High,
    ROUND(AVG([Low]), 2) AS Avg_Low,
    ROUND(AVG([Close]), 2) AS Avg_Close,
    ROUND(AVG(CAST([Volume] AS bigint)), 0) AS Avg_Volume
FROM 
    TSLA
GROUP BY 
    FORMAT(CAST([Date] AS DATE), 'yyyy-MM')
ORDER BY 
    [Month];