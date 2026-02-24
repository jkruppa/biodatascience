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

