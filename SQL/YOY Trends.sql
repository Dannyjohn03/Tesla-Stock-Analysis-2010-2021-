WITH YearlyDate AS (
    SELECT
        CAST([Date] AS DATE) AS TradeDate,
        [Close],
        [Volume]
    FROM
        TSLA
),

YearlyData AS (
    SELECT 
        FORMAT(TradeDate, 'yyyy') AS Year,
        ROUND(AVG([Close]), 2) AS Avg_Close,
        ROUND(AVG(CAST([Volume] AS bigint)), 0) AS Avg_Volume
    FROM 
        YearlyDate
    GROUP BY FORMAT(TradeDate, 'yyyy')
)
    
SELECT 
    Year,
    Avg_Close,
    LAG(Avg_Close) OVER (ORDER BY Year) AS Prev_Year_Close,
        ROUND(
        (Avg_Close - LAG(Avg_Close) OVER (ORDER BY Year)) 
        / NULLIF(LAG(Avg_Close) OVER (ORDER BY Year), 0) * 100, 2
    ) AS YoY_Close_Change_Pct,
        
    Avg_Volume,
    LAG(Avg_Volume) OVER (ORDER BY Year) AS Prev_Year_Volume,
        ROUND(
            (Avg_Volume - LAG(Avg_Volume) OVER (ORDER BY Year)) 
            / NULLIF(LAG(Avg_Volume) OVER (ORDER BY Year), 0) * 100, 2
        ) AS YoY_Volume_Change_Pct
FROM YearlyData;
