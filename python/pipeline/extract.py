import pandas as pd
from sqlalchemy import create_engine

# Database connection string
db_user = "your_username"
db_password = "your_password"
db_host = "localhost"
db_port = "5432"
db_name = "retail_banking"
db_url = f"postgresql+psycopg2://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"

# Create engine
engine = create_engine(db_url)

# CSV paths
csv_files = {
    "customers": "customers.csv",
    "accounts": "accounts.csv",
    "transactions": "transactions.csv",
    "branches": "branches.csv"
}

# Load and insert
for table, path in csv_files.items():
    df = pd.read_csv(path)
    print(f"Inserting {len(df)} records into {table}...")
    df.to_sql(table, engine, if_exists='append', index=False)
    print(f"{table} inserted successfully.")

print("All tables inserted into PostgreSQL.")