
p_scientific_process <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(0.05, 12.1), ylim = c(0.1, -15.6)) +
  scale_x_continuous(breaks = seq(-10, 10, 1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-20, 10, 1), expand = expansion(mult = c(0, 0))) +
  ## 
  geom_shape(data = tibble(x = c(0.05, 12, 12, 0.05), 
                           y = c(-1.75, -1.75, -13.75, -13.75)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray90") +
  ## 
  geom_shape(data = tibble(x = c(0.75, 10.75, 10.75, 0.75), 
                           y = c(-7.75, -7.75, -11.75, -11.75)+0.25),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "white", alpha = 1) +
  geom_shape(data = tibble(x = c(0.75, 10.75, 10.75, 0.75), 
                           y = c(-7.75, -7.75, -11.75, -11.75)+0.25),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#B12A9080", alpha = 0.3) +
  annotate("label", hjust = "left", x = 0.75, y = -7.75+0.25, fontface = 2, 
           color = "#B12A90FF", 
           label = "Models of Reality is about", size = 4,
           fill = "white") +
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4, label = "Define a scientific question", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1, 
           label = "Do you have encounter something suspicious?", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-2),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-2, label = "Gather information and resources", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-2, 
           label = "What have others done? Don't overcommit!", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-4+0.25),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-4+0.25, label = "Define testable hypotheses", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-4+0.25, 
           label = "What can be measured, tested, and observed?", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-6+0.5),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-6+0.5, label = "Do the experiment and gather data", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-6+0.5, 
           label = "Is your experiment reproducible and unbiased?", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-8),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "white", alpha = 1) +
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-8),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-8, label = "Analyse the data with statistical models", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-8, 
           label = "Visualize! Do the models align with the data?", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-10+0.25),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "white", alpha = 1) +
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-10+0.25),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-10+0.25, label = "Interpret the data with model output", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-10+0.25, 
           label = "Consider hypotheses and the scientific question!", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-12+0.25),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-12+0.25, label = "Write it down! Publish your scientific work", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-12+0.25, 
           label = "Discuss your findings critical. Consider literatur.", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  annotate("label", hjust = "right", x = 10.5, y = -13.5+0.25, fontface = 2, 
           color = "gray25", 
           label = "Point to STOP and leave science", size = 4,
           fill = "white") +
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-1.5, -1.5, 0, 0)-14),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4-14, label = "Validation of your findings and claims", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1-14, 
           label = "Can the scientific community reproduce results?", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ## arrow
  geom_curve(aes(x = 10.85, y = -10.45+0.25, xend = 10.6, yend = -7.05+2+0.25),
             arrow = arrow(length = unit(0.125, "cm"), type = "closed"),
             color = "#B12A90FF", size = 0.75, curvature = 0.3) +
  geom_curve(aes(x = 10.85, y = -11.05+0.25, xend = 10.6, yend = -6.45+2+0.25),
             arrow = arrow(length = unit(0.125, "cm"), type = "closed"),
             color = "#B12A90FF", size = 0.75, curvature = 0.36) +
  geom_curve(aes(x = 10.85, y = -10.75+0.25, xend = 10.6, yend = -6.75+2+0.25),
             arrow = arrow(length = unit(0.125, "cm"), type = "closed"),
             color = "#B12A90FF", size = 0.75, curvature = 0.33) +
  annotate("label", hjust = "center", x = 11.55, y = -7.75+0.125, fontface = 2, 
           color = "#B12A90FF", angle = -90,  
           label = "Hypotheses hydra", size = 4.25,
           fill = "white") +  
  ## numbers
  geom_circle(aes(x0 = c(1.5, 1.5)-0.1, 
                  y0 = c(-8.4, -10.4+0.25)-0.1, 
                  r = 0.4), fill = "white", alpha = 1) +
  geom_circle(aes(x0 = c(1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5)-0.1, 
                  y0 = c(-0.4, -2.4, -4.4+0.25, -6.4+0.5, -8.4, -10.4+0.25, -12.4+0.25, -14.4)-0.1, 
                  r = 0.4), fill = "#6A00A880") +
  annotate("text", x = c(1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5)-0.1, 
           y = c(-0.4, -2.4, -4.4+0.25, -6.4+0.5, -8.4, -10.4+0.25, -12.4+0.25, -14.4)-0.1, 
           label = 1:8, size = 5, fontface = 2, color = "black") +
  annotate("text", x = 0.35, y = -13.5, angle = 90, hjust = "left", 
           label = "Academic level of final theses", size = 6, fontface = 2, 
           color = "#6A00A8FF") 

