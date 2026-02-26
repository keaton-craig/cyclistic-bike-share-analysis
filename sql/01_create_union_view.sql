-- =========================================================
-- File: 01_create_union_view.sql
-- Project: Cyclistic Bike Share Case Study
-- Purpose: Combine 12 monthly raw tables into one master view
-- Author: Keaton Craig
-- Date: Feb 25, 2025
-- =========================================================

CREATE OR REPLACE VIEW `cyclistic-case-study-488517.cyclistic_raw.tripdata_2025_all` AS
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202501`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202502`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202503`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202504`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202505`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202506`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202507`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202508`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202509`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202510`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202511`
UNION ALL
SELECT * FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_202512`;


-- Validate the view
SELECT 
  COUNT(*) AS total_rows
FROM `cyclistic-case-study-488517.cyclistic_raw.tripdata_2025_all`;
