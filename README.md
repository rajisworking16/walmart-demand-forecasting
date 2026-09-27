# Walmart Demand Forecasting and Inventory Cost Trade-off

## Problem

A demand planning manager must decide where additional forecasting effort is worth the time and complexity, because not every product or store benefits equally from a more sophisticated forecast. This project will compare simple forecasting methods with a machine-learning approach across Walmart's three Texas stores, measuring forecast accuracy and translating errors into estimated overstock and stockout costs under stated cost assumptions. The analysis will examine stores, categories, and demand patterns, such as intermittent sales and event or SNAP days, to identify where improved forecasting creates measurable economic value. A useful answer will show where a more sophisticated forecast justifies its added complexity and where a simple approach is already sufficient.

## Key findings

TODO: fill in after Stage 4.

## Data

M5 Forecasting (Kaggle): daily unit sales for 3,049 products across 10 Walmart stores, January 2011 to May 2016, with prices, events, and SNAP days. This project uses the three Texas stores (TX_1, TX_2, TX_3), which gives 9,147 product-store series.

The data is not included in this repo. Download it from the [M5 Forecasting - Accuracy](https://www.kaggle.com/competitions/m5-forecasting-accuracy) competition page.

## Approach

TODO: one short paragraph per stage as each is completed.

1. Reshape and join sales, calendar, and prices
2. Data quality and exploratory analysis
3. Forecasting: simple baselines, ETS/SARIMA, LightGBM
4. Forecast error to inventory cost, with sensitivity analysis
5. Power BI dashboard

## Cost assumptions

M5 has no holding, stockout, or margin data. All dollar figures come from stated assumptions with low and high ranges, not Walmart's real costs.

TODO: list the assumptions and their ranges.

## How to run

TODO: setup steps and run order.

## Repo structure

TODO