# Walmart Demand Forecasting and Inventory Cost Trade-off

## Problem

A demand planning manager must decide where additional forecasting effort is worth the time and complexity, because not every product or store benefits equally from a more sophisticated forecast. This project will compare simple forecasting methods with a machine-learning approach across Walmart's three Texas stores, measuring forecast accuracy and translating errors into estimated overstock and stockout costs under stated cost assumptions. The analysis will examine stores, categories, and demand patterns, such as intermittent sales and event or SNAP days, to identify where improved forecasting creates measurable economic value. A useful answer will show where a more sophisticated forecast justifies its added complexity and where a simple approach is already sufficient.

## Key findings

TODO: fill in after Stage 4.

## Data

M5 Forecasting (Kaggle): daily unit sales for 3,049 products across 10 Walmart stores, January 2011 to May 2016, with prices, events, and SNAP days. This project uses the three Texas stores (TX_1, TX_2, TX_3), which gives 9,147 product-store series.

The data is not included in this repo. Download it from the [M5 Forecasting - Accuracy](https://www.kaggle.com/competitions/m5-forecasting-accuracy) competition page.

## Approach

0. **Reshape (done).** The raw sales file has one row per product per store and one column per day. I filtered it to the 3 Texas stores (9,147 product-store rows) and reshaped it to one row per product, store, and day: 17,754,327 rows. Converting the ID columns and day labels to `category` and sales to `int16` cut memory from 525 MB to 213 MB (59%), and a total-units check (19,228,405 before and after) confirmed no sales were lost. The result is saved as Parquet. Notebook: `notebooks/01_reshape.ipynb`.
1. Join calendar and prices, and explore with SQL in DuckDB
2. Data quality and exploratory analysis
3. Forecasting: simple baselines, ETS/SARIMA, LightGBM
4. Forecast error to inventory cost, with sensitivity analysis
5. Power BI dashboard

## Cost assumptions

M5 has no holding, stockout, or margin data. All dollar figures come from stated assumptions with low and high ranges, not Walmart's real costs.

TODO: list the assumptions and their ranges.

## How to run

Tested on macOS with Python 3.12.

```bash
git clone https://github.com/rajisworking16/walmart-demand-forecasting.git
cd walmart-demand-forecasting
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

Download the M5 files from Kaggle and unzip them into `~/data/walmart-data/raw/`. Data paths are set in `src/config.py`; change `DATA_DIR` there if your data lives somewhere else.

Run the notebooks in order:

1. `notebooks/01_reshape.ipynb`

## Repo structure

```
notebooks/        one notebook per stage
src/config.py     data paths, imported by every notebook
sql/              DuckDB queries
.vscode/          editor settings
requirements.txt  pinned package versions
```