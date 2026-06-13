# Project Brief

## Project Title

Supply Chain Inventory Reorder Risk Analysis

## Project Context

Inventory planning requires balancing product availability, replenishment timing, supplier lead time, and demand uncertainty. When inventory falls too close to the reorder point, teams may need to review replenishment timing before the risk becomes more disruptive.

This project originally considered stockout risk as the main outcome, but the dataset’s `Stockout_Flag` field contains only non-stockout records. Because that field has no variation, the analysis focuses on reorder risk instead.

Reorder risk is defined as records where inventory level is at or below the reorder point. This is not the same as a confirmed stockout, but it is a useful planning signal for identifying where inventory may require closer attention.

## Analytical Objective

The objective of this project is to identify where reorder risk appears across SKUs, warehouses, suppliers, regions, promotion status, forecast error, and monthly trends.

The analysis focuses on practical inventory planning signals rather than forcing a stockout prediction workflow that the data cannot support.

## Guiding Questions

1. Which SKUs, warehouses, suppliers, and regions show the highest reorder risk?
2. How often does inventory fall at or below the reorder point?
3. Do promotions appear to increase reorder risk?
4. Does forecast error relate to lower inventory buffer or reorder risk?
5. Are reorder risk patterns more visible across time than across broad operating segments?
6. Which records or segments should be prioritized for closer replenishment review?

## Planned Methods

The project uses Python for data cleaning, exploratory analysis, feature creation, and later risk segmentation. SQL is used to create repeatable summaries for inventory KPIs, supplier lead time, reorder risk, and forecast accuracy. Tableau will be used to build a dashboard focused on inventory planning and replenishment review.

## Expected Deliverables

- Cleaned analysis dataset
- SQL summary scripts
- Python notebooks
- Tableau dashboard
- Final README with findings, limitations, and recommendations
