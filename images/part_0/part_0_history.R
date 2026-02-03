persons_sunsystem_tbl <- read_excel("data/people_of_intrest.xlsx", sheet = "sunsystem") |>
  arrange(birth) |> 
  mutate(short = fct_rev(as_factor(short)),
         long = fct_rev(as_factor(long))) |> 
  pivot_longer(cols = birth:death)

p_persons_sunsystem <- persons_sunsystem_tbl |> 
  ggplot(aes(x = short, y = value, group = short)) +
  theme_book() +
  geom_path(color = "gray25") +
  coord_flip() +
  labs(x = "", y = "") +
  scale_y_continuous(limits = c(1450, 1960),
                     breaks = seq(1500, 1950, 100)) +
  theme(axis.text = element_text(size = 12)) +
  ## first
  geom_point(data = persons_sunsystem_tbl, aes(short, date_1, group = short), color = "#0D0887FF") +
  geom_text(data = persons_sunsystem_tbl, aes(short, date_1, group = short, label = finding_1), 
            color = "#0D0887FF", position = position_nudge(x = 0.35), size = 3.5) +
  ## second
  geom_point(data = persons_sunsystem_tbl, aes(short, date_2, group = short), color = "#B12A90FF") +
  geom_text(data = persons_sunsystem_tbl, aes(short, date_2, group = short, label = finding_2), 
            color = "#B12A90FF", position = position_nudge(x = -0.35), size = 3.5) +
  ## brahe
  annotate("segment", x = 6, xend = 6, y = 1560, yend = 1601, color = "#0D0887FF",
           size = 1) +
  annotate("text", x = 6+0.3, xend = 6-0.3, y = 1580.5, yend = 1580.5, color = "#0D0887FF",
           size = 3.5, label = "Orbital data") +
  ## birth/death
  geom_point(size = 2, shape = "|") +
  ## curve
  geom_curve(aes(x = 6.5, y = 1610, xend = 5.6, yend = 1640),
             arrow = arrow(length = unit(0.1, "cm"), type = "closed"),
             color = "#0D0887FF", size = 0.5, curvature = 0.8) +
  geom_curve(aes(x = 5.5, y = 1655, xend = 4.6, yend = 1685),
             arrow = arrow(length = unit(0.1, "cm"), type = "closed"),
             color = "#0D0887FF", size = 0.5, curvature = 0.8) +
  geom_curve(aes(x = 4.5, y = 1710, xend = 3.4, yend = 1727),
             arrow = arrow(length = unit(0.1, "cm"), type = "closed"),
             color = "#0D0887FF", size = 0.5, curvature = 1) 

persons_statistics_tbl <- read_excel("data/people_of_intrest.xlsx", sheet = "quantum") |>
  arrange(birth) |> 
  mutate(short = fct_rev(as_factor(short)),
         long = fct_rev(as_factor(long))) |> 
  pivot_longer(cols = birth:death)

p_persons_statistics <- persons_statistics_tbl |> 
  ggplot(aes(x = short, y = value, group = short)) +
  theme_book() +
  geom_path(color = "gray25") +
  geom_point(size = 2, shape = "|") +
  coord_flip() +
  labs(x = "", y = "") +
  scale_y_continuous(limits = c(1790, 2010),
                     breaks = seq(1800, 2000, 50)) +
  theme(axis.text = element_text(size = 12)) +
  ## quanten meachnics
  annotate("segment", x = 1, xend = 1, y = 1925, yend = 1932, color = "#B12A90FF",
           arrow = arrow(length = unit(0.075, "cm"), type = "closed"),
           size = 1) + 
  annotate("text", x = 1-0.3, y = 1928.5, color = "#B12A90FF",
           size = 3.5, label = "Quantum mechanics") +
  ## first
  geom_point(data = persons_statistics_tbl, aes(short, date_1, group = short), color = "#0D0887FF") +
  geom_text(data = persons_statistics_tbl, aes(short, date_1, group = short, label = finding_1), 
            color = "#0D0887FF", position = position_nudge(x = 0.3), size = 3.5) +
  ## second
  geom_point(data = persons_statistics_tbl, aes(short, date_2, group = short), color = "#B12A90FF") +
  geom_text(data = persons_statistics_tbl, aes(short, date_2, group = short, label = finding_2), 
            color = "#B12A90FF", position = position_nudge(x = -0.3), size = 3.5) +
  ## neyman/person
  annotate("segment", x = 2, xend = 3, y = 1933, yend = 1933, color = "#0D0887FF",
           size = 1) + 
  annotate("text", x = 2.5, xend = 2.5, y = 1935, yend = 1935, color = "#0D0887FF",
           size = 3.5, label = "Neyman–Pearson lemma", hjust = "left") 

persons_positiv_tbl <- read_excel("data/people_of_intrest.xlsx", sheet = "positivism") |>
  arrange(birth) |> 
  mutate(short = fct_rev(as_factor(short)),
         long = fct_rev(as_factor(long))) |> 
  pivot_longer(cols = birth:death)

p_persons_positiv <- persons_positiv_tbl |> 
  ggplot(aes(x = short, y = value, group = short)) +
  theme_book() +
  geom_path(color = "gray25") +
  geom_point(size = 2, shape = "|") +
  coord_flip() +
  labs(x = "", y = "") +
  scale_y_continuous(limits = c(1805, 2040),
                     breaks = seq(1800, 2040, 50)) +
  theme(axis.text = element_text(size = 12)) +
  ## first
  geom_point(data = persons_positiv_tbl, aes(short, date_1, group = short), color = "#0D0887FF") +
  geom_text(data = persons_positiv_tbl, aes(short, date_1, group = short, label = finding_1), 
            color = "#0D0887FF", position = position_nudge(x = 0.3), size = 3.5) +
  ## second
  geom_point(data = persons_positiv_tbl, aes(short, date_2, group = short), color = "#B12A90FF") +
  geom_text(data = persons_positiv_tbl, aes(short, date_2, group = short, label = finding_2), 
            color = "#B12A90FF", position = position_nudge(x = -0.3), size = 3.5) 
