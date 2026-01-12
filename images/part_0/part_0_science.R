p_sunsystem <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  geom_ellipse(aes(x0 = -5, y0 = -3, a = 5, b = 4, angle = pi/4),
               color = "#6A00A880") +
  geom_ellipse(aes(x0 = 6.5, y0 = 4, a = 14, b = 10, angle = pi/4),
               color = "#0D088780") +
  geom_ellipse(aes(x0 = 14.5, y0 = 8, a = 14, b = 8, angle = pi/4),
               color = "#B12A9080") +
  annotate("point", x = 6, y = 4, size = 35, fill = "#F0F921FF", shape = 21) +
  annotate("text", x = 5.25, y = -4, hjust = "left", label = "Mercury", size = 6) +
  annotate("point", x = 5, y = -2.25, size = 8, fill = "#B12A90FF", shape = 21) +
  ## comet
  annotate("point", x = -7, y = 7, size = 5, shape = 23, fill = "#E16462FF") +
  annotate("segment", x = -5, y = 10, xend = -10, yend = 2.5, color = "#E1646280") +
  annotate("text", x = -6.7, y = 6.25, hjust = "left", label = "Halley", size = 6) +   
  ## sun spots
  annotate("point", x = c(5.5, 6, 6.4), y = c(3, 2, 1.8), size = c(2.5, 2, 1.5), 
           shape = 21, color = "black", fill = "black") +
  annotate("text", x = 7, y = 7.5, hjust = "left", label = "Sun", size = 6) + 
  annotate("point", x = -5, y = -3, size = 25, fill = "#0D0887FF", shape = 21) +
  annotate("text", x = -4.25, y = 0, hjust = "left", label = "Earth", size = 6) +   
  annotate("point", x = -1, y = 0, size = 10, color = c6_pal[2]) +
  annotate("text", x = -0.5, y = 1.5, hjust = "left", label = "Moon", size = 6) +
  labs(#title = "Selection of celestrial bodies",
       caption = "The celestial bodys are not drawn to scale") +
  coord_cartesian(xlim = c(-8, 8), ylim = c(-9.5, 9.5)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))

p_vulcan_observed <- ggplot() +
  theme_void() +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 10.5, b = 4.9, angle = pi/5.5),
               color = col_pal(1), fill = col_pal(1, 0.25), linetype = 11) +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 10, b = 5, angle = pi/5.5),
               color = "gray50", fill = "white") +
  annotate("point", x = 0, y = 0, size = 10, fill = c6_pal[6], shape = 21) +
  annotate("text", x = 0.6, y = 1, hjust = "left", label = "Sun", size = 6) +
  annotate("point", x = -8.6, y = -5, size = 4) +
  annotate("text", x = -8.3, y = -4.5, hjust = "left", label = "Mercury", size = 6) +
  annotate("label", x = 2.5, y = -7, 
           label = expression(Deviation~"="~frac(43*"°", 3600*"°")%~~%1.2*"%"),
           hjust = "left", fill = col_pal(1, 0.25)) +
  labs(title = "Observed",
       subtitle = "The predicted orbit of Mercury is inaccurate",
       caption = "The planets and their orbits are not drawn to scale") +
  coord_cartesian(xlim = c(-9, 9), ylim = c(-8,6.5)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))

p_vulcan_model <- ggplot() +
  theme_void() +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 10.5, b = 4.9, angle = pi/5.5),
               color = col_pal(1), fill = col_pal(1, 0.25), linetype = 11) +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 10, b = 5, angle = pi/5.5),
               color = "gray50", fill = "white") +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 5.5, b = 3.5, angle = -2.25),
               color = col_pal(1), linetype = 11) +
  annotate("point", x = 0, y = 0, size = 10, fill = c6_pal[6], shape = 21) +
  annotate("text", x = 0.6, y = 1, hjust = "left", label = "Sun", size = 6) +
  annotate("point", x = -9.1, y = -5, size = 4) +
  annotate("text", x = -8.8, y = -4.5, hjust = "left", label = "Mercury", size = 6) +
  annotate("point", x = 3.5, y = 4.2, size = 3,
           shape = 21, fill = col_pal(1)) +
  annotate("text", x = 3.7, y = 4.7, hjust = "left", label = "Vulcan", size = 6) +
  labs(title = "Model",
       subtitle = "The addition of Vulcan pushes Mercury into the correct orbit",
       caption = "The planets and their orbits are not drawn to scale") +
  coord_cartesian(xlim = c(-9, 9), ylim = c(-8,6.5)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))

p_habital_observed <- ggplot() +
  theme_void() +
  geom_ellipse(aes(x0 = 6, y0 = 4, a = 14, b = 8, angle = pi/4),
               color = col_pal(1, 0.75)) +
  annotate("point", x = 6, y = 4, size = 35, fill = c6_pal[6], shape = 21) +
  annotate("point", x = c(5.5, 6, 6.4), y = c(3, 2, 1.8), size = c(2.5, 2, 1.5), 
           shape = 21, color = "black", fill = "black") +
  annotate("text", x = 7.4, y = 7.5, hjust = "left", label = "Sun", size = 6) + 
  annotate("point", x = -5, y = -3, size = 25, color = col_pal(1)) +
  annotate("text", x = -4, y = 0, hjust = "left", label = "Earth", size = 6) +   
  geom_curve(aes(x = -4.5, y = -3, xend = 5.75, yend = 1.5),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "gray50", size = 1.5, curvature = 0.2,
  ) +
  annotate("label", x = 1.25, y = -3, hjust = "center", label = "Sunspots", size = 5,
           color = "black", fill = "white") + 
  labs(title = "Observed",
       subtitle = "Black sunspots can be observed from Earth",
       caption = "The planets and their orbits are not drawn to scale") +
  coord_cartesian(xlim = c(-7, 8.5), ylim = c(-9, 9)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))