p_emp_to_logical <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(-3.5, 3.5), ylim = c(-0.1, 7.1)) +
  scale_x_continuous(breaks = seq(-10, 10, 1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10, 10, 1), expand = expansion(mult = c(0, 0))) +
  ## top
  geom_shape(data = tibble(x = c(-3.2, 3.2, 3.2, -3.2), 
                           y = c(0, 0, 7, 7)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "#6A00A880", alpha = 0.3, color = "gray50") +
  annotate("text", x = 0, y = 6.5, label = "Empiricism", fontface = 2, size = 4.5,
           color = "black") +
  annotate("text", x = 0, y = 5.7, fontface = 3, size = 4,
           label = "Source of knowledge comes from observation and sensory experience.") +
  geom_shape(data = tibble(x = c(-3.1, 3.1, 3.1, -3.1), 
                           y = c(0.25, 0.25, 5, 5)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "white", alpha = 1, color = "gray50") +
  geom_shape(data = tibble(x = c(-3.1, 3.1, 3.1, -3.1), 
                           y = c(0.25, 0.25, 5, 5)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "#FCA63680", alpha = 0.3, color = "gray50") +
  annotate("text", x = 0, y = 4.5, label = "Positivism", fontface = 2, size = 4.5,
           color = "black") +
  annotate("text", x = 0, y = 3.7, fontface = 3, size = 4,
           label = "Source of knowledge ignores everything invisible or immeasurable.") +
  geom_shape(data = tibble(x = c(-3, 3, 3, -3), 
                           y = c(0.5, 0.5, 3, 3)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "white", alpha = 1, color = "gray50") +
  geom_shape(data = tibble(x = c(-3, 3, 3, -3), 
                           y = c(0.5, 0.5, 3, 3)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "#0D088780", alpha = 0.3, color = "gray50") +
  annotate("text", x = 0, y = 2.5, label = "Logical Positivism", fontface = 2, size = 4.5,
           color = "black") +
  annotate("text", x = 0, y = 1.7, fontface = 3, size = 4,
           label = "For a source of knowledge to be meaningful, it must be testable.") +
  annotate("text", x = 0, y = 1, fontface = 3, size = 4,
           label = "Verification principle demands truth either by logic or by experimentation.")


p_theo_exper_instr <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(-5.1, 5.1), ylim = c(-8, 0.25)) +
  scale_x_continuous(breaks = seq(-10, 10, 1), expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(breaks = seq(-10, 10, 1), expand = expansion(mult = c(0, 0))) +
  ## top
  geom_shape(data = tibble(x = c(-3, 3, 3, -3), 
                           y = c(0, 0, -3, -3)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "#2F059680", alpha = 0.3, color = "gray50") +
  annotate("text", x = 0, y = -0.5, label = "Theoretical Science", fontface = 2, size = 4.5,
           color = "black") +
  annotate("text", x = 0, y = -1.2, fontface = 3, size = 4,
           label = "The brain of the knowlegde generation procedure") +
  annotate("text", x = 0, y = -1.85, fontface = 1, size = 4,
           label = "Based on thought experiments and guessing ideas") +
  annotate("text", x = 0, y = -2.5, fontface = 1, size = 4,
           label = "Math formulas, simulations, and conceptual models") +
  geom_curve(aes(x = 3.1, y = -1.5, xend = 4, yend = -3.8),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = -0.35) +
  annotate("text", angle = 50, x = -4, y = -2, label = "suggest", fontface = 3, size = 4) +
  geom_curve(aes(x = -3.1, y = -1.5, xend = -4, yend = -3.8),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = 0.35) +
  annotate("text", angle = -50, x = 4, y = -2, label = "blueprint", fontface = 3, size = 4) +
  ## left
  geom_shape(data = tibble(x = c(-5, -1, -1, -5), 
                           y = c(-4, -4, -7.75, -7.75)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "#B12A9080", alpha = 0.3, color = "gray50") +
  annotate("text", x = -3, y = -4.5, label = "Experimental Science", fontface = 2, size = 4.5,
           color = "black") +
  annotate("text", x = -3, y = -5.2, fontface = 3, size = 4,
           label = "The hands of the procedure") +
  annotate("text", x = -3, y = -5.85, fontface = 1, size = 4,
           label = "Gather empirical evidence as data") +
  annotate("text", x = -3, y = -6.5, fontface = 1, size = 4,
           label = "Falsification of models and theories") +
  annotate("text", x = -3, y = -7.25, fontface = 2, size = 4,
           label = "Goal: effects and prediction") +
  ## right
  geom_shape(data = tibble(x = c(5, 1, 1, 5), 
                           y = c(-4, -4, -7.75, -7.75)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "#F0F92180", alpha = 0.3, color = "gray50") +
  annotate("text", x = 3, y = -4.5, label = "Instrumental Science", fontface = 2, size = 4.5) +
  annotate("text",  x = 3, y = -5.2, fontface = 3, size = 4,
           label = "The ears and eyes of the procedure") +
  annotate("text", x = 3, y = -5.85, fontface = 1, size = 4,
           label = "Development of the technology") +
  annotate("text", x = 3, y = -6.5, fontface = 1, size = 4,
           label = "Measure invisible or immeasurable") +
  annotate("text", x = 3, y = -7.25, fontface = 2, size = 4,
           label = "Goal: precision and efficiency") +
  ## arrows
  geom_curve(aes(x = -0.9, y = -5, xend = 0.9, yend = -5),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = 0) +
  annotate("text", x = 0, y = -4.5, label = "demand", fontface = 3, size = 4) +
  geom_curve(aes(x = 0.9, y = -6, xend = -0.9, yend = -6),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = 0) +
  annotate("text", x = 0, y = -6.5, label = "support", fontface = 3, size = 4) 

p_kuhn_cycle <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(-5.1, 5.1), ylim = c(-2.5, 2.75)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  annotate("text", x = 0, y = 0, label = "Paradigm Shift Cycle", fontface = 2, size = 9) +
  geom_shape(data = tibble(x = c(-2.1, 2.9, 2.9, 5.6, 5.6, -2.1), 
                           y = c(1.15, 1.15, -0.85, -0.85, 2.85, 2.85)),
             aes(x, y), radius = unit(0.1, 'cm'), fill = "#B12A9080", alpha = 0.3) +
  annotate("label", hjust = "right", x = 5.6-0.025, y = 2.825, fontface = 2, color = "#B12A90FF", 
           label = "Models of Reality is about", size = 3.75,
           fill = "white") +
  ## upper left
  geom_shape(data = tibble(x = c(-5.5, -3, -3, -5.5), 
                           y = c(2.5, 2.5, 3, 3)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", hjust = "center", x = -4.25, y = 2.75, 
           label = "Pre-science", fontface = 2, size = 6) +
  geom_curve(aes(x = -4.5, y = 2.4, xend = -4.5, yend = 0.85),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = 0.2) +
  ## normal
  geom_shape(data = tibble(x = c(-2, 2, 2, -2), 
                           y = c(1, 1, 2.5, 2.5)+0.25),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", x = 0, y = 2.5, label = "Normal science is stable", fontface = 2, size = 4.5) +
  annotate("text", x = 0, y = 2.1, label = "Daily puzzle and problem solving", 
           fontface = 3, size = 3.5) +
  annotate("text", x = 0, y = 1.8, label = "Fit nature in the framework of knowing", 
           fontface = 3, size = 3.5) +
  annotate("text", x = 0, y = 1.5, label = "Suppresses fundamental novelties", 
           fontface = 3, size = 3.5) +
  geom_curve(aes(x = 2.1, y = 2.1, xend = 4.35, yend = 0.85),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = -0.35) +
  geom_curve(aes(x = 4.15, y = 0.85, xend = 2.1, yend = 1.9),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = 0.35) +
  annotate("text", hjust = "center", 
           x = 4.25, y = 2, label = "Back &\nforth", fontface = 2, size = 4) +
  ## right
  geom_shape(data = tibble(x = c(3, 5.5, 5.5, 3), 
                           y = c(-0.75, -0.75, 0.75, 0.75)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", x = 4.25, y = 0.5, label = "Drifting", fontface = 2, size = 4.5) +
  annotate("text", x = 4.25, y = 0.1, label = "Observed anomalies pile up", 
           fontface = 3, size = 3.5) +
  annotate("text", x = 4.25, y = -0.2, label = "Experimental error/noise", 
           fontface = 3, size = 3.5) +
  annotate("text", x = 4.25, y = -0.5, label = "Social pushback weaker", 
           fontface = 3, size = 3.5) +
  geom_curve(aes(x = 4.25, y = -0.85, xend = 3.35, yend = -2),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = -0.35) +
  ## bottom
  geom_shape(data = tibble(x = c(0.25, 3.25, 3.25, 0.25), 
                           y = c(-1, -1, -2.5, -2.5)-0.25),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", x = 1.75, y = -1.5, label = "Crisis", fontface = 2, size = 4.5) +
  annotate("text", x = 1.75, y = -1.9, label = "Theory breaking point", 
           fontface = 3, size = 3.5) +
  annotate("text", x = 1.75, y = -2.2, label = "Anomalies become significant", 
           fontface = 3, size = 3.5) +
  annotate("text", x = 1.75, y = -2.5, label = "Tension and frustration spread", 
           fontface = 3, size = 3.5) +
  annotate("label", hjust = "right", x = 3.25-0.025, y = -1.25 + -0.025, fontface = 2, color = "#FCA636FF", 
           label = "CRACK", size = 3.25,
           fill = "white") +
  geom_curve(aes(x = 0.15, y = -2, xend = -0.15, yend = -2),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = 0) +
  geom_shape(data = tibble(x = c(-3.25, -0.25, -0.25, -3.25), 
                           y = c(-1, -1, -2.5, -2.5)-0.25),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", x = -1.75, y = -1.5, label = "Revolution", fontface = 2, size = 4.5) +
  annotate("text", x = -1.75, y = -1.9, label = "New candidates of reality", 
           fontface = 3, size = 3.5) +
  annotate("text", x = -1.75, y = -2.2, label = "New tools and theories emerge", 
           fontface = 3, size = 3.5) +
  annotate("text", x = -1.75, y = -2.5, label = "Started by mostly young scientists", 
           fontface = 3, size = 3.5) +
  geom_curve(aes(x = -3.35, y = -2, xend = -4.25, yend = -0.85),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = -0.35) +
  ## left
  geom_shape(data = tibble(x = c(-3, -5.5, -5.5, -3), 
                           y = c(-0.75, -0.75, 0.75, 0.75)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", x = -4.25, y = 0.5, label = "Shift & change", fontface = 2, size = 4.5) +
  annotate("text", x = -4.25, y = 0.1, label = "New paradigm of reality", 
           fontface = 3, size = 3.5) +
  annotate("text", x = -4.25, y = -0.2, label = "New language & social", 
           fontface = 3, size = 3.5) +
  annotate("text", x = -4.25, y = -0.5, label = "New framework of knowing", 
           fontface = 3, size = 3.5) +
  geom_curve(aes(x = -4.25, y = 0.85, xend = -2.1, yend = 2),
             arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
             color = "gray50", size = 1.25, curvature = -0.35) 

p_io_speed_of_light <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(-5, 5), ylim = c(-1.25, 1.25)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 4.5, b = 1.25, angle = 0), color = "gray50") +
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 1.5, b = 0.5, angle = 0), color = "gray50") +
  ## lines
  annotate("segment", x = -4.5, xend = -1.5, y = 0, yend = 0, linetype = 2) +
  # annotate("segment", x = -3.5, xend = 1.5, y = -0.79, yend = 0, linetype = 2) +
  ## sun
  annotate("point", x = 0, y = 0, size = 8, shape = 21, fill = "#F0F921FF") + 
  ## lines
  annotate("segment", x = -3.5, xend = -1, y = -0.79, yend = -0.4, linetype = 2,
           color = "black") +
  annotate("segment", x = -1, xend = 1.5, y = -0.4, yend = 0, linetype = 2,
           color = "#FCA636FF") +
  ## earth
  annotate("point", x = c(-1.5, 1.5), y = 0, size = 3, color = "#0D0887FF") +
  ## jupiter
  annotate("point", x = c(-4.5, -3.5), y = c(0, -0.79), size = 5, color = "#B12A90FF") + 
  ## io
  annotate("point", x = -4.5, y = 0.3, size = 2, color = "#FCA63680") +
  geom_curve(aes(x = -4.6, y = 0.3, xend = -4.6, yend = -0.3),
             arrow = arrow(length = unit(0.1, "cm"), type = "closed"),
             color = "#FCA63680", size = 0.75, curvature = 0.9)+ 
  annotate("point", x = -4.5, y = -0.3, size = 2, color = "#FCA63680") +
  annotate("point", x = -3.5, y = -0.49, size = 2, color = "#FCA636FF") +
  geom_curve(aes(x = -3.6, y = -0.49, xend = -3.6, yend = -1.09),
             arrow = arrow(length = unit(0.1, "cm"), type = "closed"),
             color = "#FCA636FF", size = 0.5, curvature = 0.9)+ 
  annotate("point", x = -3.5, y = -1.09, size = 2, color = "#FCA636FF") +
  annotate("text", hjust = "right", x = -3.9, y = -0.79, label = "+1320s", 
           color = "#FCA636FF") +  
  ## distance
  geom_curve(aes(x = 1.45, y = -0.6, xend = 0.3, yend = -0.25),
             arrow = arrow(length = unit(0.1, "cm"), type = "closed"),
             color = "#FCA636FF", size = 0.5, curvature = -0.3) + 
  annotate("text", hjust = "left", x = 1.5, y = -0.5, 
           label = expression(d %~~% 3 %.% 10^8*"km"), 
           color = "#FCA636FF") + 
  ## c
  annotate("label", fill = "white", hjust = "left", x = 2, y = 0.5, color = "black",
           label = expression(c~"="~frac(3 %.% 10^8*"km", 1320*"s")~"="~ 227227~frac("km", "s"))) +
  labs(caption = "The planets and their orbits are not drawn to scale") +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.caption = element_text(size = 10, face = "italic"))


##----------------------------------------------------------------------------

rad <- function(degrees) degrees*pi/180
rotate_x <- \(x,y, angle) {x * cos(rad(angle)) - y * sin(rad(angle))}
rotate_y <- \(x,y, angle) {x * sin(rad(angle)) + y * cos(rad(angle))}

p_wheel_knowledge <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(-5.1, 5.1), ylim = c(-4.25, 4.75)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  geom_circle(aes(x0 = -3.5, y0 = -2, r = 4), size = 0.75, color = "gray50",
              fill = "#B12A9080", alpha = 0.3) +
  geom_circle(aes(x0 = 3.5, y0 = -2, r = 4), size = 0.75, color = "gray50",
              fill = "#FCA63680", alpha = 0.3) +
  geom_circle(aes(x0 = 0, y0 = 4, r = 4), size = 0.75, color = "gray50",
              fill = "#2F059680", alpha = 0.3) +
  geom_shape(data = tibble(x = c(-3.5, 3.5, 0), 
                           y = c(-2, -2, 4.025)), size = 1,
             aes(x, y), radius = unit(0.1, 'cm'), fill = "gray95", color = "gray50") +
  ## small triangle
  geom_shape(data = tibble(x = c(-3.5, 0, -1.75), 
                           y = c(-2, -2, 1)),
             aes(x, y), radius = unit(0.1, 'cm'), fill = "#B12A9080", alpha = 0.4) +
  geom_shape(data = tibble(x = c(3.5, 0, 1.75), 
                           y = c(-2, -2, 1)),
             aes(x, y), radius = unit(0.1, 'cm'), fill = "#FCA63680", alpha = 0.4) +
  geom_shape(data = tibble(x = c(-1.75, 1.75, 0), 
                           y = c(1, 1, 4.025)),
             aes(x, y), radius = unit(0.1, 'cm'), fill = "#0D088780", alpha = 0.4) +
  ## circle 
  geom_circle(aes(x0 = 0, y0 = 0, r = 4), size = 1, color = "gray50") +
  geom_circle(aes(x0 = 0, y0 = 0.01, r = 2), color = "gray50", fill = "gray95") +
  annotate("text", x = 0, y = c(0.65, 0, -0.65), 
           label = c("Choose", "at least", "two!"),
           fontface = 2 , size = 12.5) +
  #annotate("point", x = c(0, 3.5, -3.5), y = c(4, -2, -2), size = 3) +
  annotate("text", x = 0, y = 4.35, label = "SCIENCE", angle = 0, size = 12.5,
           fontface = 2) +
  annotate("text", x = 0, y = 2.25, label = "The why", size = 10,
           color = "#0D0887FF", fontface = 2) + 
  annotate("text", x = 0, y = 4.9, label = "Theory & Reality", angle = 0, 
           size = 8.5, fontface = 3) +
  annotate("text", x = 3.75, y = -2.25, label = "MODEL", angle = 60, size = 12.5,
           fontface = 2) +
  annotate("text", x = 1.95, y = -1.1, label = "The how", angle = 60, size = 10,
           color = "#FCA636FF", fontface = 2) +   
  annotate("text", x = 4.25, y = -2.5, label = "Prediction & Inference", angle = 60, 
           size = 8.5, fontface = 3) +
  annotate("text", x = -3.75, y = -2.25, label = "DATA", angle = -60, size = 12.5,
           fontface = 2) +
  annotate("text", x = -1.9, y = -1.05, label = "The what", angle = -60, size = 10,
           color = "#B12A90FF", fontface = 2) +   
  annotate("text", x = -4.25, y = -2.5, label = "Observation & Theory laden", 
           angle = -60, size = 8.5, fontface = 3) +
  annotate("text", x = -4.65, y = -2.9, label = "Empirical", 
           angle = -60, size = 8.5, fontface = 3) +
  ## lower
  geom_shape(data = tibble(x = c(-2, 2, 2, -2), 
                           y = c(-4.5, -4.5, -3, - 3)),
             aes(x, y), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", hjust = "center", x = 0, y = -3.3, fontface = 2, size = 7,
           label = "Data + Model") +
  annotate("text", hjust = "left", x = -1.9, y = -3.7, fontface = 2, size = 5.25,
           label = "Pattern and explanation of data") +
  annotate("text", hjust = "left", x = -1.9, y = -4, fontface = 3, size = 5.25,
           label = "Kepler's laws; Quantum mechanics") +
  annotate("text", hjust = "left", x = -1.9, y = -4.3, fontface = 1, size = 4.5,
           label = "Danger of spurious correlations without cause",
           color = "black") +
  ## right
  geom_shape(data = tibble(x = c(-2, 2, 2, -2), 
                           y = c(-4.5, -4.5, -3, -3)+7.5,
                           x_dash = rotate_x(x, y, -60),
                           y_dash = rotate_y(x, y, -60)),
             aes(x_dash, y_dash), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", hjust = "center", x = 3.65, y = 2.1, fontface = 2, size = 7,
           label = "Science + Model", angle = -60) +  
  annotate("text", hjust = "left", x = 2.4, y = 3.55, fontface = 2, size = 5.25,
           label = "Thought experiment to find pattern", angle = -60) +
  annotate("text", hjust = "left", x = 2.15, y = 3.4, fontface = 3, size = 5.25,
           label = "General and special relativity theory", angle = -60) +
  annotate("text", hjust = "left", x = 1.9, y = 3.25, fontface = 1, size = 4.5,
           label = "Danger of describing non-existent realities", angle = -60) +
  ## left
  geom_shape(data = tibble(x = c(-2, 2, 2, -2), 
                           y = c(-4.5, -4.5, -3, - 3)+7.5,
                           x_dash = rotate_x(x, y, 60),
                           y_dash = rotate_y(x, y, 60)),
             aes(x_dash, y_dash), radius = unit(0.1, 'cm'), 
             fill = "gray95", color = "gray50") +
  annotate("text", hjust = "center", x = -3.65, y = 2.1, fontface = 2, size = 7,
           label = "Science + Data", angle = 60) +    
  annotate("text", hjust = "left", x = -2.4-1.8, y = 3.55-3.25, fontface = 2, 
           size = 5.25,
           label = "Theory guided by observations", angle = 60) +
  annotate("text", hjust = "left", x = -2.15-1.8, y = 3.4-3.25, fontface = 3, 
           size = 5.25,
           label = "Exploratory Data Analysis; DataViz", angle = 60) +
  annotate("text", hjust = "left", x = -1.9-1.8, y = 3.25-3.25, fontface = 1, size = 4.5,
           label = "Danger of too specific and not general", angle = 60) 
##----------------------------------------------------------------------------

p_cholera <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(1, 9), ylim = c(0.9, 9)) +
  scale_x_continuous(breaks = seq(0, 10, 1)) +
  scale_y_continuous(breaks = seq(0, 10, 1)) +
  geom_shape(data = tibble(x = c(6.25, 9.25, 9.25, 6.25), 
                           y = c(0.75, 0.75, 9.25, 9.25)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95") +
  geom_shape(data = tibble(x = c(1.25, 5.75, 5.75, 1.25), 
                           y = c(0.75, 0.75, 9.25, 9.25)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95") +
  annotate("segment", x = 2, xend = 2, y = 1, yend = 9, size = 2) +
  annotate("segment", x = 5, xend = 6.5, y = 8, yend = 8, size = 2) +
  annotate("segment", x = 2, xend = 2, y = 1, yend = 9, size = 5, 
           color = "#0D088780") +
  annotate("segment", x = 5, xend = 5, y = 1, yend = 9, size = 2) +
  annotate("segment", x = 5, xend = 5, y = 1, yend = 9, size = 5, 
           color = "#0D088780") +
  annotate("segment", x = 8, xend = 8, y = 1, yend = 9, size = 2) +
  annotate("segment", x = 6.5, xend = 6.5, y = 4, yend = 9, size = 2) +
  annotate("segment", x = 1, xend = 9, y = 2, yend = 2, size = 2) +
  annotate("segment", x = 1, xend = 6, y = 2, yend = 2, size = 5, 
           color = "#0D088780") +
  annotate("segment", x = 1, xend = 5, y = 7, yend = 7, size = 2) +
  annotate("segment", x = 1, xend = 5, y = 7, yend = 7, size = 5, 
           color = "#0D088780") +
  annotate("segment", x = 5, xend = 8, y = 4, yend = 4, size = 2) +
  annotate("segment", x = 6.5, xend = 9, y = 6, yend = 6, size = 2) +
  ## right horizontal
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(8.3, 8.6, 8.9), 3), y = rep(c(8, 5.5, 3), each = 3)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(6.8, 7.1), 2), y = rep(c(7.5, 5), each = 2)) +
  ## middle
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(8.3, 8.6), 2), y = rep(c(8.5, 4), each = 2)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(6.8), 2), y = rep(c(4.5, 6.5), each = 1)) +
  ## left
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(2.3), 4), y = rep(c(1.5, 3.5, 6.25, 8.5), each = 1)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(5.3), 2), y = rep(c(5, 7), each = 1)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = rep(c(2.3, 2.6), 1), y = rep(c(4.5), each = 1)) +
  ## vertical
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = 3.5, y = c(6.7, 6.4)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = 7, y = c(3.7, 3.4, 3.1)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = 7.5, y = c(3.7, 3.4)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = 7.5, y = c(1.7, 1.4)) +
  annotate("point", shape = 21, fill = "#E16462FF", size = 4, 
           x = 8.5, y = c(6.3, 6.6, 6.9)) +
  ## small
  annotate("segment", x = 2, xend = 6.5, y = 6, yend = 6, size = 0.5) +
  annotate("segment", x = 2, xend = 5, y = 3, yend = 3, size = 0.5) +
  annotate("segment", x = 2, xend = 8, y = 8, yend = 8, size = 0.5) +
  annotate("segment", x = 3.5, xend = 3.5, y = 3, yend = 6, size = 0.5) +
  annotate("segment", x = 6.5, xend = 6.5, y = 2, yend = 4, size = 0.5) +
  ## number
  annotate("label", x = c(3.5, 7.25), y = 8.5, label = c("n=10", "n=29"),
           fontface = 2, size = 5, fill = "white") +
  annotate("label", x = c(3.5, 7.75), y = 0.9, size = 6, fontface = 3, fill = "white",
           label = c("hygienic", "filthy")) 

p_wall <- ggplot() +
  theme_void() +
  ## theme_ipsum() +
  coord_cartesian(xlim = c(0.75, 9.25), ylim = c(2, 10)) +
  scale_x_continuous(breaks = seq(0, 10, 1)) +
  scale_y_continuous(breaks = seq(0, 10, 1)) +
  geom_shape(data = tibble(x = c(2.5, 7.5, 7.5, 2.5), 
                           y = c(3.5, 3.5, 6.5, 6.5)),
             aes(x, y), radius = unit(0, 'cm'), fill = "gray75", color = "black") + 
  geom_shape(data = tibble(x = c(1, 2.5, 2.5, 1), 
                           y = c(2, 3.5, 6.5, 8)),
             aes(x, y), radius = unit(0, 'cm'), fill = "gray95", color = "black") + 
  geom_shape(data = tibble(x = c(7.5, 9, 9, 7.5), 
                           y = c(3.5, 2, 8, 6.5)),
             aes(x, y), radius = unit(0, 'cm'), fill = "gray85", color = "black") + 
  geom_shape(data = tibble(x = c(1, 9, 7.5, 2.5), 
                           y = c(2, 2, 3.5, 3.5)),
             aes(x, y), radius = unit(0, 'cm'), fill = "#B12A9080", color = "black") + 
  geom_shape(data = tibble(x = c(1, 9, 7.5, 2.5), 
                           y = c(8, 8, 6.5, 6.5)),
             aes(x, y), radius = unit(0, 'cm'), fill = "gray65", color = "black") + 
  ## door
  geom_shape(data = tibble(x = c(5.75, 6.75, 6.75, 5.75), 
                           y = c(3.5, 3.5, 5.5, 5.5)),
             aes(x, y), radius = unit(0, 'cm'), fill = "#E16462FF", color = "black") +
  annotate("point", x = 6, y = 4.25, size = 3) +
  ## window
  geom_shape(data = tibble(x = c(3.25, 4.75, 4.75, 3.25), 
                           y = c(4.5, 4.5, 5.5, 5.5)),
             aes(x, y), radius = unit(0, 'cm'), fill = "#0D088780", color = "black") +
  annotate("segment", x = 3.25, xend = 4.75, y = 5, yend = 5, size = 1) +
  annotate("segment", x = 4, xend = 4, y = 4.5, yend = 5.5, size = 1) +
  ## holes
  annotate("point", shape = 21, size = 4.5, x = c(1.5, 1.5, 1.5), y = c(4, 5, 6), 
           fill = "white") +
  annotate("point", shape = 21, size = 4.5, x = c(2, 2), y = c(4.5, 5.5), 
           fill = "white") +
  ## arrows / in
  annotate("segment", x = 0.5, xend = 1,color = "#6A00A8FF", 
           y = c(4, 4.5, 5, 5.5, 6), yend = c(4, 4.5, 5, 5.5, 6), size = 0.75) + 
  annotate("segment", x = c(1.5, 1.5, 1.5, 2, 2), xend = c(1.5, 1.5, 1.5, 2, 2) + 0.75, 
           arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
           y = c(4, 5, 6, 4.5, 5.5), yend = c(4, 5, 6, 4.5, 5.5), size = 0.75,
           color = "#6A00A8FF") +
  ## holes
  annotate("point", shape = 21, size = 4.5, x = c(1.5, 1.5, 1.5)+7, y = c(4, 5, 6), 
           fill = "white") +
  annotate("point", shape = 21, size = 4.5, x = c(2, 2)+6, y = c(4.5, 5.5), 
           fill = "white") +
  ## arrows / out
  annotate("segment", x = 9, xend = 9.5, color = "#6A00A8FF", 
           arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
           y = c(4, 4.5, 5, 5.5, 6), yend = c(4, 4.5, 5, 5.5, 6), size = 0.75) + 
  annotate("segment", x = c(1.5, 1.5, 1.5, 1, 1)+7, 
           xend = c(1.5, 1.5, 1.5, 1, 1)+7 - 0.75, 
           y = c(4, 5, 6, 4.5, 5.5), yend = c(4, 5, 6, 4.5, 5.5), size = 0.75,
           color = "#6A00A8FF") +
  annotate("segment", x = 1, xend = 9, y = 2, yend = 2, size = 2, lineend = "round") +
  annotate("segment", x = 1, xend = 9, y = 8, yend = 8, size = 2, lineend = "round") +
  annotate("segment", x = 1, xend = 1, y = 2, yend = 8, size = 2, lineend = "round") +
  annotate("segment", x = 9, xend = 9, y = 2, yend = 8, size = 2, lineend = "round") +
  ## flowrate
  geom_shape(data = tibble(x = c(1, 9, 9, 1), 
                           y = c(8.5, 8.5, 10.25, 10.25)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95") + 
  annotate("text", hjust = "left", x = 1.25, y = 9.75, fontface = 2, size = 5.5,
           label = "Observed values") +
  annotate("text", x = c(2.35, 7.75), y = 9, size = 5.5,
           label = c(expression(Q[IN] > 0), expression(Q[OUT] > 0))) +
  annotate("text", x = c(1.75, 8.25), y = 6.5, size = 4.5, color = "#6A00A8FF",
           label = c(expression(bold(Q[IN])), expression(bold(Q[OUT])))) +
  annotate("text", x = c(5), y = 9, size = 5.5,
           label = c(expression(p~"="~"const")))

##----------------------------------------------------------------------------
m <- 0.03
d <- 2
t_func <- \(h) d/sqrt(2*9.81*h)

newton_tbl <- tibble(h = c(0.1, 0.2, 0.3, 0.4, 0.5),
                     t = t_func(h) + rnorm(5, 0, 0.1),
                     v = d/t,
                     E = m * 9.81 * h) 

pacman::p_load(nlraa)

nls_fit <- nls(E ~ b0 * I(v^b1), data = newton_tbl, 
               start = c(b0 = 0.1, b1 = 1))

nls_ci <- predict_nls(nls_fit, interval = "prediction")

p_kenetic_energy <- cbind(newton_tbl, nls_ci) |> 
  ggplot(aes(v, E)) +
  theme_book() +
  geom_function(fun = \(x) 0.5 * 0.03 * x^2, color = "#B12A90FF",  
                size = 1) +
  geom_function(fun = \(x) 0 + 0.021 * x^(1.69), color = "#0D0887FF",
                size = 1) +
  scale_x_continuous(limits = c(0, 3.5), breaks = seq(0, 3.5, 0.5)) +
  scale_y_continuous(limits = c(-0.02, 0.25), breaks = seq(0, 0.25, 0.05)) +
  geom_point(size = 4) +
  labs(x = "Velocity [m/s]", y = "Energy [J]") +
  annotate("text", hjust = "left", x = 0.5, y = 0.2, size = 5,
           label = expression("E"[kinetic]~"="~frac(1, 2) %.% m %.% v^2), color = "#B12A90FF") +
  annotate("text", hjust = "left", x = 0.5, y = 0.15, size = 5,
           label = expression("E"[model]~"="~frac(1, 1.43) %.% m %.% v^1.69), 
           color = "#0D0887FF") +
  geom_ribbon(aes(ymin = Estimate - Est.Error, ymax = Estimate + Est.Error), 
              fill = "#0D088780", alpha = 0.2) +
  annotate("text", x = 2.5, y = 0.0325, label = "Uncertainty area",
           color = "#0D0887FF", fontface = 4, size = 5)

##----------------------------------------------------------------------------

p_newton_example <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(0, 10), ylim = c(0, 6.5)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  annotate("segment", x = 1.5, xend = 2.5, y = 0.5, yend = 0.5, size = 12, color = "gray25",
           lineend = "round") +
  annotate("segment", x = 2, xend = 2, y = 0.5, yend = 3, size = 15, color = "gray25") +
  annotate("segment", x = 2, xend = 2, y = 3, yend = 4.5, size = 10, color = "gray45") +
  annotate("segment", x = 1.5, xend = 2.5, y = 4.5, yend = 4.5, size = 5, color = "gray25",
           lineend = "round") +
  annotate("segment", x = 2, xend = 10, y = 5, yend = 0.1, 
           size = 2.5, color = "#0D0887FF",
           lineend = "round") +
  annotate("text", x = 5.5, y = 3.25, label = "d = 0.6m", fontface = 2, 
           size = 6, color = "#0D0887FF",
           angle = -30) +
  annotate("segment", x = 2.4, y = 5.3, xend = 3, yend = 4.9,
           arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
           size = 1.5, color = "#6A00A8FF") +
  geom_circle(aes(x0 = 2, y0 = 5.5, r = 0.46), fill = "#6A00A880", size = 1.25) +
  annotate("text", x = 2, y = 5.5, label = "m", fontface = 2, size = 6, color = "black") +
  annotate("text", x = 2, y = 6.25, label = "0.03kg", fontface = 2, size = 6, color = "#6A00A8FF") +
  ## error bars
  annotate("segment", x = 1, xend = 1, y = 0.1, yend = 5, size = 1, color = "#FCA636FF") +
  annotate("segment", x = 0.9, xend = 1.1, y = c(0.1, 5), yend = c(0.1, 5), 
           size = 1, color = "#FCA636FF") +
  annotate("text", x = 0.75, y = 2.45, label = "h", fontface = 2, size = 6, color = "#FCA636FF") +
  annotate("text", x = 4.5, y = 1.5, label = expression(phantom(x) %up% bold(h) %down% bold(Delta*t)), fontface = 2, size = 7, 
           color = "black") +
  annotate("text", x = 7.5, y = 4.5, label = expression(bold(v)~"="~frac(bold(d),bold(Delta*t))),
           fontface = 2, size = 7, color = "black") 


p_statistic_inductive <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(0, 10.5), ylim = c(0.5, -9.5)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  ## 
  geom_shape(data = tibble(x = c(-0.5, 10.75, 10.75, -0.5), 
                           y = c(-8.25, -8.25, 0.25, 0.25)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "gray95") +
  geom_line(data = tibble(x_raw = seq(-3.5, 3.5, 0.01), y_raw = dnorm(x_raw, sd = 1)), 
            aes(x = (x_raw*1.3 + 5.75), y = (y_raw*16 - 7.75)),
            linewidth = 5, color = "gray80") +
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-2, -2, 0, 0)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -0.4, label = "Conclusion", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1, label = "Decision making using statistical inference", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -1.6, label = "Explanation seeking including prediction", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-6, -6, -2.5, -2.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +  
  annotate("text", x = 2.25, y = -2.9, label = "Statistical modeling", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -3.5, label = "Mathematical tools to find patterns in", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -4.1, label = "data by minimizing the noise/error", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -5, label = "Finds the most likely/plausible parameter", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -5.6, label = "for a line through points", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") + 
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-8, -8, -6.5, -6.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -6.9, label = "Experimental data", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -7.5, label = "Random representation of observables", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") +
  ##
  geom_shape(data = tibble(x = c(2, 10.5, 10.5, 2), 
                           y = c(-10, -10, -8.5, -8.5)),
             aes(x, y), radius = unit(0.25, 'cm'), fill = "#6A00A880", alpha = 0.2) +
  annotate("text", x = 2.25, y = -8.9, label = "Hypothesis (often neqlected)", 
           size = 4.5, fontface = 2, hjust = "left", color = "black") + 
  annotate("text", x = 2.25, y = -9.5, label = "Testable question in an experiment", 
           size = 4.25, fontface = 3, hjust = "left", color = "black") +
  ## left
  geom_circle(aes(x0 = c(1.5, 1.5, 1.5, 1.5)-0.1, y0 = c(-0.4, -2.9, -6.9, -8.9)-0.1, r = 0.4),
              fill = "#6A00A880") +
  annotate("text", x = c(1.5, 1.5, 1.5, 1.5)-0.1, y = c(-0.4, -2.9, -6.9, -8.9)-0.1, label = 3:0,
           size = 5, fontface = 2, color = "black") +
  annotate("text", x = 0, y = -8, angle = 90, hjust = "left", 
           label = "PROBABILISTIC PROCESS", size = 5.75, fontface = 2, 
           color = "#6A00A8FF") +
  annotate("text", x = 0.5, y = -8, angle = 90, hjust = "left",
           label = "Frequentist / Bayesian", size = 4.75, fontface = 4, 
           color = "#6A00A8FF") +
  annotate("text", x = 5.125, y = 0.75, 
           label = "INDUCTIVE REASONING", size = 6, fontface = 2, 
           color = "#6A00A8FF")

p_sience_inductive <- ggplot() +
  theme_void() +
  ##theme_minimal() +
  coord_cartesian(xlim = c(-9.5, 9.5), ylim = c(0.5, 9.5)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  ## left
  geom_shape(data = tibble(x = c(-9.75, -0.25, -0.25, -9.75), 
                           y = c(0.5, 0.5, 9.5, 9.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = -5, y = 1.25, label = "INDUCTIVE", size = 9, fontface = 2, 
           color = "#6A00A8FF") +
  annotate("text", x = -5, y = 8.75, label = "Pattern finder", size = 7, fontface = 4, 
           color = "gray50") +
  geom_shape(data = tibble(x = c(-1.5, -1, -2)+0.25, y = c(2, 8, 8)),
             aes(x, y), fill = "gray75", color = "black") +
  annotate("text", x = -1.25, y = c(1.5, 8.5), label = c("specific", "general"),
           size = 5, fontface = 2) +  
  annotate("segment", x = -8.75, y = 2, xend = -8.75, yend = 8,
           arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
           size = 2, color = "gray50") +
  annotate("text", x = -8.75, y = c(1.5, 8.5), label = c("bottom", "up"),
           size = 5, fontface = 2) +  
  geom_circle(aes(x0 = c(-7.5, -7.5, -7.5), y0 = c(7.5, 5.5, 3.5), r = 0.4),
              color = "#6A00A8FF") +
  annotate("text", x = c(-7.5, -7.5, -7.5), y = c(7.5, 5.5, 3.5), label = 3:1,
           size = 5, fontface = 2, color = "#6A00A8FF") +
  annotate("text", x = c(-7.5, -7.5, -7.5)+0.6, y = c(7.5, 5.5, 3.5)+0.2, 
           label = c("Conclusion", "Pattern (model)", "Observation (data)"),
           size = 5, fontface = 2, hjust = "left", color = "#6A00A8FF") +
  annotate("text", x = -7.5+0.6, y = c(7.5-0.4, 7.5-1),
           label = c("The bus is always late",
                     "in general"),
           size = 5, fontface = 3, hjust = "left") +
  annotate("text", x = -7.5+0.6, y = c(5.5-0.4, 5.5-1), 
           label = c("The bus was also late on",
                     "Tuesday and Wednesday"),
           size = 5, fontface = 3, hjust = "left") +
  annotate("text", x = -7.5+0.6, y = c(3.5-0.4, 3.5-1), 
           label = c("The bus was late on", "Monday"),
           size = 5, fontface = 3, hjust = "left") +
  ## right
  geom_shape(data = tibble(x = c(9.75, 0.25, 0.25, 9.75), 
                           y = c(0.5, 0.5, 9.5, 9.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = 5, y = 8.75, label = "DEDUCTIVE", size = 9, fontface = 2, 
           color = "#B12A90FF") +
  annotate("text", x = 5, y = 1.25, label = "Rule follower", size = 7, fontface = 4, 
           color = "gray50") +
  geom_shape(data = tibble(x = c(-1.5, -1, -2)+0.25+10, y = c(2, 8, 8)),
             aes(x, y), fill = "gray75", color = "black") +
  annotate("text", x = -1.25+10, y = c(1.5, 8.5), label = c("specific", "general"),
           size = 5, fontface = 2) +
  annotate("segment", x = -8.75+10, y = 8, xend = -8.75+10, yend = 2,
           arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
           size = 2, color = "gray50") +
  annotate("text", x = -8.75+10, y = c(1.5, 8.5), label = c("down", "top"),
           size = 5, fontface = 2) +  
  geom_circle(aes(x0 = c(-7.5, -7.5, -7.5)+10, y0 = c(7.5, 5.5, 3.5), r = 0.4), color = "#B12A90FF") +
  annotate("text", x = c(-7.5, -7.5, -7.5)+10, y = c(7.5, 5.5, 3.5), label = 1:3,
           size = 5, fontface = 2, color = "#B12A90FF")  +
  annotate("text", x = c(-7.5, -7.5, -7.5)+0.6+10, y = c(7.5, 5.5, 3.5)+0.2, 
           label = c("Theory (general)", "Experiment (specific)", "Conclusion"),
           size = 5, fontface = 2, hjust = "left", color = "#B12A90FF") +
  annotate("text", x = -7.5+0.6+10, y = c(7.5-0.4, 7.5-1),
           label = c("In a vacuum, everything",
                     "falls equally"),
           size = 5, fontface = 3, hjust = "left") +
  annotate("text", x = -7.5+0.6+10, y = c(5.5-0.4, 5.5-1), 
           label = c("Drop a hammer and",
                     "a feather in a vacuum"),
           size = 5, fontface = 3, hjust = "left") +
  annotate("text", x = -7.5+0.6+10, y = c(3.5-0.4, 3.5-1), 
           label = c("Both hit the ground at", "the same time"),
           size = 5, fontface = 3, hjust = "left")

p_science_overview <- ggplot() +
  theme_void() +
  ## theme_minimal() +
  coord_cartesian(xlim = c(-9.5, 9.5), ylim = c(0, 10)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(-10, 10, 1)) +
  annotate("segment", x = 1.8, y = c(0, 10), xend = 2.2, yend = c(0, 10),
           size = 3, color = "gray50") +
  annotate("segment", x = 2, y = 0, xend = 2, yend = 10,
           linetype = "21", size = 3, color = "gray50") +
  annotate("text", x = 0.9, y = 5, label = "FALSIFICATION", size = 7.5, fontface = 2, 
           angle = 90, color = "#6A00A8FF") +
  annotate("text", x = 3.1, y = 5, label = "EXPERIMENT", size = 7.5, fontface = 2, 
           angle = -90, color = "#6A00A8FF") +
  ## right
  geom_shape(data = tibble(x = c(4, 10, 10, 4), 
                           y = c(0, 0, 10,10)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = 7, y = 9.25, label = "Science", size = 9.5, fontface = 2) +  
  geom_shape(data = tibble(x = c(4.5, 9.5, 9.5, 4.5), 
                           y = c(0.5, 0.5, 8.5, 8.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "#FCA63680", alpha = 0.2) +
  annotate("text", x = 7, y = 7.9, label = "Natural science", size = 6.5, fontface = 2,
           color = "#FCA636FF") +  
  annotate("text", x = 7, y = 7.2, label = "Study physical world", size = 5, fontface = 4,
           color = "#FCA636FF") +  
  annotate("text", x = 5, y = c(6, 5, 4), label = c("Physics", "Chemistry", "Biology"), 
           size = 4.5, fontface = 4, hjust = "left",
           color = "black") + 
  annotate("segment", x = 8.45, y = 3.75, xend = 8.45, yend = 6.1,
           arrow = arrow(length = unit(0.02, "npc"), type = "closed"),
           size = 1, color = "gray50") +
  annotate("text", x = c(8, 8.9), y = 4.875, label = c("More pure", "Purity"), size = 4, 
           fontface = 4, angle = -90, color = "gray50") +
  annotate("text", x = 4.9, y = 2, 
           label = c("reproducibility,\nprediction, inference,\nobservations, [locality],\nevidence, empirical\ncompleteness"), 
           size = 4.5, fontface = 4, hjust = "left",
           color = "#FCA636FF") + 
  ## left
  ### lower 
  geom_shape(data = tibble(x = c(-10, 0, 0, -10), 
                           y = c(0, 0, 10,10)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "gray95") +
  annotate("text", x = -5, y = 9.25, label = "Non-Science", size = 9.5, fontface = 2) +
  geom_shape(data = tibble(x = c(-9.5, -0.5, -0.5, -9.5), 
                           y = c(0.5, 0.5, 4.5, 4.5)),
             aes(x, y), radius = unit(0.5, 'cm'), fill = "#FCA63680", alpha = 0.2) +
  annotate("text", x = -5, y = 3.9, label = "Formal science", size = 6.5, fontface = 2,
           color = "#FCA636FF") +  
  annotate("text", x = -5, y = 3.2, label = "Study abstract structures", size = 5, fontface = 4,
           color = "#FCA636FF") +
  annotate("text", x = -5, y = 2.3, label = c("Mathematics,\n Logic, Theoretical computer science"), 
           size = 4.5, fontface = 4, color = "black") +
  annotate("text", x = -5, y = 1.1, 
           label = c("Internal rules of logic and schemas\nMore like scientific tools to do science"), size = 4.5, fontface = 4, 
           color = "#FCA636FF") +
  ### upper
  geom_shape(data = tibble(x = c(-9.5, -0.5, -0.5, -9.5), 
                           y = c(4.75, 4.75, 8.5, 8.5)), color = "black", 
             aes(x, y), radius = unit(0.5, 'cm'), linetype = 2, fill = "gray95", alpha = 1) +
  annotate("text", x = -6.7, y = 7.1, label = "Pseudo science (Astrology)", 
           size = 5, fontface = 3, color = "gray50", angle = 18) +
  annotate("text", x = -5.1, y = 6.8, label = "The Humanities (Art, Literature, Philosophy)", 
           size = 5, fontface = 3, color = "gray50", angle = 18) +
  annotate("text", x = -3.2, y = 6, label = "Anti-Science (Ideological)", 
           size = 5, fontface = 3, color = "gray50", angle = 18) +
  annotate("text", x = -5, y = 6.1, label = "Dogma and faith (Cargo cult)", 
           size = 5, fontface = 3, color = "gray50", angle = 18) +
  annotate("text", x = -0.7, y = 5.25, label = "Subjective", hjust = "right",
           size = 5, fontface = 4, color = "gray50") +
  annotate("text", x = -9.3, y = 8.1, label = "Intuition-based", hjust = "left",
           size = 5, fontface = 4, color = "gray50")


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

