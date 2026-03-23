-- Number of rides by day of week

SELECT
  member_casual,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
  COUNT(*) AS total_rides
FROM `bike-data-489711.cyclistic.trips_202501`
GROUP BY member_casual, day_of_week
ORDER BY day_of_week;
