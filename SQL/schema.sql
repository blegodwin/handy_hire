/* Database schema to keep the structure of entire database. */
CREATE TABLE msme(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    skillset_id NUMERIC,
    sales_id NUMERIC,
    market_channel_id NUMERIC,
    promotion_id NUMERIC,
    performance_id NUMERIC,
    average_customers_id NUMERIC,
    major_challenges_id NUMERIC,
    ownership_id NUMERIC,
    msme_state_id NUMERIC
);

CREATE TABLE msme_state(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    state VARCHAR,
    micro_enterprise INT,
    small_enterprise INT,
    medium_enterprise INT
);

CREATE TABLE msme_sector(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sector VARCHAR,
    micro_enterprise INT,
    small_enterprise INT,
    medium_enterprise INT,
    sales_sector_id NUMERIC
);

CREATE TABLE sales_sector(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sector VARCHAR,
    micro NUMERIC,
    sme NUMERIC
);

CREATE TABLE skillset(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    experience VARCHAR,
    skill_gap VARCHAR,
    skill_gap_id NUMERIC,
    experience_id NUMERIC
);

CREATE TABLE skill_gap(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sector VARCHAR,
    micro_available NUMERIC,
    micro_unavailable NUMERIC,
    sme_available NUMERIC,
    sme_unavailable NUMERIC,
);

CREATE TABLE experience(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    years VARCHAR,
    enterprises INT
);

CREATE TABLE sales(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    monthly_sales NUMERIC,
    sales_sector NUMERIC,
    monthly_sales_id NUMERIC
);

CREATE TABLE monthly_sales(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "amount (N'000)" VARCHAR,
    micro NUMERIC,
    sme NUMERIC
);

CREATE TABLE market_channel(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    market VARCHAR,
    enterprises INT,
    e_commerce_id NUMERIC
);

CREATE TABLE e_commerce(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sector VARCHAR,
    micro INT,
    micro_overall_total INT,
    sme INT,
    sme_overall_total INT
);

CREATE TABLE performance(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    severity VARCHAR,
    enterprises INT
);

CREATE TABLE average_customers(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customers_per_day VARCHAR,
    enterprises INT
);

CREATE TABLE major_challenges(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    challenges VARCHAR,
    micro INT,
    sme INT
);

CREATE TABLE ownership(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sector VARCHAR,
    gender VARCHAR,
    owner_qualification_id NUMERIC
);

CREATE TABLE ownership_qualification(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    owner_qualification VARCHAR,
    no_of_owners INT
);

CREATE TABLE employment(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employee_state NUMERIC,
    employment_sector_id NUMERIC,
    employee_state_id NUMERIC
);

CREATE TABLE employee_state(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    state VARCHAR,
    gender(micro) INT,
    gender(sme) INT,
    employee_qualification_id NUMERIC
);

CREATE TABLE employment_sector(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sector VARCHAR,
    gender(micro) INT,
    gender(sme) INT,
    employee_qualification_id NUMERIC
);

CREATE TABLE employmee_qualifications(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employee_qualification VARCHAR,
    employee_sex VARCHAR,
    no_of_employees INT
);

