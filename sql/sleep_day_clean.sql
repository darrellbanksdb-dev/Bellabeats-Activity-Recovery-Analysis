#sleep_day_clean
CREATE OR REPLACE TABLE `dbvision.Bell_Beat.sleep_day_clean` AS
SELECT
  SAFE_CAST(Id AS INT64) AS user_id,
  DATE(SAFE.PARSE_DATETIME('%m/%d/%Y %I:%M:%S %p', SleepDay)) AS sleep_date,
  SAFE_CAST(TotalMinutesAsleep AS INT64) AS minutes_asleep,
  SAFE_CAST(TotalTimeInBed AS INT64) AS minutes_in_bed
FROM `dbvision.Bell_Beat.sleep_day_raw`
WHERE SAFE_CAST(Id AS INT64) IS NOT NULL;

