# Tableau Dashboard Notes

## Dashboard Title

Supply Chain Inventory Reorder Risk Dashboard

## Purpose

This dashboard summarizes where inventory appears closest to replenishment pressure across SKUs, warehouses, suppliers, regions, promotions, and monthly trends.

The main planning signal is reorder risk, defined as records where inventory level is at or below the reorder point.

## Main Views

### 1. KPI Overview

- Total units sold
- Total revenue
- Average inventory level
- Average inventory buffer
- Overall reorder risk rate
- Average supplier lead time
- Promotion rate

### 2. Reorder Risk by Segment

- Reorder risk by region
- Reorder risk by warehouse
- Reorder risk by supplier
- Reorder risk by SKU

### 3. Inventory Buffer

- Inventory level compared with reorder point
- Inventory buffer group distribution
- Average inventory buffer by segment

### 4. Forecast Accuracy

- Actual units sold compared with demand forecast
- Forecast error by segment
- Reorder risk by forecast bias

### 5. Promotion Impact

- Reorder risk during promotion and non-promotion periods
- Average units sold by promotion status
- Average inventory buffer by promotion status

### 6. Monthly Trend

- Total units sold over time
- Reorder risk rate over time
- Average inventory buffer over time

## Design Notes

The dashboard should stay operational and easy to scan. The goal is to show where replenishment review may be needed, not to overstate the data as a confirmed stockout prediction system.

Final dashboard screenshots and notes will be added after the Tableau workbook is completed.
