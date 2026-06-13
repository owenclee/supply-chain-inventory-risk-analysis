# Data Dictionary

This data dictionary describes the raw fields used in the supply chain inventory analysis. The dataset is structured at the SKU, warehouse, supplier, region, and date level.

| Column | Description |
|---|---|
| `Date` | Date associated with the inventory and sales record. Used for trend analysis, seasonality checks, and time-based aggregation. |
| `SKU_ID` | Unique identifier for each stock keeping unit. Used for item-level inventory, demand, and stockout analysis. |
| `Warehouse_ID` | Unique identifier for each warehouse. Used to compare inventory performance and stockout exposure across locations. |
| `Supplier_ID` | Unique identifier for each supplier. Used to evaluate supplier lead time patterns and supplier-associated stockout risk. |
| `Region` | Geographic region associated with the record. Used to compare demand, inventory buffers, and stockout rates across markets. |
| `Units_Sold` | Number of units sold during the recorded period. Used as the primary measure of observed demand. |
| `Inventory_Level` | Available inventory level for the SKU at the recorded point in time. Used to assess inventory position and stockout exposure. |
| `Supplier_Lead_Time_Days` | Number of days required for supplier replenishment. Used to evaluate replenishment timing and supplier-related planning risk. |
| `Reorder_Point` | Inventory threshold at which replenishment should be triggered. Used to assess whether planning thresholds are aligned with observed demand and lead time. |
| `Order_Quantity` | Quantity ordered for replenishment. Used to examine replenishment behavior and order sizing patterns. |
| `Unit_Cost` | Cost per unit. Used to estimate cost of goods sold and margin-related metrics. |
| `Unit_Price` | Selling price per unit. Used to estimate revenue and gross margin. |
| `Promotion_Flag` | Indicator for whether the SKU was under promotion. Used to test whether promotions are associated with demand spikes, forecast error, or stockout risk. |
| `Stockout_Flag` | Indicator for whether the SKU experienced a stockout. Used as the main operational risk outcome and potential modeling target. |
| `Demand_Forecast` | Forecasted demand for the SKU. Used to evaluate forecast accuracy and forecast bias against actual units sold. |

## Derived Fields Planned for Analysis

| Derived Field | Description |
|---|---|
| `Revenue` | Estimated sales revenue, calculated as `Units_Sold * Unit_Price`. |
| `COGS` | Estimated cost of goods sold, calculated as `Units_Sold * Unit_Cost`. |
| `Gross_Margin` | Estimated gross margin, calculated as `Revenue - COGS`. |
| `Gross_Margin_Rate` | Estimated margin rate, calculated as `(Unit_Price - Unit_Cost) / Unit_Price`. |
| `Forecast_Error` | Difference between observed and forecasted demand, calculated as `Units_Sold - Demand_Forecast`. |
| `Absolute_Forecast_Error` | Absolute size of the forecast error, regardless of direction. |
| `Forecast_Error_Rate` | Forecast error relative to forecasted demand. |
| `Inventory_Buffer` | Difference between available inventory and reorder point, calculated as `Inventory_Level - Reorder_Point`. |
| `Reorder_Risk_Flag` | Indicator for whether inventory is at or below the reorder point. |
| `Lead_Time_Demand_Proxy` | Approximate demand exposure during supplier lead time. |
| `Stockout_Rate` | Share of records with a stockout, summarized by SKU, warehouse, supplier, or region. |
