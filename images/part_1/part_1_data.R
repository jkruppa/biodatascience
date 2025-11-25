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