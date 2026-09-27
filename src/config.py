from pathlib import Path

DATA_DIR = Path.home() / "data" / "walmart-data"
RAW_DIR = DATA_DIR / "raw"
PROCESSED_DIR = DATA_DIR / "processed"
DASHBOARD_DIR = DATA_DIR / "dashboard"
DB_PATH = DATA_DIR / "walmart.duckdb"
