CREATE OR REPLACE VIEW sales_raw AS
select * from read_csv('/Users/rajkandula/data/walmart-data/raw/sales_train_evaluation.csv');


CREATE OR REPLACE VIEW calendar_raw AS
select * from read_csv('/Users/rajkandula/data/walmart-data/raw/calendar.csv');


CREATE OR REPLACE VIEW sell_prices_raw AS
select * from read_csv('/Users/rajkandula/data/walmart-data/raw/sell_prices.csv');

-------------------------1 Column types
DESCRIBE sell_prices_raw;

select column_type, count(*) as n_columns
         from (describe sales_raw)
         group by column_type;

-------------------------2 Row counts
SELECT COUNT(*) AS n_rows FROM sales_raw;
SELECT COUNT(*) AS n_rows FROM calendar_raw;

-------------------------3 Stores
select distinct store_id, state_id
from sales_raw
order by store_id;

-------------------------4 Price profile
select column_name, min, max, null_percentage
from (summarize sell_prices_raw);

-------------------------5 CSV timing baseline
.timer on
SELECT store_id, SUM(d_1941) AS units
FROM sales_raw
GROUP BY store_id;
.timer off
