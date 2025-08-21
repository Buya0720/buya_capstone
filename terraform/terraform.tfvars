environment   = "dev"
project       = "data-lake"
instance_type = "t3.medium"
bucket_name   = "buya"
aws_region    = "ap-southeast-2"
airflow_admin_user = "buya"
airflow_admin_pass = "buya0720"
dbt_container_image = "croixbleueqc/dbt:latest"
db_name       = "airflow"
db_user       = "airflow"
db_password   = "airflow"

csv_objects = {
  "customers/customers.csv" = "../datasets/customers.csv",
  "accounts/accounts.csv" = "../datasets/accounts.csv",
  "transactions/transactions.csv" = "../datasets/transactions.csv",
  "time/time.csv" = "../datasets/time.csv"
}

python_objects = {
  "dags/extract.py" = "../scripts/extract.py"
}


databases = [
    { name = "airflow_db",   user = "airflow",   password = "airflow" },
    { name = "bootcamp_db",  user = "user", password = "password" },
    { name = "metabase_db",  user = "metabase_user", password = "metabase_password" }
]