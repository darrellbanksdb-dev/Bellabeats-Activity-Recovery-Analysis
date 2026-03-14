# Create a quadrant category for each day
df_q <- df_ss %>%
  mutate(quadrant = case_when(
    total_steps < steps_goal  & minutes_asleep < sleep_goal ~ "Low Steps / Low Sleep",
    total_steps < steps_goal  & minutes_asleep >= sleep_goal ~ "Low Steps / High Sleep",
    total_steps >= steps_goal & minutes_asleep < sleep_goal ~ "High Steps / Low Sleep",
    TRUE ~ "High Steps / High Sleep"
  ))

# Add shaded backgrounds for the 4 quadrants + colored points
p3_exec <- ggplot(df_q, aes(x = total_steps, y = minutes_asleep)) +
  annotate("rect", xmin = -Inf, xmax = steps_goal, ymin = sleep_goal, ymax = Inf,
           alpha = 0.08, fill = "#2ca25f") +   # Low steps / high sleep
  annotate("rect", xmin = steps_goal, xmax = Inf, ymin = sleep_goal, ymax = Inf,
           alpha = 0.10, fill = "#006d2c") +   # High steps / high sleep (goal)
  annotate("rect", xmin = -Inf, xmax = steps_goal, ymin = -Inf, ymax = sleep_goal,
           alpha = 0.10, fill = "#de2d26") +   # Low / low (needs support)
  annotate("rect", xmin = steps_goal, xmax = Inf, ymin = -Inf, ymax = sleep_goal,
           alpha = 0.08, fill = "#fb6a4a") +   # High steps / low sleep (recovery gap)
  geom_point(aes(color = quadrant), alpha = 0.35) +
  geom_vline(xintercept = steps_goal, linetype = "dashed") +
  geom_hline(yintercept = sleep_goal, linetype = "dashed") +
  geom_label(
    data = quad_labels,
    aes(x = x, y = y, label = label),
    inherit.aes = FALSE,
    size = 3,
    label.size = 0.2
  ) +
  scale_x_continuous(labels = comma, expand = expansion(mult = c(0.02, 0.10))) +
  labs(
    title = "Bellabeats Journey Map: Activity + Recovery",
    subtitle = "Shaded regions highlight opportunity segments; labels show share of days",
    x = "Daily Steps",
    y = "Minutes Asleep",
    color = "Segment"
  ) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    plot.margin = margin(t = 10, r = 60, b = 10, l = 10)
  )

p3_exec

