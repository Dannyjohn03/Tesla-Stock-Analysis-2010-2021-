SELECT 
    CAST([Date] AS DATE) AS TradeDate,
    [Close],
    ROUND(
        AVG([Close]) OVER (
            ORDER BY CAST([Date] AS DATE)
            ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
        ), 2
    ) AS MovingAvg_30Days
FROM 
    TSLA
ORDER BY 
    TradeDate;
