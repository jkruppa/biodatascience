library(tidyverse)

geom_coord_cross <- function(x, y, yticks = "numeric", xticks = "numeric", zero = FALSE) {
  list(
    annotate("segment", x = x-0.2, xend = x+4, y = y, yend = y,
             arrow = arrow(length = unit(0.0075, "npc"), type = "closed")),
    annotate("segment", x = x, xend = x, y = y-0.2, yend = y+4,
             arrow = arrow(length = unit(0.0075, "npc"), type = "closed")),
    if(yticks == "numeric") {
      if(zero){
        list(
          annotate("segment", x = x-0.1, xend = x, y = y + seq(0, 3.5, 0.5), yend = y+ seq(0, 3.5, 0.5)),
          annotate("text", x = x -0.25, y = y + seq(0, 3.5, 0.5), label = seq(0, 70, 10),
                   hjust = "right"),
          annotate("text", x = x - 1, y = y +2, label = c("Count of hairleg"), fontface = 2, size = 5,
                   angle = 90)
        )
      } else {
        list(
          annotate("segment", x = x-0.1, xend = x, y = y + seq(0, 3.5, 0.5), yend = y+ seq(0, 3.5, 0.5)),
          annotate("text", x = x -0.25, y = y + seq(0.5, 3.5, 0.5), 
                   label = round(seq(15, 40, length.out = 7)), hjust = "right") ,
          annotate("text", x = x - 1, y = y +2, label = c("Jump length"), fontface = 2, size = 5, 
                   angle = 90)
        )        
      }
    },
    if(xticks == "numeric") {
      list(
        annotate("segment", x = x+ seq(0, 3.5, 0.5), xend = x+ seq(0, 3.5, 0.5), y = y -0.1 , yend = y),
        annotate("text", x = x +seq(0.5, 3.5, 0.5), y = y -0.35, label = seq(0.5, 3.5, 0.5)),
        annotate("text", x = x + 2, y = y -1, label = c("Weight"), fontface = 2, size = 5)
      )
    },
    if(yticks == "3lvl") {
      list(
        annotate("segment", x = x-0.1, xend = x, y = y + c(1,2,3), yend = y+ c(1,2,3)),
        annotate("text", x = x -0.25, y = y + c(1,2,3), label = c("1", "2", "3"), hjust = "right") ,
        annotate("text", x = x - 1, y = y +2, label = c("Grade"), fontface = 2, size = 5, angle = 90)
      )
    },
    if(xticks == "3lvl") {
      list(
        annotate("segment", x = x + c(1,2,3), xend = x+ c(1,2,3), y = y -0.1 , yend = y),
        annotate("text", x = x + c(1,2,3), y = y -0.35, label = c("dog", "cat", "fox")),
        annotate("text", x = x + 2, y = y -1, label = c("Host"), fontface = 2, size = 5)
      )
    },
    if(yticks == "2lvl") {
      list(
        annotate("segment", x = x-0.1, xend = x, y = y + c(0.5, 3), yend = y+  c(0.5, 3)),
        annotate("text", x = x -0.25, y = y + c(0.5, 3), label = c("0", "1"), hjust = "right") ,
        annotate("text", x = x - 1, y = y +2, label = c("Infected"), fontface = 2, size = 5, angle = 90)
      )
    },
    if(xticks == "2lvl") {
      list(
        annotate("segment", x = x+ c(1.25, 2.75), xend = x+ c(1.25, 2.75), y = y -0.1 , yend = y),
        annotate("text", x = x + c(1.25, 2.75), y = y -0.35, label = c("dog", "cat")),
        annotate("text", x = x + 2, y = y -1, label = c("Host"), fontface = 2, size = 5)
        
      )
    }
  )
}