p_habital_model <- ggplot() +
  theme_void() +
  geom_ellipse(aes(x0 = -5, y0 = -3, a = 6, b = 5, angle = pi/4),
               color = c6_pal[2]) +
  geom_ellipse(aes(x0 = 6, y0 = 4, a = 14, b = 8, angle = pi/4),
               color = col_pal(1, 0.75)) +
  annotate("point", x = 6, y = 4, size = 35, fill = c6_pal[6], shape = 21) +
  annotate("point", x = c(5.5, 6, 6.4), y = c(3, 2, 1.8), size = c(2.5, 2, 1.5), 
           shape = 21, color = "black", fill = "black") +
  annotate("text", x = 7.4, y = 7.5, hjust = "left", label = "Sun", size = 6) + 
  annotate("point", x = -5, y = -3, size = 25, color = col_pal(1)) +
  annotate("text", x = -4, y = 0, hjust = "left", label = "Earth", size = 6) +   
  geom_ellipse(aes(x0 = c(-5, -4.75), y0 = c(-4, -2), a = c(0.5, 0.75), b = c(0.25, 0.5), 
                   angle = c(-1, -1)),
               fill = "white", color = "white") +
  annotate("point", x = 0, y = 0, size = 10, color = c6_pal[2]) +
  annotate("text", x = 0.5, y = 1.5, hjust = "left", label = "Moon", size = 6) +
  geom_curve(aes(x = -0.25, y = -0.5, xend = -4.5, yend = -3.5),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "gray50", size = 1.5, curvature = -0.3,
  ) +
  geom_curve(aes(x = 0.25, y = -0.5, xend = 5.75, yend = 1.5),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "gray50", size = 1.5, curvature = 0.3,
  ) +
  annotate("label", x = 0.1, y = -2.5, hjust = "center", label = "Cloud gaps", size = 5,
           color = "black", fill = "white") + 
  labs(title = "Model",
       subtitle = "From the Moon, the black sunspots could look like cloud gaps,\nas they appear on Earth",
       caption = "The planets and their orbits are not drawn to scale") +
  coord_cartesian(xlim = c(-6, 8), ylim = c(-9, 9)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))

p_hollow_observed <- 
  ggplot(tibble(x = 1:10, y = 1:10), aes(x,y )) +
  theme_void() +
  annotate("point", x = 0, y = -7, size = 26, shape = 17) +
  annotate("point", x = 0, y = -2.5, size = 10, shape = 21, fill = "black") +
  annotate("segment", x = -5, y = -7.5, xend = 5, yend = 2.5,
           size = 3, lineend = "round") +
  annotate("point", x = 4.5, y = 5.5, size = 25, shape = 21, fill = col_pal(1)) +  
  annotate("text", x = 5.5, y = 9, hjust = "left", label = "Earth", size = 6) + 
  annotate("point", x = -5, y = -5.25, size = 15, shape = 21, fill = "#6A00A8FF") +  
  annotate("text", x = -4.25, y = -3, hjust = "left", label = "Moon", size = 6) + 
  annotate("point", x = 0, y = -2.5, size = 6, shape = 8, color = c6_pal[4]) + 
  annotate("label", x = 0, y = 5, 
           label = expression(frac(rho[Moon], rho[Earth])%~~%frac(9,5)),
           hjust = "center", fill = col_pal(1, 0.25), size = 5) +
  labs(title = "Observed",
       subtitle = "The Moon has a higher density than the Earth",
       caption = "The celestial bodys are not drawn to scale") +
  coord_cartesian(xlim = c(-8, 8), ylim = c(-10, 10)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))

p_hollow_model <- ggplot(tibble(x = 1:10, y = 1:10), aes(x,y )) +
  theme_void() +
  annotate("point", x = 0, y = -7, size = 26, shape = 17) +
  annotate("point", x = 0, y = -2.5, size = 10, shape = 21, fill = "black") +
  annotate("segment", x = -5, y = -2.5, xend = 5, yend = -2.5,
           size = 3, lineend = "round") +
  annotate("point", x = 5, y = 0.75, size = 25, shape = 21, fill = col_pal(1)) +  
  annotate("point", x = 5, y = 0.75, size = 20, shape = 21, fill = "white") +  
  annotate("point", x = 5, y = 0.75, size = 15, shape = 21, fill = col_pal(1)) +  
  annotate("point", x = 5, y = 0.75, size = 10, shape = 21, fill = "white") + 
  annotate("point", x = 5, y = 0.75, size = 2.5, shape = 21, fill = c6_pal[6]) + 
  annotate("text", x = 6, y = 5, hjust = "left", label = "Earth", size = 6) + 
  annotate("point", x = -5, y = -0.5, size = 15, shape = 21, fill = "#6A00A8FF") +  
  annotate("text", x = -4.25, y = 2.5, hjust = "left", label = "Moon", size = 6) + 
  annotate("point", x = 0, y = -2.5, size = 6, shape = 8, color = c6_pal[4]) + 
  annotate("label", x = 0, y = 5, 
           label = expression(frac(rho[Moon], rho[Earth])%~~%frac(1,1)),
           hjust = "center", fill = col_pal(1, 0.25), size = 5) +
  labs(title = "Model",
       subtitle = "The Moon and a hollow Earth have the same density",
       caption = "The celestial bodys are not drawn to scale") +
  coord_cartesian(xlim = c(-8, 8), ylim = c(-10, 10)) +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 12, face = "italic"))