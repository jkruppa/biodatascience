## load packages
pacman::p_load(tidyverse, ggforce, viridis, knitr, patchwork,
               gghalves, ggdist, see, conflicted)
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
c8_pal <- col_pal(8, 1)