ggplot() +
  ## theme_void() +
  theme_minimal() +
  coord_cartesian(xlim = c(-1, 20), ylim = c(0, 27)) +
  scale_x_continuous(breaks = seq(-10, 10, 1)) +
  scale_y_continuous(breaks = seq(0, 10, 1)) +
  annotate("segment", x = c(2, 8, 14, 20), xend = c(2, 8, 14, 20),
           y = c(0, 0, 0, 0), yend = c(27, 26, 26, 27)) +
  annotate("segment", x = c(-1, 0, 0, 0, -1), xend = c(20, 20, 20, 20, 20),
           y = c(0, 6, 12, 18, 24), yend = c(0, 6, 12, 18, 24)) +
  geom_segment(y = c(0, 6, 12, 18, 24)) +
  scale_x_continuous(breaks = 0:22, expand = expansion(mult = 0)) +
  scale_y_continuous(breaks = 0:28, expand = expansion(mult = 0)) +
  ## outer text
  annotate("text", x = 11, y = 26.5, label = "Influencer (X)", size = 8, fontface = 2) +
  annotate("text", x = -0.5, y = 12, label = "Outcome (Y)", size = 8, fontface = 2, angle = 90) +
  ## coords
  geom_coord_cross(x = 3.5, y = 19.5, yticks = "numeric", xticks = "numeric") +
  geom_coord_cross(x = 9.5, y = 19.5, yticks = "numeric", xticks = "3lvl") +
  geom_coord_cross(x = 15.5, y = 19.5, yticks = "numeric", xticks = "2lvl") +
  geom_coord_cross(x = 3.5, y = 13.5, yticks = "numeric", xticks = "numeric", zero = TRUE) +
  geom_coord_cross(x = 9.5, y = 13.5, yticks = "numeric", xticks = "3lvl", zero = TRUE) +
  geom_coord_cross(x = 15.5, y = 13.5, yticks = "numeric", xticks = "2lvl", zero = TRUE) +
  geom_coord_cross(x = 3.5, y = 7.5, yticks = "3lvl", xticks = "numeric") +
  geom_coord_cross(x = 9.5, y = 7.5, yticks = "3lvl", xticks = "3lvl") +
  geom_coord_cross(x = 15.5, y = 7.5, yticks = "3lvl", xticks = "2lvl") +
  geom_coord_cross(x = 3.5, y = 1.5, yticks = "2lvl", xticks = "numeric") +
  geom_coord_cross(x = 9.5, y = 1.5, yticks = "2lvl", xticks = "3lvl") +
  geom_coord_cross(x = 15.5, y = 1.5, yticks = "2lvl", xticks = "2lvl") +
  ## normal
  annotate("label", x = 6.8, y = 16, label = "           ") +
  annotate("label", x = 3.8, y = 13.5, label = "      ", alpha = 0, fill = "white") +
  annotate("point", x = c(0.1, 0.25, 1, 1.3, 1.7, 0.5, 1.75, 2, 2.4, 
                          2.2, 2.3, 2.6, 2.9, 3.1, 3.5, 3.7, 3.5, 3.9, 3.3) + 3.5, 
           y = c(13.5, 13.5,  14, 14, 14, 13.5, 14.5, 14.5, 14.5, 
                 15, 15, 15, 16, 16, 16, 16, 17, 17, 17), size = 1.5) +
  geom_curve(aes(x = 3.5, y = 13.5, xend = 7.25, yend = 17),
             curvature = 0.3, color = "black", linewidth = 0.65) +
  annotate("text", hjust = "right", x = 5.5, y = 16.5, label = "Discrete counts") +
  geom_curve(aes(x = 5.55, y = 16.25, xend = 6.2, yend = 16),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.2, color = "black", linewidth = 0.5) +
  annotate("text", hjust = "left", x = 4.25, y = 15.5, label = "Zero counts") +
  geom_curve(aes(x = 4.2, y = 15.25, xend = 3.75, yend = 14),
             arrow = arrow(length = unit(0.01, "npc"), type = "closed"),
             curvature = 0.2, color = "black", linewidth = 0.5)
























## gandalf

  
  
  
