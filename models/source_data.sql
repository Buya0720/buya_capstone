-- Time Table
DROP TABLE IF EXISTS time;
CREATE TABLE time (
	date_id INT PRIMARY KEY,
	full_date DATE,
	day_name VARCHAR(20),
	day_of_week VARCHAR(10),
	day_of_month VARCHAR(20),
	day_of_year VARCHAR(10),
	week_of_year VARCHAR(10),
	month INT,
	month_name VARCHAR(20),
	month_year VARCHAR(20),
	quarter INT,
	year INT,
	fiscal_year INT,
	fiscal_quarter INT,
	fiscal_period INT,
	is_weekend BOOLEAN,
	is_holiday BOOLEAN,
	holiday_name VARCHAR(50),
	is_business_day BOOLEAN,
	is_month_end BOOLEAN,
	is_quarter_end BOOLEAN,
	is_year_end BOOLEAN,
	is_fiscal_year_end BOOLEAN,
	holiday_flag BOOLEAN
);

-- Customers Table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	customer_code VARCHAR(20),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	id_number BIGINT,
	date_of_birth DATE,
	gender VARCHAR(10),
	email VARCHAR(50),
	phone_number VARCHAR(50),
	province VARCHAR(50),
	city VARCHAR(50),
	address TEXT,
	postal_code VARCHAR(20),
	income_bracket VARCHAR(20),
	employment_status VARCHAR(20),
	credit_score INT,
	primary_bank VARCHAR(50),
	primary_branch VARCHAR(50),
	state VARCHAR(50),
	country VARCHAR(50)
);

-- Accounts Table
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	account_id SERIAL PRIMARY KEY,
	account_number VARCHAR(10),
	customer_code VARCHAR(10),
	bank_name VARCHAR(20),
	branch_name VARCHAR(20),
	branch_code VARCHAR(20),
	swift_code VARCHAR(20),
	account_type VARCHAR(20),
	opening_date DATE,
	balance DECIMAL(15, 2),
	status VARCHAR(20),
	interest_rate DECIMAL(15, 2),
	currency VARCHAR(5)--,
	--FOREIGN KEY (customer_code) REFERENCES customers(customer_code)
);

-- Transactions Table
DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions (
	transaction_id VARCHAR(10) PRIMARY KEY,
	account_number VARCHAR(10),
	customer_code VARCHAR(10),
	bank_name VARCHAR(50),
	transaction_type VARCHAR(50),
	amount DECIMAL(15, 2),
	currency VARCHAR(5),
	transaction_date DATE,
	status VARCHAR(20),
	description VARCHAR(100),
	merchant_name VARCHAR(50),
	reference VARCHAR(50),
	transaction_category VARCHAR(50),
	channel VARCHAR(50)--,
	--FOREIGN KEY (account_number) REFERENCES accounts(account_number),
	--FOREIGN KEY (customer_code) REFERENCES customers(customer_code)
	--FOREIGN KEY (transaction_date) REFERENCES time(full_date)
);
