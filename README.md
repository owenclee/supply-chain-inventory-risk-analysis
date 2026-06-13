# Supply Chain Inventory Reorder Risk Analysis

This project analyzes reorder risk across a simulated supply chain inventory dataset using Python, SQL, Tableau, and GitHub. The analysis focuses on inventory buffer levels, promotion periods, supplier lead times, forecast accuracy, and SKU-warehouse combinations that may need closer replenishment review.

## Project Overview

The original project idea was to analyze stockout risk. During exploratory analysis, the `Stockout_Flag` field was found to contain only non-stockout records. Since there were no confirmed stockout events to model, I reframed the project around reorder risk.

For this analysis, reorder risk is defined as a record where inventory level is less than or equal to the reorder point. This makes the project an inventory planning and replenishment review analysis rather than a stockout prediction model.

## Tableau Dashboard

**Dashboard:** Supply Chain Inventory Reorder Risk Dashboard  
**Tableau Public:** https://public.tableau.com/views/SupplyChainInventoryReorderRiskDashboard/ReorderRIskDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

The Tableau dashboard summarizes monthly reorder risk, promotion impact, risk segment differences, inventory buffer patterns, and the highest-risk SKU-warehouse combinations.

## Business Question

Which SKUs, warehouses, time periods, and operating conditions show the strongest reorder risk signals, and how can those signals support more targeted replenishment planning?

## Dataset

The dataset contains daily inventory and sales records across SKUs, warehouses, suppliers, and regions. Key fields include:

- Date
- SKU ID
- Warehouse ID
- Supplier ID
- Region
- Units Sold
- Inventory Level
- Supplier Lead Time Days
- Reorder Point
- Order Quantity
- Unit Cost
- Unit Price
- Promotion Flag
- Stockout Flag
- Demand Forecast

## Tools Used

- Python for cleaning, exploratory analysis, feature creation, and segmentation
- pandas for data transformation and summary tables
- SQL for KPI queries and inventory analysis logic
- Tableau Public for dashboard development
- GitHub for documentation and version control

## Analysis Workflow

I started by reviewing the structure and quality of the raw dataset, including missing values, duplicates, data types, and field distributions. The data was clean and complete, but the original stockout field had no positive cases, which changed the direction of the project.

From there, I created several planning-oriented fields, including inventory buffer, reorder risk flag, forecast error, absolute forecast error, revenue, gross margin, and forecast bias. I then built summary tables at the monthly, promotion, risk segment, and SKU-warehouse levels.

The final Tableau dashboard was built from processed summary outputs rather than the full raw dataset. This kept the dashboard focused on the main planning questions instead of overloading it with unnecessary detail.

## Key Findings

The dataset contained 91,250 records across 50 SKUs, 5 warehouses, 10 suppliers, and 4 regions. Overall reorder risk was approximately 5.52%.

Broad regional, warehouse, and supplier differences were relatively narrow. This suggests that reorder risk was not strongly concentrated in one region, warehouse, or supplier group.

Promotion periods showed a clearer difference. Reorder risk was higher during promotion periods than non-promotion periods, which is consistent with the higher unit movement and lower average inventory buffer observed during promotions.

Monthly timing also showed meaningful variation. Reorder risk was highest during the February through April period, while January had a lower risk rate and a higher average inventory buffer.

At the SKU-warehouse level, the highest-risk segment had a higher reorder risk rate and a lower average inventory buffer than the lowest-risk segment. The difference was not extreme, but it was operationally useful because it created a practical review list for replenishment planning.

## Business Recommendations

Promotion periods should receive earlier inventory review because they showed higher reorder risk and stronger demand pressure.

The February through April period should be monitored more closely, since monthly reorder risk was elevated during that window.

Inventory buffer should be used as a leading planning signal. SKU-warehouse combinations with lower buffer levels and higher reorder risk are reasonable candidates for replenishment review.

The highest-risk SKU-warehouse table should be treated as an operational prioritization list, not as a prediction of confirmed stockout events.

## Repository Structure

    supply-chain-inventory-risk-analysis/
    ├── data/
    │   ├── raw/
    │   └── processed/
    ├── docs/
    │   ├── data_dictionary.md
    │   ├── executive_summary.md
    │   └── project_brief.md
    ├── notebooks/
    │   ├── 01_data_cleaning_and_eda.ipynb
    │   └── 02_reorder_risk_segmentation.ipynb
    ├── sql/
    │   ├── 01_schema_setup.sql
    │   ├── 02_inventory_kpis.sql
    │   ├── 03_supplier_lead_time_analysis.sql
    │   ├── 04_reorder_risk_analysis.sql
    │   └── 05_forecast_accuracy_analysis.sql
    ├── tableau/
    │   └── dashboard_notes.md
    └── README.md

## Limitations

The biggest limitation is that the dataset did not contain positive stockout records. Because of that, this project does not model actual stockout events. Reorder risk is used as a planning proxy based on inventory levels relative to reorder points.

A stronger real-world version of this analysis would include confirmed stockout events, purchase order timing, supplier fill rates, backorders, service level targets, warehouse capacity constraints, and inventory receipt dates.

## Summary

This analysis reframes the dataset around reorder risk after the original stockout field proved unusable for modeling. The final dashboard focuses on the planning signals that were actually supported by the data: monthly variation, promotion impact, inventory buffer, and SKU-warehouse combinations that may warrant closer replenishment review.