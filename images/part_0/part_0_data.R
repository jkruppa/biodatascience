p_wide <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(1, 4.5), ylim = c(-5.5, 5)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(1.75, 4.25, 4.25, 1.75), 
                           y = c(0.5, 0.5, 4.75, 4.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = c(1.35, 2, 3, 4), y = 4, 
           label = c("ID", "t", "t", "t"), fontface = 2, size = 6) +
  annotate("text", x = c(2, 3, 4)+0.05, y = 3.75, hjust = "left",
           label = c("1", "2", "3"), fontface = 2) +
  annotate("text", x = 1.35, y = c(1, 2, 3), label = c(3:1), size = 6, fontface = 2) +
  geom_curve(aes(x = 2.25, y = 3, xend = 3.75, yend = 3),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 2.25, y = 2, xend = 3.75, yend = 2),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 2.25, y = 1, xend = 3.75, yend = 1),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  annotate("point", x = rep(c(2,3,4), times = 3), y = rep(c(1, 2, 3), each = 3), shape = 21, 
           fill = c("white"), size = 7) +
  annotate("point", x = 2, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 3, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 4, y = c(1, 2, 3), shape = 21, , 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  #  annotate("label", x = 3, y = 4.75, label = "Measured Y", size = 5, 
  #           fill = "white", fontface = 2)
  geom_curve(aes(x = 2.8, y = -0.25, xend = 4.5, yend = -3),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 0.75) +
  geom_curve(aes(xend = 3.2, yend = -0.25, x = 4.5, y = -2),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 0.75) +
  annotate("text", x = 4, y = -1, fontface = 3, size = 5,
           label = "to wide") +
  annotate("text", x = 3.15, y = -2.95, fontface = 3, size = 5,
           label = "to long") +
 # labs(title = "Wide format") +
  theme(plot.title = element_text(size = 16, face = "bold"))

p_long <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(0.75, 3.75), ylim = c(-5.5, 5)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(2.5, 3.5, 3.5, 2.5), 
                           y = c(-5.5, -5.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = c(1, 2, 3), y = 4, 
           label = c("ID", "t", "Y"), fontface = 2, size = 6) +
  annotate("text", x = 1, y = c(-5, -4, -3, -2, -1, 0, 1, 2, 3), 
           label = rep(c(3:1), each = 3), size = 6, fontface = 2) +
  annotate("point", x = 3, y = c(-5, -4, -3, -2, -1, 0, 1, 2, 3), shape = 21, 
           fill = c("white"), size = 7) +
  annotate("point", x = 3, y = c(-5, -4, -3, -2, -1, 0, 1, 2, 3), shape = 21, 
           fill = rep(c("#0D088780", "#B12A9080", "#E1646280"), each = 3), size = 7) +
  annotate("text", x = 2, y = c(-5, -4, -3, -2, -1, 0, 1, 2, 3), size = 6, fontface = 2,
           ## color = rep(c("#0D0887FF", "#B12A90FF", "#E16462FF"), times = 3),
           label = rep(3:1, times = 3)) +
  geom_curve(aes(x = 3.3, y = 3, xend = 3.3, yend = -5),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
 # labs(title = "Long format") +
  theme(plot.title = element_text(size = 16, face = "bold"))


p_data_garbage <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(0, 8), ylim = c(1, 5)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(3, 5, 5, 3), 
                           y = c(1.25, 1.25, 4.75, 4.75)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95",
             color = "black") +
  annotate("text", x = 4, y = 4, fontface = 2, size = 6, 
           label = "Statistical") +
  annotate("text", x = 4, y = 3, fontface = 2, size = 6, 
           label = "Algorithm") +
  annotate("text", x = 4, y = 2, fontface = 3, size = 6, 
           label = '"Blackbox"') +
  ## left
  geom_ellipse(aes(x0 = 1, y0 = 3, a = 0.75, b = 1.5, angle = 0),
               fill = "#B12A9080") +
  annotate("text", x = 1, y = 3.5, fontface = 2, size = 6, 
           label = "Garbage") +
  annotate("text", x = 1, y = 2.5, fontface = 2, size = 6, 
           label = "data") +
  geom_curve(aes(x = 1.7, y = 2, xend = 2.9, yend = 2),
             arrow = arrow(length = unit(0.04, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 1) +
  geom_curve(aes(x = 1.7, y = 4, xend = 2.9, yend = 4),
             arrow = arrow(length = unit(0.04, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 1) +
  annotate("label", x = 2.35, y = 3, fontface = 3, size = 6, fill = "#F0F921FF", 
           label = "IN") +
  ## right
  geom_ellipse(aes(x0 = 7, y0 = 3, a = 0.75, b = 1.5, angle = 0),
               fill = "#6A00A880") +
  annotate("text", x = 7, y = 3.5, fontface = 2, size = 6, 
           label = "Garbage") +
  annotate("text", x = 7, y = 2.5, fontface = 2, size = 6, 
           label = "pattern") +
  geom_curve(aes(xend = 6.3, y = 2, x = 5.1, yend = 2),
             arrow = arrow(length = unit(0.04, "npc"), type = "closed"),
             curvature = 0.3, color = "black", linewidth = 1) +
  geom_curve(aes(xend = 6.3, y = 4, x = 5.1, yend = 4),
             arrow = arrow(length = unit(0.04, "npc"), type = "closed"),
             curvature = -0.3, color = "black", linewidth = 1) +
  annotate("label", x = 5.65, y = 3, fontface = 3, size = 6, fill = "#F0F921FF", 
           label = "OUT")

p_source_data <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(0, 8), ylim = c(0.5, 6)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(0.15, 5.6, 5.6, 0.15), 
                           y = c(1.8, 1.8, 4.7, 4.7)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(0.25, 1.75, 1.75, 0.25), 
                           y = c(3.5, 3.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#FCA63680") +
  geom_shape(data = tibble(x = c(2.25, 3.75, 3.75, 2.25), 
                           y = c(3.5, 3.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#FCA63680") +
  geom_shape(data = tibble(x = c(4.25, 5.5, 5.5, 4.25), 
                           y = c(3.5, 3.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#FCA63680") +
  geom_shape(data = tibble(x = c(5.9, 7.7, 7.7, 5.9), 
                           y = c(3.3, 3.3, 4.7, 4.7)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(6, 7.6, 7.6, 6), 
                           y = c(3.5, 3.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#0D088780") +
  geom_shape(data = tibble(x = c(0.25, 5.5, 5.5, 0.25), 
                           y = c(2, 2, 3, 3)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#FCA63680") +
  annotate("text", x = c(0.5, 2.5, 4.5, 6.25), y = 4, hjust = "left", 
           label = c("Human", "Animal", "Plant", "Artificial"), fontface = 2, size = 6) +
  annotate("text", x = 3, y = 2.5, 
           label = "Cell culture", fontface = 2, size = 6) +
  geom_shape(data = tibble(x = c(0.25, 7.6, 7.6), 
                           y = c(1.25, 0.9, 1.6)),
             aes(x, y), fill = "#B12A9080") +
  geom_shape(data = tibble(x = c(0.25, 0.25, 7.6), 
                           y = c(4.9, 5.6, 5.25)),
             aes(x, y), fill = "#6A00A880") +
  annotate("label", x = 4, y = c(1.25, 5.25), fontface = 3, size = 4, fill = "white", 
           label = c("Shareability / Openness", "Regulation")) +
  annotate("text", x = c(0.5, 7.5, 0.5, 7.5), y = c(1, 0.7, 5.8, 5.5), fontface = 3, size = 4, 
           label = c("less", "more", "more", "less")) +
  annotate("text", x = 0.15, y = 3.25, , fontface = 2, size = 3, 
           label = "IN VIVO", angle = 90) +
  annotate("text", x = 7.7, y = 4, , fontface = 2, size = 3, 
           label = "IN SILICO", angle = -90)

p_tech_rep <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(1, 5.75), ylim = c(-0.5, 5.25)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(1.75, 4.25, 4.25, 1.75), 
                           y = c(0.5, 0.5, 4.75, 4.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = c(1.35, 2, 3, 4, 4.75), y = 4, 
           label = c("ID", "r", "r", "r", "Y"), fontface = 2, size = 6) +
  annotate("text", x = c(2, 3, 4, 4.75)+0.05, y = 3.75, hjust = "left",
           label = c("1", "2", "3", "combined"), fontface = 2) +
  annotate("text", x = 1.35, y = c(1, 2, 3), label = c(3:1), size = 6, fontface = 2) +
  annotate("point", x = rep(c(2,3,4), times = 3), y = rep(c(1, 2, 3), each = 3), shape = 21, 
           fill = c("white"), size = 7) +
  annotate("point", x = 2, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 3, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 4, y = c(1, 2, 3), shape = 21, , 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  ## combined
  annotate("point", x = 4.75+0.15, y = c(1, 2, 3), shape = 21,, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 4.95+0.15, y = c(1, 2, 3), shape = 21,, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 5.15+0.15, y = c(1, 2, 3), shape = 21,, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("text", x = 5.45+0.15, y = c(1, 2, 3), label = "/3", size = 6, fontface = 1) +
  annotate("label", x = 3, y = 4.75, label = "Measured Y", size = 5, 
           fill = "white", fontface = 2) +
  annotate("label", x = 3, y = -0.15, label = expression(Delta~"r" %~~% 0),
           size = 6) 

p_repeat_measure <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(1, 4.5), ylim = c(-0.5, 5.25)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(1.75, 4.25, 4.25, 1.75), 
                           y = c(0.5, 0.5, 4.75, 4.75)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = c(1.35, 2, 3, 4), y = 4, 
           label = c("ID", "t", "t", "t"), fontface = 2, size = 6) +
  annotate("text", x = c(2, 3, 4)+0.05, y = 3.75, hjust = "left",
           label = c("1", "2", "3"), fontface = 2) +
  annotate("text", x = 1.35, y = c(1, 2, 3), label = c(3:1), size = 6, fontface = 2) +
  geom_curve(aes(x = 2.25, y = 3, xend = 3.75, yend = 3),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 2.25, y = 2, xend = 3.75, yend = 2),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  geom_curve(aes(x = 2.25, y = 1, xend = 3.75, yend = 1),
             arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
             curvature = 0, color = "black", linewidth = 0.5) +
  annotate("point", x = rep(c(2,3,4), times = 3), y = rep(c(1, 2, 3), each = 3), shape = 21, 
           fill = c("white"), size = 7) +
  annotate("point", x = 2, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 3, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("point", x = 4, y = c(1, 2, 3), shape = 21, , 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) +
  annotate("label", x = 3, y = 4.75, label = "Measured Y", size = 5, fontface = 2,
           fill = "white") +
  annotate("label", x = 3, y = -0.15, label = expression(Delta~"t"~">"~0),
           size = 6) 

p_measure <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(0.75, 2.75), ylim = c(-0.5, 5.25)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(1.5, 2.5, 2.5, 1.5), 
                           y = c(0.5, 0.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = c(1, 2), y = 4, 
           label = c("ID", "Y"), fontface = 2, size = 6) +
  annotate("text", x = 1, y = c(1, 2, 3), label = c(3:1), size = 6, fontface = 2) +
  annotate("point", x = rep(c(2), times = 3), y = rep(c(1, 2, 3), each = 1), shape = 21, 
           fill = c("white"), size = 7) +
  annotate("point", x = 2, y = c(1, 2, 3), shape = 21, 
           fill = c("#0D088780", "#B12A9080", "#E1646280"), size = 7) 



p_data_2d_matrix_annotated <- ggplot() +
  theme_void() +
  #theme_minimal() +
  coord_cartesian(xlim = c(-0.45, 6), ylim = c(0, 5.8)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(0.1, 0.9, 0.9, 0.1), 
                           y = c(0.1, 0.1, 4.6, 4.6)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  geom_shape(data = tibble(x = c(1.1, 2.9, 2.9, 1.1), 
                           y = c(0.1, 0.1, 4.6, 4.6)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "#B12A9080", alpha = 0.2) +
  geom_shape(data = tibble(x = c(3.1, 5.9, 5.9, 3.1), 
                           y = c(0.1, 0.1, 4.6, 4.6)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "#FCA63680", alpha = 0.2) +
  annotate("segment", x = 0, xend = 10, y = 1:4, yend = 1:4) +
  annotate("segment", x = 1:5, xend = 1:5, y = 0, yend = c(5, 4.6, 5, 4.6, 4.6)) +
  annotate("text", x = seq(0.5, 5.5, 1), y = 4.3,
           label = c(expression(bold(ID)), expression(bold(X[1])), expression(bold(X[2])), 
                     expression(bold(Y[1])), expression(bold(Y[2])), expression(bold(Y[3]))), 
           fontface = 2, size = 5) +
  annotate("label", x = c(0.5, 2, 4.5), y = 4.9,
           label = c("Individual", "Experimental", "Measurement"),
           fill = c("#6A00A880", "#B12A9080", "#FCA63680"), size = 4, fontface = 2) +
  annotate("text", y = seq(3.5, 1.5, -1), x = 0.5,
           label = c(1, 2, "..."), fontface = 2, size = 5) +
  annotate("text", x = 0.5, y = 0.5, label = "n", fontface = 2, size = 5) +
  annotate("text", x = 3.5, y = 5.5, label = "Columns", size = 7, fontface = 2) +
  annotate("text", x = -0.25, y = 2.5, label = "Rows", size = 7, fontface = 2, angle = 90) +
  annotate("text", x = rep(c(1.5, 2.5, 3.5, 4.5, 5.5), each = 4),
           y = rep(c(0.5, 1.5, 2.5, 3.5), times = 5), 
           label = c(10.1, 12.4, 15.6, 22.4, "cat", "cat", "cat", "dog", 
                     2, 2, 4, 1, 22.1, 19.7, 24.3, 33.2, 1, 1, 0, 1),
           size = 4.5)

p_data_2d_matrix <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(-0.45, 6), ylim = c(0, 5.8)) +
  scale_x_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10,10,1), expand = expansion(mult = c(0, 0))) +
  geom_shape(data = tibble(x = c(1.1, 5.9, 5.9, 1.1), 
                           y = c(0.1, 0.1, 3.9, 3.9)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("segment", x = 0, xend = 10, y = 1:4, yend = 1:4) +
  annotate("segment", x = 1:5, xend = 1:5, y = 0, yend = 5) +
  annotate("text", x = seq(1.5, 4.5, 1), y = 4.5,
           label = c(1, 2, 3, "..."), fontface = 2, size = 5) +
  annotate("text", x = 5.5, y = 4.5, label = "p", fontface = 2, size = 5) +
  annotate("text", y = seq(3.5, 1.5, -1), x = 0.5,
           label = c(1, 2, "..."), fontface = 2, size = 5) +
  annotate("text", x = 0.5, y = 0.5, label = "n", fontface = 2, size = 5) +
  annotate("segment", x = 0, xend = 1, y = 5, yend = 4) +
  annotate("text", x = 0.25, y = 4.3, label = "[i, ]", fontface = 2, size = 5) +
  annotate("text", x = 0.8, y = 4.75, label = "[ , j]", fontface = 2, size = 5) +
  annotate("text", x = 3.5, y = 5.5, label = "Columns", size = 7, fontface = 2) +
  annotate("text", x = -0.25, y = 2.5, label = "Rows", size = 7, fontface = 2, angle = 90) +
  annotate("text", x = c(seq(1.5, 3.5, 1), 5.5), y = 1.5, label = "...") +
  annotate("text", x = 4.5, y = c(0.5, 2.5, 3.5), label = "...") +
  annotate("text", x = c(1.5, 2.5, 3.5, 5.5, 1.5, 2.5, 3.5, 5.5, 1.5, 2.5, 3.5, 5.5, 4.5),
           y = c(3.5, 3.5, 3.5, 3.5, 2.5, 2.5, 2.5, 2.5, 0.5, 0.5, 0.5, 0.5, 1.5),
           label = c("[1, 1]", "[1, 2]", "[1, 3]", "[1, p]",
                     "[2, 1]", "[2, 2]", "[2, 3]", "[2, p]",
                     "[n, 1]", "[n, 2]", "[n, 3]", "[n, p]", "[i, j]"), size = 4.5)


## --------------

geom_cabin <- function(x, y) {
  list(
    annotate("segment", x = x+0.1, xend = x+0.1, y = y, yend = y+0.5, size = 1.5),
    annotate("segment", x = x+7.9, xend = x+7.9, y = y, yend = y+0.5, size = 1.5),
    annotate("segment", x = x+8.9, xend = x+8.9, y = y+1, yend = y+1.5, size = 1.5),
    # bottom
    geom_shape(data = tibble(x = c(x, x+8, x+9, x+1), 
                             y = c(y+0.5, y+0.5, y+1.5, y+1.5)),
               aes(x, y), fill = "gray70", color = "black"), 
    # top
    geom_shape(data = tibble(x = c(x, x+8, x+9, x+1), 
                             y = c(y+8.5, y+8.5, y+9.5, y+9.5)),
               aes(x, y), fill = "#E16462FF", alpha = 0.8, color = "black"), 
    # left
    geom_shape(data = tibble(x = c(x, x+1, x+1, x), 
                             y = c(y+0.5, y+1.5, y+8.5, y+8.5)),
               aes(x, y), fill = "gray75", color = "black"), 
    ## back
    annotate("rect", xmin = x +1, xmax = x + 8, ymin = y+1.5, ymax = y +8.5, fill = "gray85"),
    ## line
    annotate("point", x =  x +0.5, y = y + 7.75, size = 2.75, color = "gray50"),
    annotate("segment", x =  x +0.5, xend = x+8, y = y + 7.75, yend = y +7.75, size = 1.25,
             lineend = "round"),
    # right
    geom_shape(data = tibble(x = c(x+8, x+9, x+9, x+8), 
                             y = c(y+0.5, y+1.5, y+9.5, y+8.5)),
               aes(x, y), fill = "#E16462FF", color = "black")
  )
}

geom_hook <- function(x, y, width = 0.6, hook_text = "hook_text", hook_fill = "#0D088780",
                      angle = 90, label = TRUE, label_text = "label_text"){
  w <- width/2
  list(
    geom_shape(data = tibble(x = c(x -w, x -w, x + w, x + w), 
                             y = c(y -0.5, y - 6.5, y -6.5, y -0.5)),
               aes(x, y), radius = unit(0.1, 'cm'), fill = "white"), 
    geom_shape(data = tibble(x = c(x -w, x -w, x + w, x + w), 
                             y = c(y -0.5, y - 6.5, y -6.5, y -0.5)),
               aes(x, y), radius = unit(0.1, 'cm'), fill = hook_fill), 
    annotate("segment", x = c(x, x), xend = c(x-w+0.1, x +w-0.1), y = y, yend = y -0.5,
             lineend = "round"),
    annotate("text", angle = angle, x = x, y = y - 3.5, label = hook_text),
    if(label){
      list(
        annotate("label", hjust = "left", angle = 45, x = x, y = y +0.25, label = label_text,
                 fill = "white"),
        annotate("text", x = x, y = y, label = "$", fontface = 2, color = "#FCA636FF", size = 5)
      )
    }
  )  
}

## --------------



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

