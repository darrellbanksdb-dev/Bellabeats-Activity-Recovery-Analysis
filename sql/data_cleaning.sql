#daily_activity_clean
CREATE OR REPLACE TABLE `dbvision.Bell_Beat.daily_activity_clean` AS
SELECT
  SAFE_CAST(Id AS INT64) AS user_id,
  DATE(SAFE.PARSE_DATE('%m/%d/%Y', ActivityDate)) AS activity_date,
  SAFE_CAST(TotalSteps AS INT64) AS total_steps,
  SAFE_CAST(Calories AS INT64) AS calories,
  SAFE_CAST(VeryActiveMinutes AS INT64) AS very_active_minutes,
  SAFE_CAST(FairlyActiveMinutes AS INT64) AS fairly_active_minutes,
  SAFE_CAST(LightlyActiveMinutes AS INT64) AS lightly_active_minutes,
  SAFE_CAST(SedentaryMinutes AS INT64) AS sedentary_minutes
FROM `dbvision.Bell_Beat.daily_activity_raw`
WHERE SAFE_CAST(Id AS INT64) IS NOT NULL;

