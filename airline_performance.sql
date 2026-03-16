CREATE DATABASE Airline_Performance;
USE Airline_Performance;

SELECT * FROM flight_clean;

-- Airline Delay Comparison
SELECT AIRLINE,
AVG(ARRIVAL_DELAY) AS avg_delay
FROM flight_delays
GROUP BY AIRLINE
ORDER BY avg_delay DESC;

-- Airport Delay Ranking
SELECT ORIGIN_AIRPORT,
AVG(ARRIVAL_DELAY) AS avg_delay
FROM flight_delays
GROUP BY ORIGIN_AIRPORT
ORDER BY avg_delay DESC
LIMIT 10;

-- Monthly Delay Trend
SELECT MONTH,
AVG(ARRIVAL_DELAY) AS avg_delay
FROM flight_delays
GROUP BY MONTH
ORDER BY MONTH;

-- Root Cause Aggregation
SELECT
AVG(AIRLINE_DELAY) AS airline_delay,
AVG(WEATHER_DELAY) AS weather_delay,
AVG(AIR_SYSTEM_DELAY) AS air_system_delay,
AVG(LATE_AIRCRAFT_DELAY) AS late_aircraft_delay
FROM flight_delays;