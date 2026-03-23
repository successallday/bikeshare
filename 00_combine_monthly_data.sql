-- Combine monthly trip data into a single dataset for analysis

SELECT * FROM `bike-data-489711.cyclistic.trips_202501`
UNION ALL
SELECT * FROM `bike-data-489711.cyclistic.trips_202502`
UNION ALL
SELECT * FROM `bike-data-489711.cyclistic.trips_202503`
