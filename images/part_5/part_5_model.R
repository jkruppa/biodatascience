p_rabbit_joke <- 
  ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(0.75, 7.25), ylim = c(-4, 3.2)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  annotate("segment", x = c(2, 6), xend = c(2, 6), y = 0, yend = 1.25, size = 5, 
           color = "#0D088780") +
  annotate("point", x = c(2, 6), y = 1.5, shape = 23, size = 12, fill = "#0D0887FF") +
  annotate("point", x = 4, y = 0.5, shape = 21, size = 9, fill = "#FCA636FF") +  
  geom_ellipse(aes(x0 = 4.1, y0 = 1.4, a = 0.2, b = 0.05, angle = pi/2.15), fill = "#FCA636FF") + 
  geom_ellipse(aes(x0 = 3.9, y0 = 1.4, a = 0.2, b = 0.05, angle = -pi/2.15), fill = "#FCA636FF") +   
  annotate("point", x = 4, y = 1, shape = 21, size = 6, fill = "#FCA636FF") +  
  annotate("segment", x = 4, y = -3.3, xend = 4, yend = 0.5, color = "#B12A90FF", size = 0.75) +
  scale_y_continuous(breaks = seq(-5, 5, 1)) +
  annotate("segment", x = 0.5, xend = 7.5, y = 0, yend = 0) +
  annotate("segment", x = 1:7, xend = 1:7, y = -0.25, yend = 0.25) +
  annotate("segment", x = seq(0.5, 7.5, 0.1), xend = seq(0.5, 7.5, 0.1), 
           y = -0.1, yend = 0.1) +
  annotate("segment", x = seq(0.5, 7.5, 0.5), xend = seq(0.5, 7.5, 0.5), 
           y = -0.15, yend = 0.15) +
  annotate("text", x = 1:7, y = -0.75, label = str_c(2:8, "m", sep = ""), fontface = 2) +
  annotate("point", x = 4, y = -3.5, shape = 13, size = 6) +
  annotate("segment", x = 4, xend = 4, y = -4.5, yend = -3.5, linetype = 1, size = 3.5, 
           lineend = "round", alpha = 0.75) +  
  annotate("segment", x = 4, xend = 6, y = -3.4, yend = 0.5, linetype = 2) +
  annotate("segment", x = 4, xend = 2, y = -3.4, yend = 0.5, linetype = 2) +
  annotate("point", x = c(2, 6), y = 0.5, shape = 20, size = 2) +  
  annotate("point", x = c(4), y = 0.5, shape = 20, size = 2, color = "#B12A90FF") +  
  annotate("segment", x = 2, xend = 3.975, y = 2.5, yend = 2.5, linetype = 1, color = "#B12A90FF") +
  annotate("segment", x = 4.025, xend = 6, y = 2.5, yend = 2.5, linetype = 1, color = "#B12A90FF") +
  annotate("segment", x = c(2, 3.975, 4.025, 6), xend = c(2, 3.975, 4.025, 6), 
           y = 2.4, yend = 2.6, linetype = 1, color = "#B12A90FF") +
  annotate("text", x = 3, y = 3, label = expression((3-5)), color = "#B12A90FF", size = 4.5) +
  annotate("text", x = 3, y = 2.1, label = expression(-2*"m"), color = "#B12A90FF", size = 4.5) +
  annotate("text", x = 5, y = 3, label = expression((7-5)), color = "#B12A90FF", size = 4.5) +
  annotate("text", x = 5, y = 2.1, label = expression(+2*"m"), color = "#B12A90FF", size = 4.5) +
  annotate("text", x = 4.6, y = -3.5, 
           label = expression(bold(Deviation)~"="~(3-5)+(7-5)~"="~bold("0m")), 
           color = "#B12A90FF", size = 4.5, hjust = "left") +
  annotate("text", x = 3.25, y = -3.5, 
           label = expression(bold(Average)~"="~frac(3+7,2)~"="~bold("5m")), 
           color = "#B12A90FF", size = 4.5, hjust = "right") +
  annotate("text", x = 7.5, y = -1.4, label = "Position of the object", fontface = 4, hjust = "right")


p1_euclidean_line <- ggplot() +
  theme_void() +
  coord_equal() +
  ##theme_minimal() +
  scale_x_continuous(breaks = seq(-5, 5, 1), limits = c(0, 5)) +
  scale_y_continuous(breaks = seq(-5, 5, 1), limits = c(0, 5)) +
  ## line
  annotate("segment", x = 0.5, y = 2, xend = 4.5, yend = 3, color = "gray50",
           size = 1) +
  annotate("point", x = c(0.5, 4.5), y = c(2, 3), size = 2) +
  annotate("text", x = c(0.5, 4.5), y = c(2, 3) - 0.35, label = c("A", "B"),
           size = 5, fontface = 2) +
  annotate("text", x = 2.5, y = 2.9, label = expression(d(A,B)),
           size = 5, angle = 12) +
  labs(title = "This is a line") +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"))

p2_line_squared <- ggplot() +
  theme_void() +
  coord_equal() +
  ##theme_minimal() +
  scale_x_continuous(breaks = seq(-5, 5, 1), limits = c(0, 5)) +
  scale_y_continuous(breaks = seq(-5, 5, 1), limits = c(0, 5)) +
  ## line
  geom_tile(aes(x = 2.5, y = 2.5, width = 4, height = 4),
            fill = "#FCA63680", color = "#FCA636FF", alpha = 0.2, linewidth = 0.75,
            linetype = 2) +
  annotate("segment", x = 0.5, y = 0.5, xend = 4.5, yend = 0.5, color = "gray50",
           size = 1) +
  annotate("segment", x = 4.5, y = 0.5, xend = 4.5, yend = 4.5, color = "gray50",
           size = 1) +
  annotate("text", x = 2.5, y = 2.5, label = expression(d(A,B)^2),
           size = 5) +
  annotate("text", x = 2.5, y = 0.1, label = expression(d(A,B)),
           size = 5) +
  annotate("text", x = 4.9, y = 2.5, label = expression(d(A,B)),
           size = 5, angle = -90) +
  labs(title = "This is a squared line") +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"))
  