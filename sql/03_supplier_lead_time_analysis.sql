-- Supply Chain Inventory Reorder Risk Analysis
-- Supplier lead-time analysis
--
-- Compares suppliers by lead time, reorder risk, inventory buffer, and sales volume.

SELECT
    supplier_id,
    COUNT(*) AS total_records,
    COUNT(DISTINCT sku_id) AS total_skus,
    COUNT(DISTINCT warehouse_id) AS total_warehouses,
    SUM(units_sold) AS total_units_sold,

    AVG(supplier_lead_time_days) AS avg_lead_time_days,
    AVG(inventory_level - reorder_point) AS avg_inventory_buffer,

    AVG(CASE WHEN inventory_level <= reorder_point THEN 1 ELSE 0 END) AS reorder_risk_rate,

    AVG(units_sold - demand_forecast) AS avg_forecast_error,
    AVG(ABS(units_sold - demand_forecast)) AS avg_absolute_forecast_error
FROM supply_chain_inventory
GROUP BY supplier_id
ORDER BY reorder_risk_rate DESC, avg_lead_time_days DESC;
