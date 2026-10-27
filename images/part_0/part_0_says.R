p1_what_he_says <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(0, 8), ylim = c(0, 3)) +
  geom_shape(data = tibble(x = c(3.25, 5.25, 5.25, 3.25), 
                           y = c(-0.1, -0.1, 3.1, 3.1)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = 4.25, y = 1.5, label = "PROCESS", size = 10, fontface = 2,
           color = "gray80", angle = 60) + 
  ## Population
  geom_circle(aes(x0 = 1.5, y0 = 1.5, r = 1), fill = "gray95", size = 2.5) +
  ## Data
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 2.4, r = 0.1), fill = "gray95", size = 1,
              color = "gray90") +
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 2.15, r = 0.1), fill = "gray95", size = 1,
              color = "gray80") +
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 1.9, r = 0.1), fill = "gray95", size = 1,
              color = "gray70") +
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 1.65, r = 0.1), fill = "gray95", size = 1,
              color = "gray70") + 
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 1.4, r = 0.1), fill = "gray95", size = 1,
              color = "gray70") +
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 1.15, r = 0.1), fill = "gray95", size = 1,
              color = "gray70") +
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 0.9, r = 0.1), fill = "gray95", size = 1,
              color = "gray80") +
  geom_circle(aes(x0 = seq(6.25, 7.5, 0.25), y0 = 0.65, r = 0.1), fill = "gray95", size = 1,
              color = "gray90") +
  geom_circle(aes(x0 = 7.25, y0 = 1.15, r = 0.1), fill = "gray95", size = 1,
              color = "gray25") + 
  geom_shape(data = tibble(x = c(6.5, 7.3, 6.7), 
                           y = c(1, 1.125, 2)),
             aes(x, y), radius = unit(0.075, 'cm'), fill = "black") +
  #  geom_circle(aes(x0 = 7.1, y0 = 1.6, r = 0.5), fill = "gray95", size = 2.5,
  #              color = "gray70", linetype = "12") +
  #  geom_circle(aes(x0 = 7.6, y0 = 1.4, r = 0.5), fill = "gray95", size = 2.5,
  #              color = "gray70", linetype = "12") +
  #  geom_circle(aes(x0 = 7.2, y0 = 0.6, r = 0.5), fill = "gray95", size = 2.5,
  #              color = "gray70", linetype = "12") +
  #  geom_circle(aes(x0 = 7.8, y0 = 2.1, r = 0.5), fill = "gray95", size = 2.5,
  #              color = "gray70", linetype = "12") +
  ## front
  geom_circle(aes(x0 = 6.5, y0 = 1.5, r = 0.5), fill = "gray95", size = 2.5) +
  geom_circle(aes(x0 = 6.5, y0 = 1.7, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  geom_circle(aes(x0 = 6.25, y0 = 1.4, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  geom_circle(aes(x0 = 6.7, y0 = 1.3, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  ## arrows
  geom_curve(aes(x = 2.5, y = 2, xend = 6.1, yend = 2),
             arrow = arrow(length = unit(0.04, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 2) +
  geom_curve(aes(x = 6.1, y = 1, xend = 2.5, yend = 1),
             arrow = arrow(length = unit(0.04, "npc"), type = "closed"),
             curvature = -0.3, color = "#0D0887FF", linewidth = 2) +
  ## text
  annotate("text", x = 1.5, y = 2.75, label = "REALITY", size = 7.5, fontface = 2) + 
  annotate("text", x = 6.875, y = 2.75, label = "DATA", size = 7.5, fontface = 2) +
  annotate("text", x = 4.25, y = 2.85, label = "Generation", size = 7.5, fontface = 4) + 
  annotate("text", x = 4.25, y = 0.15, label = "Model", size = 7.5, fontface = 4,
           color = "#0D0887FF")   


p2_what_he_says <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(0, 8), ylim = c(0.23, 2.75)) +
  ## Population
  geom_circle(aes(x0 = 1, y0 = 1.5, r = 1), fill = "gray95", size = 2.5) +
  geom_circle(aes(x0 = 0.5, y0 = 1, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  geom_circle(aes(x0 = 1, y0 = 2, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  geom_circle(aes(x0 = 1.5, y0 = 1.5, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  ## error
  geom_shape(data = tibble(x = c(6, 8.05, 8.05, 6), 
                           y = c(2.5, 2.5, 0.5, 0.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "#0D0887FF", alpha = 0.1) +
  geom_segment(aes(x = 6.1, y = 0.5, xend = 8, yend = 0.5), size = 2.5,
               lineend = "round", color = "#0D0887FF") +
  geom_segment(aes(x = 8, y = 0.5, xend = 8, yend = 2.5), size = 2.5,
               lineend = "round", color = "#0D0887FF") +
  geom_segment(aes(x = 8, y = 2.5, xend = 6.125, yend = 2.5), size = 2.5,
               lineend = "round", color = "#0D0887FF") +
  geom_segment(aes(x = 6, y = 0.6, xend = 6, yend = 2.5), size = 2.5,
               lineend = "round", color = "#0D0887FF", linetype = "12") +
  annotate("point", x = 6, y = 0.5, shape = 21, fill = "#0D0887FF", color = "#0D0887FF",
           size = 2) +
  geom_circle(aes(x0 = 6, y0 = 2.5, r = 0.1), color = "#0D0887FF", fill = "white", size = 2) +
  geom_circle(aes(x0 = 6, y0 = 0.5, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  ## model
  geom_curve(aes(x = 3, y = 1.15, xend = 4, yend = 1.5),
             curvature = 0.6, color = "#6A00A880", linewidth = 2.5, lineend = "round") +
  geom_curve(aes(x = 4, y = 1.5, xend = 5, yend = 1.85),
             curvature = -0.6, color = "#6A00A880", linewidth = 2.5, lineend = "round") +
  geom_segment(aes(x = 3, y = 0.5, xend = 5, yend = 2.5), size = 2.5,
               lineend = "round", color = "#0D0887FF") +
  geom_circle(aes(x0 = 3.25, y0 = 0.75, r = 0.1), color = "#0D0887FF", fill = "white", size = 2) +
  geom_circle(aes(x0 = 4, y0 = 1.5, r = 0.1), color = "#0D0887FF", fill = "white", size = 2) +
  geom_circle(aes(x0 = 4.75, y0 = 2.25, r = 0.1), color = "#0D0887FF", fill = "white", size = 2) +
  ## error line
  geom_circle(aes(x0 = 4.75, y0 = 1, r = 0.1), fill = "#0D0887FF", color = "#0D0887FF", size = 2) +
  geom_segment(aes(x = 4.75, y = 1.1, xend = 4.75, yend = 2.1), size = 2.5,
               lineend = "round", color = "#0D0887FF", linetype = "12") +  
  annotate("text", x = 1, y = 2.75, label = "DATA", size = 7.5, fontface = 2) + 
  annotate("text", x = 4, y = 2.75, label = "MODEL", size = 7.5, fontface = 2) +
  annotate("text", x = 7, y = 2.75, label = "ERROR", size = 7.5, fontface = 2) +
  annotate("text", x = 1, y = 0.275, label = "Circle", size = 7.5, fontface = 4) + 
  annotate("text", x = 4, y = 0.275, label = "Line", size = 7.5, fontface = 4) +
  annotate("text", x = 7, y = 0.275, label = "Square", size = 7.5, fontface = 4)  