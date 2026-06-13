-- Supply Chain Inventory Reorder Risk Analysis
-- Forecast accuracy analysis
--
-- Compares forecasted demand with actual units sold across key operating segments.

SELECT
    sku_id,
    warehouse_id,
    supplier_id,
    region,
    COUNT(*) AS total_records,
    SUM(units_sold) AS total_units_sold,
    AVG(demand_forecast) AS avg_demand_forecast,

    AVG(units_sold - demand_forecast) AS avg_forecast_error,
    AVG(ABS(units_sold - demand_forecast)) AS avg_absolute_forecast_error,

    CASE
        WHEN AVG(units_sold - demand_forecast) > 0 THEN 'Under-forecasted'
        WHEN AVG(units_sold - demand_forecast) < 0 THEN 'Over-forecasted'
        ELSE 'Neutral'
    END AS forecast_bias,

    AVG(inventory_level - reorder_point) AS avg_inventory_buffer,
    AVG(CASE WHEN inventory_level <= reorder_point THEN 1 ELSE 0 END) AS reorder_risk_rate,
    AVG(promotion_flag) AS promotion_rate
FROM supply_chain_inventory
GROUP BY
    sku_id,
    warehouse_id,
    supplier_id,
    region
ORDER BY avg_absolute_forecast_error DESC, reorder_risk_rate DESC;
