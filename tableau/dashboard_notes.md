# Tableau Dashboard Notes

## Dashboard

**Title:** Supply Chain Inventory Reorder Risk Dashboard

**Tableau Public Link:**  
https://public.tableau.com/views/SupplyChainInventoryReorderRiskDashboard/ReorderRIskDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Dashboard Purpose

This dashboard summarizes reorder risk across a simulated supply chain inventory dataset. Because the original `Stockout_Flag` field contained only non-stockout records, the analysis uses reorder risk as the primary planning signal.

Reorder risk is defined as records where inventory level is at or below the reorder point.

## Dashboard Views

The dashboard includes:

- KPI overview
- Monthly reorder risk rate
- Reorder risk by promotion status
- Reorder risk by risk segment
- Average inventory buffer by risk segment
- Highest-risk SKU-warehouse combinations

## Key Takeaways

- Overall reorder risk is modest, but meaningful for planning review.
- Reorder risk is higher during promotion periods.
- Monthly timing shows stronger variation than region, warehouse, or supplier groupings.
- Higher-risk SKU-warehouse combinations tend to have lower average inventory buffers.
- The highest-risk table functions as an operational review list for replenishment planning.

## Data Limitation

The dataset did not contain positive stockout records. As a result, this dashboard does not model confirmed stockout events. It instead focuses on reorder risk, inventory buffer, promotion impact, and SKU-warehouse prioritization.