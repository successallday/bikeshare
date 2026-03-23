-- Usage of different bike types

SELECT
  rideable_type,
  COUNT(*) AS total_rides
FROM `bike-data-489711.cyclistic.trips_202501`
GROUP BY rideable_type
ORDER BY total_rides DESC;
