# Project Brief

## Project Title

Supply Chain Inventory Risk Analysis

## Project Context

Inventory planning requires a constant balance between product availability, replenishment timing, supplier reliability, and demand uncertainty. When inventory levels fall too low, stockouts can disrupt sales and fulfillment. When inventory levels are too high, organizations carry excess cost and reduce operational flexibility.

This project analyzes SKU-level supply chain inventory data to examine how stockout risk is shaped by demand patterns, supplier lead times, reorder points, inventory buffers, promotions, and forecast accuracy.

## Analytical Objective

The objective of this project is to identify which SKUs, warehouses, suppliers, and regions show elevated inventory planning risk, then translate those findings into practical recommendations for replenishment and operational decision-making.

The analysis focuses on the relationship between operational inputs, such as inventory level, reorder point, order quantity, and supplier lead time, and operational outcomes, particularly stockout events and forecast error.

## Guiding Questions

1. Which SKUs, warehouses, suppliers, and regions have the highest stockout rates?
2. Are current reorder points aligned with observed demand and supplier lead times?
3. Which suppliers are associated with longer lead times or higher stockout exposure?
4. Where do demand forecasts systematically overestimate or underestimate actual units sold?
5. Do promotions increase demand volatility or stockout risk?
6. Which inventory segments appear under-buffered or potentially overstocked?

## Planned Methods

The project will use SQL to structure and summarize the data at the SKU, warehouse, supplier, and regional levels. Python will be used for data cleaning, exploratory analysis, feature engineering, forecast error evaluation, and stockout risk modeling. Tableau will be used to develop an operational dashboard that communicates risk patterns and planning priorities.

## Expected Deliverables

- Cleaned and analysis-ready dataset
- SQL scripts for inventory, supplier, forecast, and stockout analysis
- Python notebooks for exploratory analysis and modeling
- Tableau dashboard focused on inventory risk and replenishment planning
- Executive summary with key findings and recommendations
