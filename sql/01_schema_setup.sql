-- Supply Chain Inventory Reorder Risk Analysis
-- Base table setup
--
-- Defines the raw inventory dataset with standardized column names.
-- Derived metrics are created later in the analysis workflow.

DROP TABLE IF EXISTS supply_chain_inventory;

CREATE TABLE supply_chain_inventory (
    date DATE,
    sku_id TEXT,
    warehouse_id TEXT,
    supplier_id TEXT,
    region TEXT,
    units_sold INTEGER,
    inventory_level INTEGER,
    supplier_lead_time_days INTEGER,
    reorder_point INTEGER,
    order_quantity INTEGER,
    unit_cost NUMERIC,
    unit_price NUMERIC,
    promotion_flag INTEGER,
    stockout_flag INTEGER,
    demand_forecast NUMERIC
);
