## Derived Fields Used in Analysis

| Derived Field | Description |
|---|---|
| `inventory_buffer` | Difference between available inventory and reorder point, calculated as `inventory_level - reorder_point`. |
| `reorder_risk_flag` | Indicator for whether inventory is at or below the reorder point. This is the main planning signal used in the analysis. |
| `forecast_error` | Difference between actual units sold and forecasted demand, calculated as `units_sold - demand_forecast`. |
| `absolute_forecast_error` | Absolute size of the forecast error, regardless of direction. |
| `forecast_bias` | Category showing whether a record was under-forecasted, over-forecasted, or neutral. |
| `revenue` | Estimated sales revenue, calculated as `units_sold * unit_price`. |
| `gross_margin` | Estimated gross margin, calculated as `(unit_price - unit_cost) * units_sold`. |
| `inventory_buffer_group` | Grouped version of inventory buffer used to compare records at or below the reorder point, low buffer records, moderate buffer records, and high buffer records. |
