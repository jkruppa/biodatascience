flea_jump_exp_p <- ggplot() +
  theme_void() +
  geom_ellipse(aes(x0 = 0, y0 = -5, a = 10.5, b = 4, angle = 0),
               color = "#F0F921FF", fill = "#F0F92180") +
  annotate("segment", x = 0, y = -5, xend = 0, yend = 5, size = 5) +
  geom_curve(aes(x = 0, y = 5, xend = 5.75, yend = -5),
             curvature = -0.4, linetype = "31", color = "#E16462FF") + 
  annotate("point", x = 5.75, y = -5, shape = 4, color = "#E16462FF", size = 2) +
  geom_curve(aes(x = 0, y = 5, xend = 3, yend = -8),
             curvature = -0.3, linetype = "31", color = "#E16462FF") + 
  annotate("point", x = 3, y = -8, shape = 4, color = "#E16462FF", size = 2) +
  geom_curve(aes(x = 0, y = 5, xend = -1, yend = -6),
             curvature = 0.1, linetype = "31", color = "#E16462FF") + 
  annotate("point", x = -1, y = -6, shape = 4, color = "#E16462FF", size = 2) +
  geom_curve(aes(x = 0, y = 5, xend = -3, yend = -6.5),
             curvature = 0.2, linetype = "31", color = "#6A00A8FF") + 
  annotate("point", x = -3, y = -6.5, shape = 4, color = "#6A00A8FF", size = 2) +
  geom_curve(aes(x = 0, y = 5, xend = -5, yend = -2),
             curvature = 0.2, linetype = "31", color = "#6A00A8FF") + 
  annotate("point", x = -5, y = -2, shape = 4, color = "#6A00A8FF", size = 2) +
  geom_curve(aes(x = 0, y = 5, xend = -8, yend = -4),
             curvature = 0.2, linetype = "31", color = "#6A00A8FF") + 
  annotate("point", x = -8, y = -4, shape = 4, color = "#6A00A8FF", size = 2) +
  geom_ellipse(aes(x0 = 0, y0 = 5, a = 0.3, b = 0.3/4, angle = 0),
               fill = "gray50") +  
  annotate("segment", x = c(0, 0, 0), y = c(-5, -5, -5), xend = c(5.75, 3, -1), yend = c(-5, -8, -6),
           color = "#E16462FF") +
  annotate("segment", x = c(0, 0, 0), y = c(-5, -5, -5), xend = c(-3, -5, -8), yend = c(-6.5, -2, -4),
           color = "#6A00A8FF") +
  geom_ellipse(aes(x0 = 0, y0 = -5, a = 0.35, b = 0.45/4, angle = 0),
               fill = "black") +
  coord_cartesian(xlim = c(-9.75, 9.75), ylim = c(-8.5, 5))


