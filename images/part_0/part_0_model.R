p_lhs_rhs <- ggplot() +
  theme_void() +
  annotate("text", 0, 0, label = "~", size = 10, fontface = 2, hjust = "center") +
  annotate("text", -1.5, 0, label = "Y", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 1.5, 0, label = "X", size = 10, fontface = 2, hjust = "center") +
  annotate("text", x = 4, y = -5, label = "Tilde", size = 6, 
           fontface = 3, color = "gray50") +
  annotate("label", x = -4, y = 3, label = "LHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  annotate("label", x = 4, y = 3, label = "RHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  geom_curve(aes(x = 3.1, y = -5.4, xend = 0, yend = -1),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.35, color = "gray50") +
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-6, 6)) +
  labs(title = "Model notation",
       caption = "LHS = left hand side\nRHS = right hand side")  +
  theme(plot.caption = element_text(face = "italic"),
        plot.title = element_text(size = 16, face = "bold"))

p_model_abstract <- ggplot() +
  theme_void() +
  annotate("text", 0, 0, label = "~", size = 10, fontface = 2, hjust = "center") +
  annotate("text", -2.5, 0, label = "Data", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 2.6, 0, label = "Model", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 5.2, 0, label = "+", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 7.7, 0, label = "Error", size = 10, fontface = 2, hjust = "center") +
  annotate("label", x = 2.6, y = 3.2, label = "Statistical model f(x)", size = 3.5, 
           fontface = 1, fill = "#F0F92180", hjust = "center") + 
  annotate("label", x = -2.5, y = -3.2, label = "Observed Y", size = 3.5, 
           fontface = 1, fill = "#0D088780", hjust = "center") + 
  annotate("label", x = 2.6, y = -3.2, label = "Explained Y", size = 3.5, 
           fontface = 1, fill = "#0D088780", hjust = "center") + 
  annotate("label", x = 7.7, y = -3.2, label = "Unexplained Y", size = 3.5, 
           fontface = 1, fill = "#0D088780", hjust = "center") + 
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-6, 6)) +
  labs(title = "Data, model, and error")  +
  theme(plot.caption = element_text(face = "italic"),
        plot.title = element_text(size = 16, face = "bold"))

p_model_exp_simple_reg <- ggplot() +
  theme_void() +
  annotate("text", 0, 0, label = "~", size = 10, fontface = 2, hjust = "center") +
  annotate("text", -2.5, 0, label = "Data", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 2.6, 0, label = "Model", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 5.2, 0, label = "+", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 7.7, 0, label = "Error", size = 10, fontface = 2, hjust = "center") +
  annotate("label", x = 2.6, y = 3.2, label = "Linear regression", size = 3.5, 
           fontface = 1, fill = "#F0F92180", hjust = "center") + 
  annotate("label", x = -2.5, y = -3.2, label = "Observed Y", size = 3.5, 
           fontface = 1, fill = "#0D088780", hjust = "center") + 
  annotate("label", x = 2.6, y = -3.2, label = expression(Coefficients*":"~beta[0]*","~beta[1]), size = 3, 
           fontface = 1, fill = "#0D088780", hjust = "center") + 
  annotate("label", x = 7.7, y = -3.2, label = "Residuals", size = 3.5, 
           fontface = 1, fill = "#0D088780", hjust = "center") + 
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-6, 6)) +
  labs(title = "Data, model, and error")  +
  theme(plot.caption = element_text(face = "italic"),
        plot.title = element_text(size = 16, face = "bold"))

