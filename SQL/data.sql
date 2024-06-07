/* Populate database with sample data. */


COPY msme (skillset_id, sales_id, market_channel_id, promotion_id, performance_id, average_customers_id, major_challenges_id, ownership_id, msme_state_id) FROM '/path/to/msme.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY msme_state (state, micro_enterprise, small_enterprise, medium_enterprise) FROM 'C:/Users/DELL/Desktop/HANDY/msme_state.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY msme_sector (sector, micro_enterprise, small_enterprise, medium_enterprise, sales_sector_id) FROM 'C:/Users/DELL/Desktop/HANDY/msme_sector.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY sales_sector (sector, micro, sme) FROM 'C:/Users/DELL/Desktop/HANDY/sales_sector.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY skillset (experience, skill_gap, skill_gap_id, experience_id) FROM 'C:/Users/DELL/Desktop/HANDY/skillset.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY skill_gap (sector, micro_available, micro_unavailable, sme_available, sme_unavailable) FROM 'C:/Users/DELL/Desktop/HANDY/skill_gap.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY experience (years, enterprises) FROM 'C:/Users/DELL/Desktop/HANDY/experience.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY sales (monthly_sales, sales_sector, monthly_sales_id) FROM 'C:/Users/DELL/Desktop/HANDY/sales.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY monthly_sales ("amount (N'000)", micro, sme) FROM 'C:/Users/DELL/Desktop/HANDY/monthly_sales.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY market_channel (market, enterprises, e_commerce_id) FROM 'C:/Users/DELL/Desktop/HANDY/market_channel.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY e_commerce (sector, micro, micro_overall_total, sme, sme_overall_total) FROM 'C:/Users/DELL/Desktop/HANDY/e_commerce.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY performance (severity, enterprises) FROM 'C:/Users/DELL/Desktop/HANDY/performance.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY average_customers (customers_per_day, enterprises) FROM 'C:/Users/DELL/Desktop/HANDY/average_customers.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY major_challenges (challenges, micro, sme) FROM 'C:/Users/DELL/Desktop/HANDY/major_challenges.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY ownership (sector, gender, owner_qualification_id) FROM 'C:/Users/DELL/Desktop/HANDY/ownership.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY ownership_qualification (owner_qualification, no_of_owners) FROM 'C:/Users/DELL/Desktop/HANDY//ownership_qualification.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY employment (employee_state, employment_sector_id, employee_state_id) FROM 'C:/Users/DELL/Desktop/HANDY//employment.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY employee_state (state, gender_micro, gender_sme, employee_qualification_id) FROM 'C:/Users/DELL/Desktop/HANDY//employee_state.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY employment_sector (sector, gender_micro, gender_sme, employee_qualification_id) FROM 'C:/Users/DELL/Desktop/HANDY//employment_sector.csv' DELIMITER ',' CSV HEADER SKIP 1;

COPY employee_qualifications (employee_qualification, employee_sex, no_of_employees) FROM 'C:/Users/DELL/Desktop/HANDY//employee_qualifications.csv' DELIMITER ',' CSV HEADER SKIP 1;
