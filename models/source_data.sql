	-- Customers Table

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
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
DROP table accounts;
CREATE TABLE accounts (
    account_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    bank_name VARCHAR(20),
    branch_name VARCHAR(20),
    branch_code VARCHAR(20),
    swift_code VARCHAR(20),
    account_type VARCHAR(20),
    opening_date DATE,
    balance DECIMAL(15, 2),
    status VARCHAR(20),
    interest_rate DECIMAL(15, 2),
	currency VARCHAR(5),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Transactions Table
-- drop table transactions;

CREATE TABLE transactions (
    transaction_id VARCHAR(10) PRIMARY KEY,
    account_id VARCHAR(10),
    customer_id VARCHAR(10),
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
    channel VARCHAR(50),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Time Table
CREATE TABLE time (
    date_key INT PRIMARY KEY,
    full_date DATE,
    day_of_week VARCHAR(10),
    month VARCHAR(20),
    quarter VARCHAR(10),
    year INT,
    holiday_flag BOOLEAN
);