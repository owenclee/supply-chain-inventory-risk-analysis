-- Supply Chain Inventory Reorder Risk Analysis
-- Core inventory KPIs
--
-- Summarizes high-level inventory, sales, reorder risk, and forecast metrics.

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT sku_id) AS total_skus,
    COUNT(DISTINCT warehouse_id) AS total_warehouses,
    COUNT(DISTINCT supplier_id) AS total_suppliers,
    COUNT(DISTINCT region) AS total_regions,

    SUM(units_sold) AS total_units_sold,
    SUM(units_sold * unit_price) AS total_revenue,
    SUM(units_sold * unit_cost) AS total_cogs,
    SUM((unit_price - unit_cost) * units_sold) AS gross_margin,

    AVG(inventory_level) AS avg_inventory_level,
    AVG(reorder_point) AS avg_reorder_point,
    AVG(inventory_level - reorder_point) AS avg_inventory_buffer,

    AVG(supplier_lead_time_days) AS avg_supplier_lead_time,
    AVG(promotion_flag) AS promotion_rate,

    AVG(CASE WHEN inventory_level <= reorder_point THEN 1 ELSE 0 END) AS reorder_risk_rate,

    AVG(units_sold - demand_forecast) AS avg_forecast_error,
    AVG(ABS(units_sold - demand_forecast)) AS avg_absolute_forecast_error
FROM supply_chain_inventory;
