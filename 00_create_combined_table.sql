-- Create a unified table combining all monthly trip data
-- This table is used as the foundation for all analysis

CREATE OR REPLACE TABLE `cyclistic.all_trips` AS

SELECT * FROM `cyclistic.trips_202501`
UNION ALL
SELECT * FROM `cyclistic.trips_202502`
UNION ALL
SELECT * FROM `cyclistic.trips_202503`
UNION ALL
SELECT * FROM `cyclistic.trips_202504`
UNION ALL
SELECT * FROM `cyclistic.trips_202505`
UNION ALL
SELECT * FROM `cyclistic.trips_202506-part1`
UNION ALL
SELECT * FROM `cyclistic.trips_202506-part2`
UNION ALL
SELECT * FROM `cyclistic.trips_202507-part1`
UNION ALL
SELECT * FROM `cyclistic.trips_202507-part2`
UNION ALL
SELECT * FROM `cyclistic.trips_202508-part1`
UNION ALL
SELECT * FROM `cyclistic.trips_202508-part2`
UNION ALL
SELECT * FROM `cyclistic.trips_202509-part1`
UNION ALL
SELECT * FROM `cyclistic.trips_202509-part2`
UNION ALL
SELECT * FROM `cyclistic.trips_202510-part1`
UNION ALL
SELECT * FROM `cyclistic.trips_202510-part2`
UNION ALL
SELECT * FROM `cyclistic.trips_202511`
UNION ALL
SELECT * FROM `cyclistic.trips_202512`;