p_simple_model <- ggplot() +
  theme_void() +
  annotate("text", 0, 0, 
           label = expression(bold(Y)~"~"~bold(beta)[0]~"+"~bold(beta)[1]%.%bold(X[1])~"+"~bold(epsilon)), 
           size = 10, fontface = 2, hjust = "center") +
  annotate("text", x = 7, y = -7.5, label = "Residuals", size = 6, 
           fontface = 3, color = "gray50") +
  geom_curve(aes(x = 5.3, y = -7.75, xend = 4.5, yend = -2),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.6, color = "gray50") +
  annotate("text", x = -7.8, y = -9.5, label = "Coefficients", size = 6, 
           fontface = 3, color = "gray50") +
  geom_curve(aes(x = -5.5, y = -9.75, xend = -2.5, yend = -4),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "gray50") +
  geom_curve(aes(x = -5.5, y = -9.75, xend = 0, yend = -3.5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "gray50") +
  annotate("label", x = -7, y = 7, label = "Outcome", size = 5, 
           fontface = 3, fill = "#FCA63680") +
  annotate("label", x = 5.2, y = 7, label = "Influencer", size = 5, 
           fontface = 3, fill = "#FCA63680") +
  geom_curve(aes(x = -7, y =4.5, xend = -5, yend = 0.5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "#FCA63680") +
  geom_curve(aes(x = 3.5, y = 7, xend = 2.2, yend = 3.5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "#FCA636FF") +
  annotate("label", x = 0.35, y = 5, label = "Slope", size = 3, 
           fontface = 2, fill = "#F0F92180") +  
  annotate("label", x = -2.1, y = 5, label = "Intercept", size = 3, 
           fontface = 2, fill = "#F0F92180") +  
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-10, 10)) +
  labs(title = "Simple linear model",
       caption = "Y = **Outcome**, reponse, endpoint or dependent variable<br>X = **Influencer**, explanator, predictor or independent variable")  +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.caption = element_markdown(face = "italic")) 


p_mult_model <- ggplot() +
  theme_void() +
  annotate("text", 0, 0, 
           label = expression(bold(Y)~"~"~bold(beta)[0]~"+"~bold(beta)[1]%.%bold(X[1])~"+"~cdots~"+"~bold(beta)[p]%.%bold(X[p])~"+"~bold(epsilon)), 
           size = 10, fontface = 2, hjust = "center") +
  annotate("text", x = 6, y = -7.5, label = "Residuen", size = 6, 
           fontface = 3, color = "gray50") +
  geom_curve(aes(x = 7.75, y = -7.75, xend = 8.25, yend = -2),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.6, color = "gray50") +
  annotate("text", x = -8, y = -9.5, label = "Coefficients", size = 6, 
           fontface = 3, color = "gray50") +
  geom_curve(aes(x = -5.5, y = -9.75, xend = -3.75, yend = -4),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "gray50") +
  geom_curve(aes(x = -5.5, y = -9.75, xend = 3.2, yend = -1),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.1, color = "gray50") +
  geom_curve(aes(x = -5.5, y = -9.75, xend = -5.5, yend = -3),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.6, color = "gray50") +
  annotate("label", x = -8.5, y = 7, label = "Outcome", size = 5, 
           fontface = 3, fill = "#FCA63680", alpha = 0.5) +
  annotate("label", x = 7, y = 8.9, label = "Influencer", size = 5, 
           fontface = 3, fill = "#FCA63680", alpha = 0.5) +
  geom_curve(aes(x = -9.5, y =4.5, xend = -8.5, yend = 0.5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "#FCA636FF") +
  geom_curve(aes(x = 5.2, y = 8.6, xend = -1.5, yend = 3.5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "#FCA636FF") +
  geom_curve(aes(x = 7, y = 5.5, xend = 6.3, yend = 1),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "#FCA636FF") +
  annotate("label", x = -3.3, y = 5, label = "Slope", size = 3, 
           fontface = 2, fill = "#F0F92180", alpha = 0.5) +  
  annotate("label", x = 3.8, y = 5, label = "Slope", size = 3, 
           fontface = 2, fill = "#F0F92180", alpha = 0.5) + 
  annotate("label", x = -5.8, y = 5, label = "Intercept", size = 3, 
           fontface = 2, fill = "#F0F92180", alpha = 0.5) +  
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-10, 10)) +
  labs(title = "Multiple linear model",
       caption = "Y = **Outcome**, reponse, endpoint or dependent variable<br>X = **Influencer**, explanator, predictor or independent variable")  +
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.caption = element_markdown(face = "italic")) 


