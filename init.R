## load packages
pacman::p_load(tidyverse, ggforce, viridis, knitr, patchwork,
               gghalves, ggdist, see, ggtext, conflicted)
conflicted::conflicts_prefer(dplyr::filter)
## global seed
set.seed(202511)
## ggplot theme
theme_book <- function() {
  theme_minimal() +
    theme(panel.grid.minor = element_blank(),
          plot.title = element_text(size = 16, face = "bold"),
          plot.subtitle = element_text(size = 12, face = "italic"),
          plot.caption = element_text(face = "italic"),
          axis.title = element_text(size = 12, face = "bold"),
          axis.text = element_text(size = 11),
          legend.title = element_text(face = "bold"),
          strip.text = element_text(size = 11, face = "bold"),
          legend.position = "top")
}
## colors
col_pal <- \(n, alpha) plasma(n = n, alpha = alpha)
c6_pal <- col_pal(6, 1)
c6_a5_pal <- col_pal(6, 0.5)

##
foo_pal_1 <- c("#0D0887FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FCA636FF" ,"#F0F921FF")
foo_pal_2 <- c("#0D088780", "#6A00A880", "#B12A9080", "#E1646280", "#FCA63680", "#F0F92180")