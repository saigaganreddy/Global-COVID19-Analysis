-- Total confirmed cases by country
SELECT "Country_Region", SUM("Confirmed") AS TotalConfirmed
FROM covid_data
GROUP BY "Country_Region"
ORDER BY TotalConfirmed DESC;

-- Daily confirmed cases for top 5 countries
SELECT "Date", "Country_Region", SUM("Confirmed") AS DailyConfirmed
FROM covid_data
WHERE "Country_Region" IN ('US', 'India', 'Brazil', 'Russia', 'UK')
GROUP BY "Date", "Country_Region"
ORDER BY "Date";