p_lhs_rhs_mult_r <- ggplot() +
  theme_void() +
  annotate("text", 0.2, 0, label = "~", size = 10, fontface = 2, hjust = "center") +
  annotate("text", -4.5, 0, label = "jumplength", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 5.5, 0, label = "host + weight", size = 10, fontface = 2, hjust = "center") +
  annotate("text", x = 5, y = -4.5, label = "Column names", size = 6, 
           fontface = 3, color = "gray50", hjust = "left") +
  annotate("label", x = -9.5, y = 3.5, label = "LHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  annotate("label", x = 9.9, y = 3.5, label = "RHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  geom_curve(aes(x = 4.8, y = -4.75, xend = 3, yend = -2.75),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.15, color = "gray50") +
  geom_curve(aes(x = 4.8, y = -4.75, xend = -4, yend = -2.75),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.1, color = "gray50") +
  geom_curve(aes(x = 10.25, y = -4.75, xend = 9.9, yend = -0.2),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.6, color = "gray50") +
  scale_x_continuous(limits = c(-10, 10.5)) +
  scale_y_continuous(limits = c(-6, 6)) +
  labs(title = "Model notation in R",
       caption = "LHS = left hand side\nRHS = right hand side")  +
  theme(plot.caption = element_text(face = "italic"),
        plot.title = element_text(size = 16, face = "bold"))


p_lhs_rhs_simple_r <- ggplot() +
  theme_void() +
  annotate("text", 0.2, 0, label = "~", size = 10, fontface = 2, hjust = "center") +
  annotate("text", -4.5, 0, label = "jumplength", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 2.7, 0, label = "host", size = 10, fontface = 2, hjust = "center") +
  annotate("text", x = 5, y = -4.5, label = "Column names", size = 6, 
           fontface = 3, color = "gray50", hjust = "left") +
  annotate("label", x = -9.5, y = 3, label = "LHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  annotate("label", x = 6, y = 3, label = "RHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  geom_curve(aes(x = 4.8, y = -4.75, xend = 3, yend = -2.75),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.15, color = "gray50") +
  geom_curve(aes(x = 4.8, y = -4.75, xend = -4, yend = -2.75),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.1, color = "gray50") +
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-6, 6)) +
  labs(title = "Model notation in R",
       caption = "LHS = left hand side\nRHS = right hand side")  +
  theme(plot.caption = element_text(face = "italic"),
        plot.title = element_text(size = 16, face = "bold"))


