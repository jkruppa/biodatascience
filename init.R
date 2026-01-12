## load packages
pacman::p_load(tidyverse, ggforce, viridis, knitr, patchwork, lme4,
               Hmisc, ggdist, see, ggtext, ggimage, ggrepel, latex2exp,
               conflicted)
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
c6_a5_pal <- col_pal(6, 0.75)
c2_end09 <- plasma(n = 2, end = 0.9)
##
foo_pal_1 <- c("#0D0887FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FCA636FF" ,"#F0F921FF")
foo_pal_2 <- c("#0D088780", "#6A00A880", "#B12A9080", "#E1646280", "#FCA63680", "#F0F92180")
foo_pal_5 <- c("#0D0887FF", "#47039FFF", "#7301A8FF", "#9C179EFF", "#BD3786FF",
               "#D8576BFF", "#ED7953FF", "#FA9E3BFF", "#FDC926FF", "#F0F921FF")
foo_pal_5 <- c("#0D088780", "#47039F80", "#7301A880", "#9C179E80", "#BD378680",
               "#D8576B80", "#ED795380", "#FA9E3B80", "#FDC92680", "#F0F92180")
foo_pal_3 <- c("#0D088780", "#2F059680", "#4903A080",
               "#6100A780", "#7801A880", "#8E0CA480", 
               "#A21D9A80", "#B42E8D80", "#C43E7F80",
               "#D24F7180", "#DE616480", "#E9725780",
               "#F3854B80", "#F99A3E80", "#FDAF3180",
               "#FDC62780", "#F8DF2580", "#F0F92180")
foo_pal_4 <- c("#0D088780", "#3E049C80", 
               "#6300A780", "#8707A680", 
               "#A6209880", "#C03A8380", 
               "#D5546E80", "#E76F5A80",
               "#F58C4680", "#FDAD3280", 
               "#FCD22580", "#F0F92180")