p_factorial_data_overview <- ggplot() +
  theme_void() +
  coord_cartesian(xlim = c(-11, 11), ylim = c(-3.5, 9.25)) +
  scale_x_continuous(breaks = seq(-10,10,1)) +
  scale_y_continuous(breaks = seq(-10,10,1)) +
  #geom_hline(yintercept = c(-5, 0, 5), color = "gray75") +
  #geom_vline(xintercept = c(-5, 0, 5), color = "gray75") +
  ## lower
  geom_shape(data = tibble(x = c(11.5, 1.5, 1.5, 11.5), 
                           y = c(-4, -4, 2.5, 2.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = 11.5, y = -0.75, label = "VISUALISATION", size = 5, fontface = 2, 
           angle = -90) +
  ### barplots
  geom_rect(aes(xmin = 3.5, xmax = 4.5, ymin = -3, ymax = 0), fill = "gray75",
            color = "black") +
  geom_rect(aes(xmin = 7.5, xmax = 8.5, ymin = -3, ymax = -1), fill = "gray75",
            color = "black") +
  geom_segment(aes(x = 4, xend = 4, y = 0, yend = 1.2)) +
  geom_segment(aes(x = 8, xend = 8, y = -1, yend = 0)) +
  geom_segment(aes(x = 3.9, xend = 4.1, y = 1.2, yend = 1.2)) +
  geom_segment(aes(x = 7.9, xend = 8.1, y = 0, yend = 0)) +
  ### boxplots
  geom_rect(aes(xmin = 5.5, xmax = 6.5, ymin = -0.75, ymax = 0.75), fill = "gray75",
            color = "black") +
  geom_rect(aes(xmin = 9.5, xmax = 10.5, ymin = -1.75, ymax = -0.25), fill = "gray75",
            color = "black") +
  geom_segment(aes(x = 5.5, xend = 6.5, y = -0.25, yend = -0.25)) +
  geom_segment(aes(x = 9.5, xend = 10.5, y = -1, yend = -1)) +
  geom_segment(aes(x = 6, xend = 6, y = 0.75, yend = 1.2)) +
  geom_segment(aes(x = 6, xend = 6, y = -0.75, yend = -1.2)) +
  geom_segment(aes(x = 10, xend = 10, y = -0.25, yend = 0.2)) +
  geom_segment(aes(x = 10, xend = 10, y = -1.75, yend = -2.2)) +
  ### coords
  geom_segment(aes(x = 2.8, xend = 11, y = -3, yend = -3)) +
  geom_segment(aes(x = 3, xend = 3, y = -3.2, yend = 2)) +
  annotate("text", x = c(5, 9), y = c(-3.5, -3.5), label = c("Dog", "Cat"), 
           fontface =2, size = 3.5) +
  annotate("text", x = c(2.5), y = c(-0.5), label = c("Jump length in [cm]"), 
           angle = 90, fontface =2, size = 3.5) +
  ## upper left
  geom_shape(data = tibble(x = c(-11.5, -1.5, -1.5, -11.5), 
                           y = c(0.5, 0.5, 9.5, 9.5)-2.25),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = -11.5, y = 5-2.25, label = "DATA", size = 5, fontface = 2, 
           angle = 90) +
  geom_segment(aes(x = -11, xend = -2, y = 8-2.25, yend = 8-2.25)) +
  geom_segment(aes(x = -6, xend = -6, y = 9-2.25, yend = 1-2.25)) +
  geom_segment(aes(x = -8, xend = -8, y = 9-2.25, yend = 1-2.25)) + 
  annotate("text", x = c(-9.5, -7, -4), y = c(8.5)-2.25,
           label = c("id", "host", "jumplength"), fontface = 2) + 
  annotate("text", x = c(-9.5), y = c(7.5, 6.5, 5.5, 3.5, 2.5, 1.5)-2.25,
           label = c("Diana", "Doris", "Daniel", "Chloe", "Cora", "Caleb")) +
  annotate("text", x = c(-7), y = c(7.5, 6.5, 5.5, 3.5, 2.5, 1.5)-2.25,
           label = c("dog", "dog", "dog", "cat", "cat", "cat")) +
  annotate("text", x = c(-4), y = c(7.5, 6.5, 5.5, 3.5, 2.5, 1.5)-2.25,
           label = c("33.2", "31.7", "36.8", "22.1", "19.7", "24.3")) +
  annotate("point", x = c(-9.5, -9.5, -9.5, -7, -7, -7, -4, -4, -4), 
           y = c(4.3, 4.5, 4.7, 4.3, 4.5, 4.7, 4.3, 4.5, 4.7)-2.25, 
           shape = 23, fill = "black", size = 0.5) +
  ## upper right
  geom_shape(data = tibble(x = c(11.5, 1.5, 1.5, 11.5), 
                           y = c(3.5, 3.5, 9.5, 9.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = 11.5, y = 6.5, label = "SUMMARY", size = 5, fontface = 2, 
           angle = -90) +
  geom_segment(aes(x = 11, xend = 2, y = 8, yend = 8)) +
  geom_segment(aes(x = 4.75, xend = 4.75, y = 9, yend = 4)) +
  annotate("text", x = c(3.5, 8), y = c(8.5),
           label = c("Host", "Descriptive statistics"), fontface = 2) +
  annotate("text", x = c(3.5), y = c(7.5, 5.5), label = c("dog", "cat")) +
  annotate("text", x = c(8), y = c(7.5, 6.5, 5.5, 4.5), 
           label = c(expression(33.9 %+-% 2.6), 
                     expression(33.2~"["*32.5*";"~"35.0"*"]"), 
                     expression("22.0" %+-% 2.3), 
                     expression(22.1~"["*20.9*";"~23.2*"]"))) +
  ## curves
  geom_curve(aes(x = -7, y = 7.5, xend = 1.25, yend = 8),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.5, color = "black", linewidth = 1.5, lineend = "round") +
  geom_curve(aes(x = 1.25, y = 5, xend = 1.25, yend = -0.75),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.5, color = "black", linewidth = 1.5, lineend = "round") 