p_regression_wording <- ggplot() +
  annotate("text", -10, 2.5, label = "simple", size = 7, fontface = 2, hjust = "left") +
  annotate("text", -10, -2.5, label = "multiple", size = 7, fontface = 2, hjust = "left") +
  annotate("text", -5, 7.5, label = "gaussian", size = 7, fontface = 2, hjust = "left") +
  annotate("text", -5, 3.75, label = "poisson", size = 7, fontface = 2, hjust = "left") +
  annotate("text", -5, 0, label = "ordinal", size = 7, fontface = 2, hjust = "left") +
  annotate("text", -3.75, -3.5, label = expression(cdots), size = 10, hjust = "center") +
  annotate("text", -5, -7, label = "logistic", size = 7, fontface = 2, hjust = "left") +
  annotate("text", 0.25, 0, label = "mixed", size = 7, fontface = 2, hjust = "left") +
  annotate("text", 4.5, 0, label = "linear regression", size = 7, fontface = 2, hjust = "left") +
  annotate("text", c(-6.4, -0.95, 3.4), 0, label = "+", size = 8, fontface = 2, hjust = "left",
           color = "#B12A90FF") +
  scale_x_continuous(limits = c(-10.5, 11)) +
  scale_y_continuous(limits = c(-12, 12)) +
  ## Klammern X
  annotate("segment", x = c(-10.25, -7), y = -5, xend = c(-10.25, -7), yend = 5, 
           color = "#B12A90FF", linewidth = 1) +
  annotate("segment", x = c(-10.25, -7), y = -5, xend = c(-10, -7.25), yend = -5, 
           color = "#B12A90FF", linewidth = 1) +
  annotate("segment", x = c(-10.25, -7), y = 5, xend = c(-10, -7.25), yend = 5, 
           color = "#B12A90FF", linewidth = 1) +
  annotate("label", x = -6.75, y = 7, label = "X", fontface = 2, fill = "#B12A9080") +
  ## Klammern Y
  annotate("segment", x = c(-5.25, -1.5), y = -10, xend = c(-5.25, -1.5), yend = 10, 
           color = "#B12A90FF", linewidth = 1) +
  annotate("segment", x = c(-5.25, -1.5), y = -10, xend = c(-5, -1.75), yend = -10, 
           color = "#B12A90FF", linewidth = 1) +
  annotate("segment", x = c(-5.25, -1.5), y = 10, xend = c(-5, -1.75), yend = 10, 
           color = "#B12A90FF", linewidth = 1) +
  annotate("label", x = -1.3, y = 12, label = "Y", fontface = 2, fill = "#B12A9080") +
  ## optional
  geom_curve(aes(x = 0.2, y = -3.5, xend = 0.2, yend = 2.75), linewidth = 1,
             curvature = -0.3, color = "#B12A90FF") +
  geom_curve(aes(x = 2.5, y = -3.5, xend = 2.5, yend = 2.75), linewidth = 1,
             curvature = 0.3, color = "#B12A90FF") +
  ## text
  annotate("text", x = -10, y = 10, label = expression(x[1]), size = 5, 
           fontface = 3, color = "#FCA636FF", hjust = "left") +
  geom_curve(aes(x = -9.5, y = 10, xend = -8.5, yend = 5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "gray50") +
  annotate("text", x = -8.5, y = -10, label = expression(x[1]~"+"~cdots~"+"~x[p]), size = 5, 
           fontface = 3, color = "#FCA636FF", hjust = "left") +
  geom_curve(aes(x = -8.6, y = -9.8, xend = -9.5, yend = -5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "gray50") +
  annotate("text", x = 3, y = 7.5, label = "optional", size = 5, 
           fontface = 3, color = "#FCA636FF", hjust = "left") +
  geom_curve(aes(x = 2.9, y = 7.5, xend = 1.2, yend = 2.6),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.3, color = "gray50") +
  annotate("text", x = 0, y = -10, label = "Distribution family", size = 5, 
           fontface = 3, color = "#FCA636FF", hjust = "left") +
  geom_curve(aes(x = -0.1, y = -10.3, xend = -3.5, yend = -10),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.2, color = "gray50") +
  theme_void()

p_lhs_rhs_detail <- ggplot() +
  theme_void() +
  annotate("text", 0, 0, label = "~", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 0, -2, label = "X explains Y", size = 5,  fontface = 3, color = "gray50") +
  annotate("text", 0, -3, label = "Y depends on X", size = 5,  fontface = 3, color = "gray50") +
  annotate("text", -1.5, 0, label = "Y", size = 10, fontface = 2, hjust = "center") +
  annotate("text", 1.5, 0, label = "X", size = 10, fontface = 2, hjust = "center") +
  ## x seite
  annotate("label", 5, 4, label = expression(c[1]~"+"~c[2]~"+"~cdots), size = 6, 
           fontface = 2, hjust = "left") +
  annotate("label", x = 7.2, y = 5, label = "continuous", size = 3, 
           fontface = 2, fill = "#F0F921FF", hjust = "left") + 
  annotate("label", x = 7.3, y = 3.1, label = "Covariate", size = 3, 
           fontface = 2, fill = "#E16462FF", hjust = "left") + 
  annotate("label", 5, 0, label = expression(f[A]~"+"~f[B]~"+"~f[A]%*%f[B]), size = 6, 
           fontface = 2, hjust = "left") +
  annotate("label", x = 6.5, y = 1, label = "factorial / categorical", size = 3, 
           fontface = 2, fill = "#F0F921FF", hjust = "left") + 
  annotate("label", x = 8.5, y = -1, label = "Faktor", size = 3, 
           fontface = 2, fill = "#E16462FF", hjust = "left") + 
  annotate("label", 5, -4, label = expression(c[1]~"+"~f[A]~"+"~cdots), size = 6, 
           fontface = 2, hjust = "left") +
  annotate("label", x = 7.3, y = -3, label = "combinded", size = 3, 
           fontface = 2, fill = "#F0F921FF", hjust = "left") + 
  geom_curve(aes(x = 2, y = 1, xend = 4.75, yend = 4), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "gray50") +
  geom_curve(aes(x = 2, y = 0, xend = 4.75, yend = 0), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0, color = "gray50") +
  geom_curve(aes(x = 2, y = -1, xend = 4.75, yend = -4), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.3, color = "gray50") +
  ## y seite
  annotate("label", -10, c(-5, 0, 2.5, 5), 
           label = c("Logistic", "Ordinal", "Poisson", "Gaussian"), size = 6, 
           fontface = 2, hjust = "left") +
  annotate("label", x = -9, y = 5.9, label = "Decimal numbers", size = 3, 
           fontface = 2, fill = "#B12A90FF", hjust = "left") + 
  annotate("label", x = -8.3, y = 3.4, label = "Count data", size = 3, 
           fontface = 2, fill = "#B12A90FF", hjust = "left") + 
  annotate("label", x = -8, y = 0.9, label = "Ratings", size = 3, 
           fontface = 2, fill = "#B12A90FF", hjust = "left") + 
  annotate("label", x = -8, y = -4.1, label = "0/1 data", size = 3, 
           fontface = 2, fill = "#B12A90FF", hjust = "left") + 
  annotate("text", x = -8.3, y = -2, label = "...", size = 10, fontface = 2, hjust = "center") +  
  geom_curve(aes(x = -2, y = 1, xend = -6, yend = 5), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.3, color = "gray50") +
  geom_curve(aes(x = -2, y = 0.5, xend = -6.5, yend = 2.5), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.2, color = "gray50") +
  geom_curve(aes(x = -2, y = 0, xend = -6.75, yend = 0), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0, color = "gray50") +
  geom_curve(aes(x = -2, y = -1, xend = -6.5, yend = -5), linewidth = 0.75,
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "gray50") +
  annotate("label", x = -3, y = 5.5, label = "LHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  annotate("label", x = 3, y = 5.5, label = "RHS", size = 6, 
           fontface = 3, fill = "#FCA63680") +
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-6, 6.5)) +
  labs(caption = "LHS = left hand side\nRHS = right hand side",)  +
  theme(plot.caption = element_text(face = "italic"),
        plot.subtitle = element_text(size = 12, face = "italic"),
        plot.title = element_text(size = 16, face = "bold"))

