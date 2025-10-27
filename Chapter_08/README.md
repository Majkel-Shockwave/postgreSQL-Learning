# Chapter 07 – County Population Growth Analysis

This folder contains SQL queries and data files used to analyze the percentage change in population between 2010 and 2019 for U.S. counties. The exercise is based on Chapter 7 of the book *Practical SQL* by Anthony DeBarros.

## 📂 Files

- `county_growth.sql` – SQL query that calculates raw and percentage population change between 2010 and 2019
- `us_counties_pop_est_2010.csv` – Base population data from 2010
- `us_counties_pop_est_2019.csv` – Estimated population data from 2019

## 🧠 What you'll learn

- How to import CSV data into PostgreSQL
- How to join tables and calculate differences
- How to sort and filter results based on calculated values

## 🚀 How to run

1. Import both CSV files into PostgreSQL as tables:
   ```sql
   COPY us_counties_pop_est_2010 FROM '/your/path/us_counties_pop_est_2010.csv' WITH CSV HEADER;
   COPY us_counties_pop_est_2019 FROM '/your/path/us_counties_pop_est_2019.csv' WITH CSV HEADER;
