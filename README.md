# Bellabeats Activity & Recovery Analysis
**Darrell Banks**  
Google Data Analytics Capstone | 2026


## Overview

This project analyzes Fitbit user data to explore how daily movement (steps) and recovery (sleep) interact to influence wellness patterns and energy expenditure.

The objective was to generate actionable insights to support Bellabeats’ user engagement strategy.

---

## Business Question

How do activity levels and sleep patterns interact, and what behavioral insights can inform sustainable user engagement?

---

## Tools & Technologies

- Google BigQuery (Data Cleaning & Transformation)
- SQL (Standard SQL)
- R (Visualization & Statistical Analysis)
- ggplot2
- dplyr
- bigrquery

---

## Data Preparation

Data was cleaned and standardized in BigQuery:

- Converted date formats
- Cast numeric fields
- Removed null values
- Created cleaned datasets
- Built a master analysis table (`bellabeats_daily_master`)

---

## Key Findings

- Daily steps strongly correlate with calorie expenditure.
- Sleep does not directly increase calorie burn but supports behavioral sustainability.
- User-days achieving approximately 10,000 steps and 7 hours of sleep demonstrate the most balanced activity-recovery profile.
- Users fall into four engagement segments:
  - Balanced (High Steps + High Sleep)
  - Recovery Gap (High Steps + Low Sleep)
  - Under-active (Low Steps + High Sleep)
  - Needs Support (Low Steps + Low Sleep)

---

## Visualizations
![Bellabeats_journey_Map_Exwcutive.png)

- Steps vs Calories (Scatter + Regression)
- Sleep Efficiency by Step Band
- Activity & Recovery Journey Map
- Calories by Behavioral Segment

---

## Strategic Recommendations

- Reinforce balanced behaviors through positive feedback loops.
- Provide sleep nudges for high-activity users experiencing recovery gaps.
- Offer incremental goal-setting for low-engagement users.
- Promote integrated movement + recovery messaging.

---

## Conclusion

The analysis highlights the importance of integrating activity and recovery behaviors in digital wellness platforms. Encouraging both movement and adequate sleep supports sustainable engagement patterns and long-term user retention.