p_problem_x <- ggplot() +
  theme_void() +
  scale_x_continuous(limits = c(-10, 10)) +
  scale_y_continuous(limits = c(-10, 10)) +
  geom_tile(aes(x = 1.15, y = 0, width = 7.4, height = 7.4), fill = "#0D088780",
            color = "#0D0887FF", linewidth = 0.5) +
  geom_curve(aes(x = 5.2, y = 0, xend = 7, yend = -5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "#0D0887FF") +
  annotate("text", x = 5, y = -7, label = "Independence", size = 5, 
           fontface = 3, color = "#0D0887FF", hjust = "left") +
  geom_tile(aes(x = c(-1.5, 1.2, 3.9), y = 0, width = 1.5, height = 6), 
            fill = "white", color = "white", linewidth = 0.5) +
  geom_tile(aes(x = c(-1.5, 1.2, 3.9), y = 0, width = 1.5, height = 6), 
            fill = "#FCA63680", color = "#FCA636FF", linewidth = 0.5) +
  annotate("text", x = -10, y = -8, label = "Unit, missing values,\noutlier, variance homogeneity", size = 4.5, 
           fontface = 3, color = "#FCA636FF", hjust = "left") +
  geom_curve(aes(x = -1.5, y = -4.5, xend = -3, yend = -7),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.3, color = "#FCA636FF") +
  geom_curve(aes(x = 1.2, y = -4.5, xend = -3, yend = -7),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.35, color = "#FCA636FF") +
  geom_curve(aes(x = 3.8, y = -4.5, xend = -3, yend = -7),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = -0.35, color = "#FCA636FF") +
  annotate("text", x = -1.3, y = 9, label = "Confounder / collider / mediator", size = 5, 
           fontface = 3, color = "#B12A90FF", hjust = "center") +
  geom_curve(aes(x = 1.2, y = 4.5, xend = -1.5, yend = 4.5),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.5, color = "#B12A90FF") +
  geom_curve(aes(x = 1.2, y = 4.5, xend = -4, yend = 3),
             arrow = arrow(length = unit(0.03, "npc"), type = "closed"),
             curvature = 0.5, color = "#B12A90FF")  +
  annotate("text", 0, 0, 
           label = expression(bold(Y)~"~"~~bold(X[1])~"+"~bold(X[2])~"+"~bold(X[3])), 
           size = 10, fontface = 2, hjust = "center") 