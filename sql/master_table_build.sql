#master_table_build.sql
CREATE OR REPLACE TABLE `dbvision.Bell_Beat.bellabeats_daily_master` AS
SELECT
  a.user_id,
  a.activity_date,
  a.total_steps,
  a.calories,
  a.very_active_minutes,
  a.fairly_active_minutes,
  a.lightly_active_minutes,
  a.sedentary_minutes,
  s.minutes_asleep,
  s.minutes_in_bed,
  SAFE_DIVIDE(s.minutes_asleep, s.minutes_in_bed) AS sleep_efficiency
FROM `dbvision.Bell_Beat.daily_activity_clean` a
LEFT JOIN `dbvision.Bell_Beat.sleep_day_clean` s
  ON a.user_id = s.user_id
 AND a.activity_date = s.sleep_date;

