# Data

The raw dataset is stored locally in `data/raw/` and is not committed to this repository.

Dataset: High-Dimensional Supply Chain Inventory Dataset

This dataset contains SKU-level inventory and sales records across warehouses, suppliers, and regions. It includes operational variables related to units sold, inventory position, supplier lead time, reorder points, order quantity, pricing, promotions, stockout status, and demand forecasts.

The dataset is used in this project to examine how inventory levels, supplier lead times, demand forecasts, and replenishment settings relate to stockout risk. Rather than treating stockouts as isolated events, the analysis frames them as operational outcomes shaped by demand behavior, forecast accuracy, supplier responsiveness, and inventory planning decisions.

## Raw Data Columns

- `Date`: Date of the inventory and sales record
- `SKU_ID`: Unique product identifier
- `Warehouse_ID`: Unique warehouse identifier
- `Supplier_ID`: Unique supplier identifier
- `Region`: Geographic region associated with the record
- `Units_Sold`: Number of units sold during the recorded period
- `Inventory_Level`: Available inventory level for the SKU
- `Supplier_Lead_Time_Days`: Number of days required for supplier replenishment
- `Reorder_Point`: Inventory threshold at which replenishment should be triggered
- `Order_Quantity`: Quantity ordered for replenishment
- `Unit_Cost`: Cost per unit
- `Unit_Price`: Selling price per unit
- `Promotion_Flag`: Indicator for whether the SKU was under promotion
- `Stockout_Flag`: Indicator for whether the SKU experienced a stockout
- `Demand_Forecast`: Forecasted demand for the SKU
