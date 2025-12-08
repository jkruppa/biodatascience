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

p_theory_random <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(-10, 10), ylim = c(0, 10)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(0, 10, 1)) +
  ## Population
  geom_shape(data = tibble(x = c(0.5, 10.25, 10.25, 0.5), 
                           y = c(-0.5, -0.5, 10.5, 10.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(-10.25, -0.5, -0.5, -10.25), 
                           y = c(-0.5, -0.5, 10.5, 10.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_circle(aes(x0 = -5, y0 = 5, r = 4.25), fill = "white") +
  annotate("label", x = -5, y = 9, label = "Population", size = 8, fontface = 2) +
  annotate("text", x = 10.25, y = 5, label = "RANDOMIZED SAMPLES", size = 6, fontface = 2, 
           angle = -90) +
  annotate("text", x = -10.25, y = 5, label = "REALITY", size = 6, fontface = 2, 
           angle = 90) +
  ## Sample
  ## upper
  geom_circle(aes(x0 = 3, y0 = 9, r = 1), fill = "white") +
  annotate("text", x = 3, y = 9, label = expression(R[1]), size = 6) +
  geom_curve(aes(x = -2, y = 8, xend = 1.9, yend = 9),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  geom_circle(aes(x0 = 3, y0 = 6.5, r = 1), fill = "white") +
  annotate("text", x = 3, y = 6.5, label = expression(R[2]), size = 6) +
  geom_curve(aes(x = -1, y = 6.5, xend = 1.9, yend = 6.5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  ## between
  annotate("point", x = 3, y = c(4.8, 5, 5.2), shape = 18, size = 2) +
  ## lower
  geom_circle(aes(x0 = 3, y0 = 3.5, r = 1), fill = "white") +
  annotate("text", x = 3, y = 3.5, label = expression(R[k-1]), size = 6) +
  geom_curve(aes(x = -1, y = 3.5, xend = 1.9, yend = 3.5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 0.5) +
  geom_circle(aes(x0 = 3, y0 = 1, r = 1), fill = "white") +
  annotate("text", x = 3, y = 1, label = expression(R[k]), size = 6) +
  geom_curve(aes(x = -2, y = 2, xend = 1.9, yend = 1),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 0.5) +
  annotate("label", x = 0, y = 5, label = "R\nA\nN\nD\nO\nM\nI\nZ\nA\nT\nI\nO\nN", 
           size = 5.5, fontface = 2) +
  ## right
  geom_curve(aes(x = 4.2, y = 9, xend = 5.8, yend = 9),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 4.2, y = 6.5, xend = 5.8, yend = 6.5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 4.2, y = 3.5, xend = 5.8, yend = 3.5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 4.2, y = 1, xend = 5.8, yend = 1),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  ## wording right
  geom_shape(data = tibble(x = c(6, 9.5, 9.5, 6), y = c(8, 8, 10, 10)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "white", color = "black") +
  annotate("text", x = 7.75, y = 9, label = "Never\nobserved", size = 6, fontface = 3) +
  geom_shape(data = tibble(x = c(6, 9.5, 9.5, 6), y = c(5.5, 5.5, 7.5, 7.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "white", color = "black") +
  annotate("text", x = 7.75, y = 6.5, label = "Your\nexperiment", size = 6, 
           fontface = 2) +
  annotate("label", x = 9.5, y = 5.5, label = expression(D), size = 6) +
  annotate("point", x = 7.75, y = c(4.8, 5, 5.2), shape = 18, size = 2) +
  geom_shape(data = tibble(x = c(6, 9.5, 9.5, 6), y = c(2.5, 2.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "white", color = "black") +
  annotate("text", x = 7.75, y = 3.5, label = "Never\nobserved", size = 6, fontface = 3) +
  geom_shape(data = tibble(x = c(6, 9.5, 9.5, 6), y = c(0, 0, 2, 2)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "white", color = "black") +
  annotate("text", x = 7.75, y = 1, label = "Never\nobserved", size = 6, fontface = 3) 

p_theory_random_upper <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(-10, 10), ylim = c(0.5, 10)) +
  ## Population
  geom_shape(data = tibble(x = c(0.5, 10.25, 10.25, 0.5), 
                           y = c(0.5, 0.5, 9.75, 9.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(-10.25, -0.5, -0.5, -10.25), 
                           y = c(0.5, 0.5, 9.75, 9.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_circle(aes(x0 = -5, y0 = 5, r = 4.25), fill = "white") +
  annotate("label", x = -5, y = 9, label = "Population", size = 8, fontface = 2) +
  annotate("text", x = 2, y = 9.95, label = "Randomisation", size = 5.5, fontface = 2) +
  annotate("text", x = 2, y = 9.5, label = "Causes structural equality", size = 5, fontface = 3) +
  annotate("text", x = 10.25, y = 5, label = "YOUR EXPERIMENT", size = 6, fontface = 2, angle = -90) +
  annotate("text", x = -10.25, y = 5, label = "REALITY", size = 6, fontface = 2, angle = 90) +
  geom_curve(aes(x = -2, y = 8, xend = 6, yend = 8),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  ## Sample
  geom_circle(aes(x0 = 7.5, y0 = 7.5, r = 1.5), fill = "white") +
  annotate("label", x = 7.5, y = 9, label = "Sample", size = 7.5, fontface = 2) +
  annotate("text", x = 7.5, y = 7.25, label = "Obvserved\ndata", size = 6, 
           fontface = 2) +
  annotate("label", x = 8.75, y = 6.35, label = expression(D), size = 6) +
  geom_curve(aes(x = 6, y = 7, xend = 3, yend = 6),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0.4, color = "black", linewidth = 0.5) +
  ## Test
  geom_circle(aes(x0 = 7.5, y0 = 2.5, r = 1.5), fill = "white") +
  geom_curve(aes(x = 6, y = 2, xend = -1.9, yend = 2),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  annotate("text", x = 7.5, y = 2.25, label = "Statistical\ntest", size = 6, fontface = 2) +
  annotate("label", x = 8.75, y = 1.4, label = expression(T[D]), size = 6) +
  annotate("text", x = 2, y = 1.25, label = "Conclusion", size = 5.5, fontface = 2) +
  annotate("text", x = 2, y = 0.55, label = "Is the null hypothesis valid?", 
           size = 5, fontface = 3) +
  ## Desc stat
  geom_curve(aes(x = 3, y = 4, xend = 6, yend = 3),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0.4, color = "black", linewidth = 0.5) +
  geom_shape(data = tibble(x = c(1, 5, 5, 1), y = c(4.1, 4.1, 5.9, 5.9)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "white", color = "black") +
  annotate("text", x = 3, y = 5, label = "Descriptive\nstatistics", size = 6, 
           fontface = 2) +
  annotate("label", x = 3.65, y = 4, label = expression(bar(y)*","~s^2*","~s*","~n), 
           size = 4, hjust = "left") 

p_theory_random_full <- ggplot() +
  theme_void() +
  coord_cartesian(xlim = c(-10, 10), ylim = c(-10, 10)) +
  ## Population
  geom_shape(data = tibble(x = c(0.5, 10.25, 10.25, 0.5), 
                           y = c(0.5, 0.5, 9.75, 9.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(-10.25, -0.5, -0.5, -10.25), 
                           y = c(0.5, 0.5, 9.75, 9.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_circle(aes(x0 = -5, y0 = 5, r = 4.25), fill = "white") +
  annotate("label", x = -5, y = 9, label = "Population", size = 8, fontface = 2) +
  annotate("text", x = 2, y = 9.95, label = "Randomisation", size = 5.5, fontface = 2) +
  annotate("text", x = 2, y = 9.5, label = "Causes structural equality", size = 5, fontface = 3) +
  annotate("text", x = 10.25, y = 5, label = "YOUR EXPERIMENT", size = 6, fontface = 2, angle = -90) +
  annotate("text", x = -10.25, y = 5, label = "REALITY", size = 6, fontface = 2, angle = 90) +
  geom_curve(aes(x = -2, y = 8, xend = 6, yend = 8),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  ## Sample
  geom_circle(aes(x0 = 7.5, y0 = 7.5, r = 1.5), fill = "white") +
  annotate("label", x = 7.5, y = 9, label = "Sample", size = 7.5, fontface = 2) +
  annotate("text", x = 7.5, y = 7.25, label = "Obvserved\ndata", size = 6, fontface = 2) +
  annotate("label", x = 8.75, y = 6.35, label = expression(D), size = 6) +
  geom_curve(aes(x = 6, y = 7, xend = 3, yend = 6),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.4, color = "black", linewidth = 0.5) +
  ## Test
  geom_circle(aes(x0 = 7.5, y0 = 2.5, r = 1.5), fill = "white") +
  annotate("text", x = 7.5, y = 2.25, label = "Statistical\ntest", size = 6, fontface = 2) +
  annotate("label", x = 8.75, y = 1.4, label = expression(T[D]), size = 6) +
  ## Desc stat
  geom_curve(aes(x = 3, y = 4, xend = 6, yend = 3),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.4, color = "black", linewidth = 0.5) +
  geom_shape(data = tibble(x = c(1, 5, 5, 1), y = c(4.1, 4.1, 5.9, 5.9)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "white", color = "black") +
  annotate("text", x = 3, y = 5, label = "Descriptive\nstatistics", size = 6, 
           fontface = 2) +
  annotate("label", x = 3.65, y = 4, label = expression(bar(y)*","~s^2*","~s*","~n), 
           size = 4, hjust = "left") +
  ## Distribution
  geom_shape(data = tibble(x = c(-10.25, 10.25, 10.25, -10.25), 
                           y = c(-10.25, -10.25, -0.25, -0.25)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = 10.25, y = -5, label = "THEORY", size = 6, fontface = 2, angle = -90) +
  geom_ribbon(data = tibble(x_raw = seq(-3.5, 3.5, 0.01), y_raw = dnorm(x_raw)*18-9), 
              aes(x = (x_raw*1.25 + 5), ymax = (y_raw), ymin = -9),
              linewidth = 1, fill = "#FCA63680") +  
  geom_ribbon(data = tibble(x_raw = seq(2, 3.5, 0.01), y_raw = dnorm(x_raw)*18-9), 
              aes(x = (x_raw*1.25 + 5), ymax = (y_raw), ymin = -9),
              linewidth = 1, fill = "gray80") +  
  geom_segment(aes(x = 7.5, y = -9, xend = 7.5, yend = -8)) +
  geom_line(data = tibble(x_raw = seq(-3.5, 3.5, 0.01), y_raw = dnorm(x_raw)), 
            aes(x = (x_raw*1.25 + 5), y = (y_raw*18 - 9)),
            linewidth = 1, color = "black") +
  geom_segment(aes(x = 5, y = -9, xend = 5, yend = -1.8), color = "black") +
  geom_segment(aes(x = 0.7, y = -9, xend = 9.3, yend = -9), color = "black") + 
  annotate("text", x = 7.5, y = -9.5, label = expression(T[D]), size = 6) +
  annotate("text", x = 9, y = -8, label = "p-value", size = 6) +
  geom_curve(aes(x = 9, y = -8.3, xend = 7.8, yend = -8.8),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) +
  annotate("text", x = 5, y = -1.5, label = "Frequency", size = 5, fontface = 2) +
  annotate("text", x = 9.5, y = -9.35, label = "T", size = 5, fontface = 2) +
  ## other samples
  geom_circle(aes(x0 = -9, y0 = -2, r = 1), fill = "white") +
  annotate("text", x = -9, y = -2, label = expression(R[1]), size = 7) +
  geom_circle(aes(x0 = -6.5, y0 = -3, r = 1), fill = "white") +
  annotate("text", x = -6.5, y = -3, label = expression(R[2]), size = 7) +
  annotate("point", x = c(-4.8, -5, -5.2), y = -3, shape = 18, size = 2) +
  geom_circle(aes(x0 = -3.5, y0 = -3, r = 1), fill = "white") +
  annotate("text", x = -3.5, y = -3, label = expression(R[k-1]), size = 7) +
  geom_circle(aes(x0 = -1, y0 = -2, r = 1), fill = "white") +
  annotate("text", x = -1, y = -2, label = expression(R[k]), size = 7) +
  geom_curve(aes(x = -3.5, y = 1, xend = -1.5, yend = -1),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.2, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -4.5, y = 0.8, xend = -4, yend = -2),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.2, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -5.5, y = 0.8, xend = -6, yend = -2),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = -0.2, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -6.5, y = 1, xend = -8.5, yend = -1),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = -0.2, color = "black", linewidth = 0.5,
             linetype = "33") +
  annotate("label", x = -5, y = 1, label = "Null is true", size = 8, fontface = 2) +
  annotate("label", x = -5, y = -1, label = "Randomisation", size = 6, fontface = 2,
           fill = "gray95", label.size = NA) +
  geom_circle(aes(x0 = -9, y0 = -2-3.5, r = 1), fill = "#FCA63680") +
  annotate("text", x = -9, y = -2-3.5, label = expression(T[1]), size = 7) +
  geom_circle(aes(x0 = -6.5, y0 = -3-3.5, r = 1), fill = "#FCA63680") +
  annotate("text", x = -6.5, y = -3-3.5, label = expression(T[2]), size = 7) +
  annotate("point", x = c(-4.8, -5, -5.2), y = -3-3.5, shape = 18, size = 2) +
  geom_circle(aes(x0 = -3.5, y0 = -3-3.5, r = 1), fill = "#FCA63680") +
  annotate("text", x = -3.5, y = -3-3.5, label = expression(T[k-1]), size = 7) +
  geom_circle(aes(x0 = -1, y0 = -2-3.5, r = 1), fill = "#FCA63680") +
  annotate("text", x = -1, y = -2-3.5, label = expression(T[k]), size = 7) +
  geom_curve(aes(x = -9, y = -3, xend = -9, yend = -4.5),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -6.5, y = -4, xend = -6.5, yend = -5.5),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -3.5, y = -4, xend = -3.5, yend = -5.5),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -1, y = -3, xend = -1, yend = -4.5),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -9, y = -6.5, xend = 3, yend = -6),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.5, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -6.5, y = -7.5, xend = 3, yend = -6),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.4, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -3.5, y = -7.5, xend = 3, yend = -6),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.35, color = "black", linewidth = 0.5,
             linetype = "33") +
  geom_curve(aes(x = -1, y = -6.5, xend = 3, yend = -6),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.45, color = "black", linewidth = 0.5,
             linetype = "33") +
  annotate("label", x = -5, y = -4.7, label = "Statistical test", size = 6, 
           fontface = 2, fill = "gray95", label.size = NA) +
  ## dist to test
  geom_curve(aes(x = 4, y = -3, xend = -1.9, yend = 2),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 0.5) +
  annotate("text", x = 1, y = 0.25, label = "Conclusion", size = 5.5, fontface = 2,
           angle = -35) +
  annotate("text", x = 1.8, y = 1, label = "Is the null hypothesis valid?", 
           size = 5, fontface = 3, angle = -35) +
  geom_curve(aes(x = 8.8, y = 0.9, xend = 7.6, yend = -8),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.5) 

p_val_tbl <- expand_grid(x = 1:50,
                         y = 1:20) |> 
  mutate(fisher = sort(round(pt(rt(1000, 5), 5), 3)),
         newman = as.numeric(fisher >= 0.05)) |> 
  pivot_longer(cols = fisher:newman)


p_fisher_newman <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(-2, 50), ylim = c(-2, 47)) +
  geom_shape(data = tibble(x = c(-3, 52, 52, -3), 
                           y = c(-4, -4, 24.25, 24.25)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(-3, 52, 52, -3), 
                           y = c(24.75, 24.75, 49.5, 49.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = -3, y = 37, label = "FISHER", size = 5.5, fontface = 2, 
           angle = 90) +
  annotate("text", x = -3, y = 10.5, label = "NEWMAN/PEARSON", size = 5.5, fontface = 2, 
           angle = 90) +
  geom_point(data = filter(p_val_tbl, name == "newman"),
             aes(x, y, fill = value),
             shape = 21, size = 3, alpha = 0.75) +
  geom_point(data = filter(p_val_tbl, name == "fisher"),
             aes(x, y+25, fill = value),
             shape = 21, size = 3, alpha = 0.75) +
  geom_curve(aes(x = 49, y = 47, xend = 2, yend = 47),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 1) +
  annotate("label", hjust = "center", x = 25, y = 47.15,
           label = "Less likely to observe your data under the Null",
           fontface = 2, size = 4) +
  annotate("label", hjust = "left", x = 10, y = 22.5,
           label = expression(alpha~"="~5*"%")) +
  geom_curve(aes(x = 9.8, y = 22.5, xend = 3, yend = 10.5),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 0.75) +
  annotate("label", hjust = "center", x = 2, y = 22.5,
           label = expression(p <= alpha), fill = "#0D088780") +
  annotate("label", hjust = "center", x = 27, y = 22.5,
           label = expression(p > alpha), fill = "#F0F92180") +
  annotate("label", hjust = "center", x = 27, y = -1.5,
           label = "Accept Null", fontface = 2, fill = "#F0F92180", size = 3.5) +
  annotate("label", hjust = "center", x = 2, y = -1.5,
           label = "Reject Null", fontface = 2, fill = "#0D088780", size = 3.5) +
  scale_fill_viridis(option = "plasma") +
  theme(legend.position = "none") 


geom_fire_alarm <- function(x, y, alarm = FALSE, fire = FALSE) {
  list(
    geom_curve(aes(x = x-0.25, y = y+0.25, xend = x-0.25, yend = y+1.5),
               curvature = -0.8, color = "black", linewidth = 0.5, lineend = "round"),
    annotate("point", x = x, y = y, shape = 24, fill = "#E16462FF", color = "black", size = 10),
    annotate("point", x = x, y = y+0.75, shape = 21, fill = "#E16462FF", color = "black", size = 10),
    annotate("point", x = x, y = y+0.75, shape = 16, color = "black", size = 2),
    annotate("point", x = x-0.25, y = y+1.5, shape = 16, color = "black", size = 3),  
    annotate("rect", xmin = x +1.5, xmax = x + 4.5, ymin = y, ymax = y - 2, fill = "gray80"),
    geom_shape(data = tibble(x = c(x+4.5, x+5, x+5, x+4.5), 
                             y = c(y+0, y+0.5, y-1.5, y-2)),
               aes(x, y), fill = "gray50"),
    geom_shape(data = tibble(x = c(x+1.5, x+2, x+5, x+4.5), 
                             y = c(y+0, y+0.5, y+0.5, y+0)),
               aes(x, y), fill = "gray65"),
    annotate("segment", x = x+2.25, xend = x +3.75, y = y-0.9, yend = y-0.9),
    annotate("segment", x = x+2.25, xend = x +3.75, y = y-1.1, yend = y-1.1),
    annotate("point", x = c(x+2.25, x +3.75), y = y-0.25, shape = 10, size = 2),
    geom_ellipse(aes(x0 = x + 2.5, y0 = y+0.25, a = 0.5, b = 0.15, angle = 0), fill = "gray20"),
    geom_ellipse(aes(x0 = x + 4, y0 = y+0.25, a = 0.5, b = 0.15, angle = 0), fill = "gray20"),
    if(alarm) {
      list(
        geom_curve(aes(x = x+0.5, y = y+0.35, xend = x+0.25, yend = y+1.35),
                   curvature = 0.7, color = "#0D0887FF", linewidth = 0.5, lineend = "round"), 
        geom_curve(aes(x = x+0.6, y = y+0.25, xend = x+0.35, yend = y+1.45),
                   curvature = 0.7, color = "#0D0887FF", linewidth = 0.5, lineend = "round"),
        geom_curve(aes(x = x+0.7, y = y+0.15, xend = x+0.45, yend = y+1.55),
                   curvature = 0.7, color = "#0D0887FF", linewidth = 0.5, lineend = "round"),
        geom_curve(aes(x = x+0.8, y = y+0.05, xend = x+0.55, yend = y+1.65),
                   curvature = 0.7, color = "#0D0887FF", linewidth = 0.5, lineend = "round"),
        annotate("label", x = x, y = y-0.2, shape = 16, color = "black", size = 1.6, 
                 label = "ALARM", fontface = 2)
      )
    },
    if(fire){
      list(
        geom_image(aes(x = x+4, y = y+1.05, image = "images/fire.png"), size = 0.06),
        geom_shape(data = tibble(x = c(x+2, x+4, x+4, x+2), 
                                 y = c(y-0.5, y-0.5, y-1.5, y-1.5)),
                   aes(x, y), fill = "#FCA63680", radius = unit(0.1, 'cm'))
      )
    } else {
      geom_shape(data = tibble(x = c(x+2, x+4, x+4, x+2), 
                               y = c(y-0.5, y-0.5, y-1.5, y-1.5)),
                 aes(x, y), fill = "#0D088780", radius = unit(0.1, 'cm'))
    }
  )
}

p_fire_alarm <- ggplot() +
  theme_void() +
  coord_cartesian(xlim = c(-9.1, 9.2), ylim = c(-9.2, 9.1)) +
  scale_x_continuous(breaks = seq(-10,10,1)) +
  scale_y_continuous(breaks = seq(-10,10,1)) +
  #  geom_hline(yintercept = c(-10, -2, 6), color = "gray75") +
  #  geom_vline(xintercept = c(-6, 2, 10), color = "gray75") +
  geom_fire_alarm(x = 4, y = 4, alarm = "TRUE") +
  geom_fire_alarm(x = -4, y = 4, alarm = "TRUE", fire = "TRUE") +
  geom_fire_alarm(x = 4, y = -4) +
  geom_fire_alarm(x = -4, y = -4, fire = "TRUE") +
  ## coords
  annotate("segment", x = -10, y = -10, xend = 10, yend = -10, size = 1) +
  annotate("segment", x = -8, y = -2, xend = 10, yend = -2, size = 1) +
  annotate("segment", x = -10, y = 6, xend = 10, yend = 6, size = 1) +
  annotate("segment", x = -6, y = 10, xend = -6, yend = -10, size = 1) +
  annotate("segment", x = 2, y = 8, xend = 2, yend = -10, size = 1) +
  annotate("segment", x = 10, y = 10, xend = 10, yend = -10, size = 1) +
  ## text
  annotate("text", x = -2, y = 1.5, label = "ALARM with FIRE", fontface = 3) +
  annotate("text", x = -2, y = 0.5, label = "Power / True positive", fontface = 2, size = 5) +
  annotate("text", x = -2, y = -0.5, label = expression(1-beta~"="~80*"%"), size = 4.5) + 
  annotate("text", x = -2, y = -1.5, label = "We believe in this to be high.", fontface = 3.5,
           size = 4) +
  annotate("text", x = 6, y = 1.5, label = "ALARM without FIRE", fontface = 3) +
  annotate("text", x = 6, y = 0.5, label = "Type I error / False positive", fontface = 2, size = 5) +
  annotate("text", x = 6, y = -0.5, label = expression(alpha~"="~5*"%"), size = 4.5) +
  annotate("text", x = 6, y = -1.5, label = "We control this in our testing.", fontface = 3.5,
           size = 4) +
  annotate("text", x = -2, y = -6.5, label = "FIRE without ALARM", fontface = 3) +
  annotate("text", x = -2, y = -7.5, label = "Type II error / False negative", 
           fontface = 2, size = 5) +
  annotate("text", x = -2, y = -8.5, label = expression(beta~"="~20*"%"), size = 4.5) +
  annotate("text", x = -2, y = -9.5, label = "We cannot control this in our testing.", 
           fontface = 3, size = 4) +
  annotate("text", x = 6, y = -6.5, label = "No FIRE, no ALARM", fontface = 3) +
  annotate("text", x = 6, y = -7.5, label = "True negative", fontface = 2, size = 5) +
  annotate("text", x = 6, y = -8.5, label = expression(1-alpha~"="~95*"%"), size = 4.5) +
  annotate("text", x = 6, y = -9.5, label = "We are rarely interested in.", 
           fontface = 3, size = 4) +
  ## columns
  annotate("text", x = 2, y = 9, label = "Unkown truth in the population", fontface = 2, size = 7.5) +
  annotate("text", x = -2, y = 7, label = "Null is false / effect", fontface = 2, size = 5.5) +
  annotate("text", x = 6, y = 7, label = "Null is true / no effect", fontface = 2, size = 5.5) +
  ## rows
  annotate("text", x = -9, y = -2, label = "Decision by a statistical test", fontface = 2, 
           size = 7.5, angle = 90) +
  annotate("text", x = -7, y = 2, label = "Reject Null / effect", fontface = 2, size = 5.5, angle = 90) +
  annotate("text", x = -7, y = -6, label = "Keep Null / no effect", fontface = 2, size = 5.5, angle = 90) 


geom_bulls_eye <- function(x, y) {
  list(
    stat_circle(aes(x0 = x, y0 = y, r = 0.2), fill = "#E16462FF", color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 0.5), color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 1), color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 1.5), color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 2), color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 2.5), color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 3), color = "gray50"),
    stat_circle(aes(x0 = x, y0 = y, r = 3.5), color = "gray50")
  )
}

error_tbl <- tibble(x = seq(0, 3, by = 0.1),
                    y_1 = x^2+1,
                    y_2 = exp(-x+2.65),
                    y_sum = y_1 + y_2)
min_y_sum_tbl <- error_tbl |> 
  mutate(fct = seq(1, 29/17, length.out = 31)) |> 
  filter(y_sum == min(y_sum))

p_bulls_eye <- ggplot() +
  theme_void() +
  coord_cartesian(xlim = c(-8.5, 27.5), ylim = c(-9.2, 9.1)) +
  scale_x_continuous(breaks = seq(-10,30,1)) +
  scale_y_continuous(breaks = seq(-10,10,1)) +
  #  geom_hline(yintercept = c(-10, -2, 6), color = "gray75") +
  #  geom_vline(xintercept = c(-6, 2, 10), color = "gray75") +
  ## bulls eye
  geom_bulls_eye(x = -2, y = 2) +  
  geom_bulls_eye(x = 6, y = 2) +  
  geom_bulls_eye(x = -2, y = -6) +  
  geom_bulls_eye(x = 6, y = -6) +  
  geom_point(data = tibble(x = rnorm(12, -3, 1.25),
                           y = rnorm(12, 5, 1.25)), 
             aes(x,y), shape = 19) +
  geom_point(data = tibble(x = rnorm(10, 4, 0.25),
                           y = rnorm(10, 4, 0.25)), 
             aes(x,y), shape = 19) +
  geom_point(data = tibble(x = rnorm(10, 6, 0.2),
                           y = rnorm(10, -6, 0.2)), 
             aes(x,y), shape = 19) +
  geom_point(data = tibble(x = rnorm(12, -2, 1),
                           y = rnorm(12, -6, 1)), 
             aes(x,y), shape = 19) +
  ## coords
  annotate("segment", x = -10, y = -10, xend = 10, yend = -10, size = 1) +
  annotate("segment", x = -8, y = -2, xend = 10, yend = -2, size = 1) +
  annotate("segment", x = -10, y = 6, xend = 10, yend = 6, size = 1) +
  annotate("segment", x = -6, y = 10, xend = -6, yend = -10, size = 1) +
  annotate("segment", x = 2, y = 8, xend = 2, yend = -10, size = 1) +
  annotate("segment", x = 10, y = 10, xend = 10, yend = -10, size = 1) +
  ## text
  ## columns
  annotate("text", x = 2, y = 9, label = "Variance", fontface = 2, size = 8.5) +
  annotate("text", x = -2, y = 7, label = "High", fontface = 2, size = 7.5) +
  annotate("text", x = 6, y = 7, label = "Low", fontface = 2, size = 7.5) +
  ## rows
  annotate("text", x = -9, y = -2, label = "Bias", fontface = 2, 
           size = 8.5, angle = 90) +
  annotate("text", x = -7, y = 2, label = "High", fontface = 2, size = 7.5, angle = 90) +
  annotate("text", x = -7, y = -6, label = "Low", fontface = 2, size = 7.5, angle = 90) +
  # right
  ## coords
  annotate("text", x = 21.5, y = -9, label = "Complexity of the model", fontface = 2, size = 7.5) +  
  annotate("text", x = 13, y = 0.5, label = "Error", fontface = 2, 
           size = 7.5, angle = 90) +
  geom_line(data = error_tbl,
            aes(x = (x+14)*seq(1, 29/17, length.out = 31), 
                y = (y_1-8)*seq(1, 1.5, length.out = 31)), color = "#0D0887FF", size = 1.5) + 
  geom_line(data = error_tbl,
            aes(x = (x+14)*seq(1, 29/17, length.out = 31), 
                y = (y_2-8)), color = "#B12A90FF", size = 1.5) +
  geom_line(data = error_tbl,
            aes(x = (x+14)*seq(1, 29/17, length.out = 31), 
                y = (y_sum-8)), color = "#FCA636FF", size = 1.5) +
  geom_segment(data = min_y_sum_tbl, aes(x = (x+14)*fct, xend = (x+14)*fct,
                                         y = 8, yend = -7.9), color = "gray50",
               arrow = arrow(length = unit(0.02, "npc"), type = "closed")) +
  annotate("segment", x = 14, y = -8, xend = 29, yend = -8, size = 1,
           arrow = arrow(length = unit(0.03, "npc"), type = "closed")) +
  annotate("segment", x = 14, y = -8, xend = 14, yend = 9, size = 1,
           arrow = arrow(length = unit(0.03, "npc"), type = "closed")) +
  annotate("text", x = 29, y = -6, hjust = "right", label = "Bias²", size = 5.5, 
           color = "#B12A90FF", fontface = 2) +
  annotate("text", x = 29, y = -3, hjust = "right", label = "Variance", size = 5.5, 
           color = "#0D0887FF", fontface = 2) +
  annotate("text", x = 29, y = 4, hjust = "right", label = "Total Error", size = 5.5, 
           color = "#FCA636FF", fontface = 2) +
  annotate("text", x = 20.25, y = 4, hjust = "center", label = "Optimal complexity", size = 5.5, 
           color = "gray50", fontface = 3, angle = 90)  +
  ## letter
  annotate("text", x = c(-9, 11.5), y = c(9, 9), label = c("(A)", "(B)"), size = 9,
           fontface = 2)
