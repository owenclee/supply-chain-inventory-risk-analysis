-- Supply Chain Inventory Reorder Risk Analysis
-- Reorder risk analysis
--
-- Identifies where inventory is at or below the reorder point across key operating segments.

WITH reorder_summary AS (
    SELECT
        sku_id,
        warehouse_id,
        supplier_id,
        region,
        COUNT(*) AS total_records,
        SUM(units_sold) AS total_units_sold,
        AVG(inventory_level) AS avg_inventory_level,
        AVG(reorder_point) AS avg_reorder_point,
        AVG(inventory_level - reorder_point) AS avg_inventory_buffer,
        AVG(supplier_lead_time_days) AS avg_lead_time_days,
        AVG(CASE WHEN inventory_level <= reorder_point THEN 1 ELSE 0 END) AS reorder_risk_rate,
        AVG(units_sold - demand_forecast) AS avg_forecast_error,
        AVG(ABS(units_sold - demand_forecast)) AS avg_absolute_forecast_error
    FROM supply_chain_inventory
    GROUP BY
        sku_id,
        warehouse_id,
        supplier_id,
        region
)

SELECT
    *,
    CASE
        WHEN avg_inventory_buffer <= 0 THEN 'At or below reorder point'
        WHEN avg_inventory_buffer > 0 AND avg_inventory_buffer <= 25 THEN 'Low buffer'
        WHEN avg_inventory_buffer > 25 AND avg_inventory_buffer <= 75 THEN 'Moderate buffer'
        ELSE 'High buffer'
    END AS inventory_buffer_status
FROM reorder_summary
ORDER BY reorder_risk_rate DESC, avg_inventory_buffer ASC, total_units_sold DESC;
