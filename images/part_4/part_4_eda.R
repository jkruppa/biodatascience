p_population_sample <- ggplot() +
  theme_void() +
  coord_cartesian(xlim = c(-10,8.5), ylim = c(-6, 8)) +
  scale_x_continuous(breaks = seq(-10,10,1)) +
  scale_y_continuous(breaks = seq(-10,10,1)) +
  ## left
  geom_shape(data = tibble(x = c(-10.5, 0.5, 0.5, -10.5), 
                           y = c(-2.5, -2.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("point", x = c(-3.2, -2.6, -2.6, -2, -2, -1.4)-5.5, 
           y = c(-1.75, -1.75, -1.15, -1.75, -1.15, -1.75), shape = 21, size = 4, 
           fill = "#0D088780") +
  annotate("point", x = c(-3.2, -2.6, -2.6, -2, -2, -1.4), 
           y = c(-1.75, -1.75, -1.15, -1.75, -1.15, -1.75), shape = 21, size = 4, 
           fill = "#E1646280") +  
  annotate("point", x = c(-3.2, -2.6, -2.6, -2, -2, -1.4)-2.7, 
           y = c(-1.75, -1.75, -1.15, -1.75, -1.15, -1.75), shape = 21, size = 4, 
           fill = "#FCA63680") +  
  ## right  
  geom_shape(data = tibble(x = c(2.5, 8.5, 8.5, 2.5), 
                           y = c(-6.5, -6.5, -2.5, -2.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(2.5, 8.5, 8.5, 2.5), 
                           y = c(-1, -1, 3, 3)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(2.5, 8.5, 8.5, 2.5), 
                           y = c(4.5, 4.5, 8.5, 8.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("point", x = c(-3.2, -2.6, -2.6, -2, -2, -1.4)+6.7, 
           y = c(-1.75, -1.75, -1.15, -1.75, -1.15, -1.75)-4, shape = 21, size = 4, 
           fill = "#0D088780") +
  annotate("point", x = c(-3.2, -2.6, -2.6, -2, -2, -1.4)+8.9, 
           y = c(-1.75, -1.75, -1.15, -1.75, -1.15, -1.75)+7, shape = 21, size = 4, 
           fill = "#E1646280") +  
  annotate("point", x = c(-3.2, -2.6, -2.6, -2, -2, -1.4)+7.8, 
           y = c(-1.75, -1.75, -1.15, -1.75, -1.15, -1.75)+1.5, shape = 21, size = 4, 
           fill = "#FCA63680") +  
  geom_line(data = tibble(x_raw = seq(-3.5, 3.5, 0.01), y_raw = dnorm(x_raw)), 
            aes(x = (x_raw*1.4-5), y = (y_raw*15-2)),
            linewidth = 1, color = "black") +
  geom_line(data = tibble(x_raw = seq(0, 1, 0.01), y_raw = dbeta(x_raw, 6, 3)), 
            aes(x = (x_raw*5+3), y = (y_raw*1.15+5)),
            linewidth = 1, color = "black")  +
  geom_line(data = tibble(x_raw = seq(0, 1, 0.01), y_raw = dbeta(x_raw, 6, 6)), 
            aes(x = (x_raw*5+3), y = (y_raw*1.15)-0.5),
            linewidth = 1, color = "black") +
  geom_line(data = tibble(x_raw = seq(0, 1, 0.01), y_raw = dbeta(x_raw, 3, 6)), 
            aes(x = (x_raw*5+3), y = (y_raw*1.15-6)),
            linewidth = 1, color = "black") +
  geom_segment(aes(x = -5, xend = -5, y = -2, yend = 4), linewidth = 0.75) +
  geom_segment(aes(x = 4.4, xend = 4.4, y = -6, yend = -3.1), linewidth = 0.75) +
  geom_segment(aes(x = 5.5, xend = 5.5, y = -0.5, yend = 2.6), linewidth = 0.75) +
  geom_segment(aes(x = 6.6, xend = 6.6, y = 5, yend = 7.9), linewidth = 0.75) +
  annotate("text", x = 8.5, y = 6.5, label = "SAMPLE 1", size = 4, fontface = 2, 
           angle = -90) +
  annotate("text", x = 8.5, y = 1, label = "SAMPLE 2", size = 4, fontface = 2, 
           angle = -90) +
  annotate("text", x = 8.5, y = -4.5, label = "SAMPLE 3", size = 4, fontface = 2, 
           angle = -90) +
  annotate("text", x = -10.5, y = 1, label = "POPULATION", size = 4, fontface = 2, 
           angle = 90) +
  geom_curve(aes(x = 0.5, y = -2.5, xend = 2.3, yend = -4.5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 0.5, y = 4.5, xend = 2.3, yend = 6.5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 0.75, y = 1, xend = 2.3, yend = 1),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) 
