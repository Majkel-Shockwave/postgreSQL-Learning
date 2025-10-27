-- This query analyzes the percentage change in population between 2010 and 2019 for U.S. counties.
-- It joins two tables: one with base population estimates from 2010 and one with 2019 estimates.
-- The result includes raw change and percentage change, sorted from highest to lowest.


CREATE TABLE us_counties_pop_est_2010 (
	state_fips text,
	county_fips text,
	region smallint,
	state_name text,
	county_name text,
	estimates_base_2010 integer,
	CONSTRAINT counties_2010_key PRIMARY KEY (state_fips, county_fips)
);

COPY us_counties_pop_est_2010
FROM 'C:\Users\Majkel\Desktop\practical-sql-2-main\Chapter_07\us_counties_pop_est_2010.csv'
WITH (FORMAT CSV, HEADER);

SELECT
	c2019.county_name,
	c2019.state_fips,
	c2010.state_fips,
	c2019.state_name,
	c2019.pop_est_2019 AS pop_2019,
	c2010.estimates_base_2010 AS pop_2010,
	c2019.pop_est_2019 - c2010.estimates_base_2010 AS raw_change,
	ROUND(CAST((c2019.pop_est_2019 - c2010.estimates_base_2010) AS numeric) / c2010.estimates_base_2010 * 100, 1) AS pct_change
FROM
	us_counties_pop_est_2019 AS c2019
INNER JOIN
	us_counties_pop_est_2010 AS c2010
ON
	c2019.state_fips = c2010.state_fips AND c2019.county_fips = c2010.county_fips
ORDER BY pct_change DESC;