# Chapter 07 – County Population Growth Analysis

This folder contains the files used to analyze population changes in U.S. counties between 2010 and 2019. The exercise is based on Chapter 7 of the book *Practical SQL* by Anthony DeBarros.

## 📂 Folder Contents

- `county_growth.sql` – SQL query that calculates numeric and percentage population changes
- `us_counties_pop_est_2010.csv` – County population data from the year 2010
- `us_counties_pop_est_2019.csv` – County population estimates from the year 2019

## 🧠 What I'm Learning

- How to import CSV data into PostgreSQL
- How to join tables and perform calculations on data
- How to sort and filter query results based on computed values

## 🚀 How to Run

1. Import the CSV files into PostgreSQL using the `COPY` command (make sure the file paths are correct and accessible to PostgreSQL):

   ```sql
   COPY us_counties_pop_est_2010 FROM '/path/to/us_counties_pop_est_2010.csv' WITH CSV HEADER;
   COPY us_counties_pop_est_2019 FROM '/path/to/us_counties_pop_est_2019.csv' WITH CSV HEADER;
   ```

   💡 If you're using the `psql` client, you can use `\COPY` instead, which runs from the client side:

   ```sql
   \COPY us_counties_pop_est_2010 FROM 'us_counties_pop_est_2010.csv' WITH CSV HEADER;
   \COPY us_counties_pop_est_2019 FROM 'us_counties_pop_est_2019.csv' WITH CSV HEADER;
   ```

2. Run the SQL query from the `county_growth.sql` file to calculate the population changes between 2010 and 2019.

3. Analyze the results:
   - Sort the data by `percent_change` or `raw_change` to find the counties with the highest growth
   - Filter by state or minimum population thresholds
   - Explore trends and outliers in population shifts

## 📌 Notes

Ensure that the file paths used in the `COPY` command are correct and that PostgreSQL has permission to access them. If you encounter permission issues, using `\COPY` from the `psql` client is often a good workaround.
