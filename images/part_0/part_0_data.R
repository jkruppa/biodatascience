
p_observation_data <- ggplot() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(-10.25, 10.5)) +
  theme_void() +
  annotate("text", -4.8, 0, label = "~", size = 7, fontface = 2, hjust = "center") +
  annotate("text", -10.25, 0, label = "Observation", size = 7, fontface = 2, hjust = "left") +
  annotate("text", -4.3, 0, label = "Sensory Input", size = 7, fontface = 2, hjust = "left") +
  annotate("text", 1.9, 0, label = "+", size = 7, fontface = 2, hjust = "center") +
  annotate("text", 2.25, 0, label = "Theoretical Framework", size = 7, fontface = 2, hjust = "left") +
  scale_y_continuous(limits = c(-2, 2)) 