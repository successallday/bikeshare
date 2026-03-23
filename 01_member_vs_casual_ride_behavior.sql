-- Compare average ride duration and total rides
-- between member and casual users across all months

SELECT
  member_casual,
  AVG(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)) AS avg_ride_minutes,
  COUNT(*) AS total_rides
FROM (

  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202501`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202502`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202503`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202504`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202505`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202506-part1`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202506-part2`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202507-part1`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202507-part2`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202508-part1`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202508-part2`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202509-part1`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202509-part2`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202510-part1`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202510-part2`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202511`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, member_casual FROM `bike-data-489711.cyclistic.trips_202512`

)

WHERE
  ended_at > started_at
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 1

GROUP BY
  member_casual;
