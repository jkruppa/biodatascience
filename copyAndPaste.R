
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

### covariate
annotate("point", x = c(0.5, 1, 1.25, 1.7, 2.5, 3.2) + 3.5, 
         y = c(20.5, 21, 21.5, 22, 22.5, 22), size = 1.5) +
  annotate("segment", x = 3.75, xend = 7.25, y = 20.5, yend = 23, linewidth = 0.65) +
  geom_curve(aes(x = 4, y = 20, xend = 7.25, yend = 22.5),
             curvature = -0.4, color = "black", linewidth = 0.65) +
  ### 3lvl
  geom_rect(aes(xmin = 10.1, xmax = 10.35, ymin = 19.5, ymax = 22.25), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 10.225, xend = 10.225, y = 22.25, yend = 22.75)) +
  geom_segment(aes(x = 10.15, xend = 10.3, y = 22.75, yend = 22.75)) +  
  annotate("point", x = c(10.5), 
           y = c(21.5, 22, 22.5, 22.75, 23), size = 1.5) +  
  geom_rect(aes(xmin = 10.65, xmax = 10.9, ymin = 21.5, ymax = 23), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 10.65, xend = 10.9, y = 22.5, yend = 22.5)) +
  geom_segment(aes(x = 10.775, xend = 10.775, y = c(21.1, 23), yend = c(21.5, 23.25))) +
  geom_rect(aes(xmin = 11.1, xmax = 11.35, ymin = 19.5, ymax = 20.5), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 11.225, xend = 11.225, y = 20.5, yend = 21)) +
  geom_segment(aes(x = 11.15, xend = 11.3, y = 21, yend = 21)) +  
  annotate("point", x = c(11.5), 
           y = c(19.75, 20, 20.5, 21, 21.25), size = 1.25) +  
  geom_rect(aes(xmin = 11.65, xmax = 11.9, ymin = 20, ymax = 21), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 11.65, xend = 11.9, y = 20.5, yend = 20.5)) +
  geom_segment(aes(x = 11.775, xend = 11.775, y = c(19.7, 21), yend = c(20, 21.3))) +
  geom_rect(aes(xmin = 12.1, xmax = 12.35, ymin = 19.5, ymax = 21.75), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 12.225, xend = 12.225, y = 21.75, yend = 22.25)) +
  geom_segment(aes(x = 12.15, xend = 12.3, y = 22.25, yend = 22.25)) +    
  annotate("point", x = c(12.5), 
           y = c(20.75, 21.25, 21.5, 22.2, 22.5), size = 1.25) +
  geom_rect(aes(xmin = 12.65, xmax = 12.9, ymin = 21, ymax = 22.25), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 12.65, xend = 12.9, y = 21.5, yend = 21.5)) +
  geom_segment(aes(x = 12.775, xend = 12.775, y = c(20.5, 22.25), yend = c(21, 22.75))) +  
  ### 2lvl
  geom_rect(aes(xmin = 10.1+6.25, xmax = 10.35+6.25, ymin = 19.5, ymax = 22.25), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 10.225+6.25, xend = 10.225+6.25, y = 22.25, yend = 22.75)) +
  geom_segment(aes(x = 10.15+6.25, xend = 10.3+6.25, y = 22.75, yend = 22.75)) +  
  annotate("point", x = c(10.5)+6.25, 
           y = c(21.5, 22, 22.5, 22.75, 23), size = 1.25) +  
  geom_rect(aes(xmin = 10.65+6.25, xmax = 10.9+6.25, ymin = 21.5, ymax = 23), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 10.65+6.25, xend = 10.9+6.25, y = 22.5, yend = 22.5)) +
  geom_segment(aes(x = 10.775+6.25, xend = 10.775+6.25, y = c(21.1, 23), yend = c(21.5, 23.25))) +
  geom_rect(aes(xmin = 11.1+6.75, xmax = 11.35+6.75, ymin = 19.5, ymax = 20.5), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 11.225+6.75, xend = 11.225+6.75, y = 20.5, yend = 21)) +
  geom_segment(aes(x = 11.15+6.75, xend = 11.3+6.75, y = 21, yend = 21)) +  
  annotate("point", x = c(11.5+6.75), 
           y = c(19.75, 20, 20.5, 21, 21.25), size = 1.25) +  
  geom_rect(aes(xmin = 11.65+6.75, xmax = 11.9+6.75, ymin = 20, ymax = 21), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 11.65+6.75, xend = 11.9+6.75, y = 20.5, yend = 20.5)) +
  geom_segment(aes(x = 11.775+6.75, xend = 11.775+6.75, y = c(19.7, 21), yend = c(20, 21.3))) +


  ### covariate
  annotate("point", x = c(0.5, 1.5, 2.4, 2.2, 3.4, 3.5) + 3.5, 
           y = c(14, 14.25, 14.5, 15, 15.75, 17), size = 1.5) +
  geom_curve(aes(x = 4, y = 14, xend = 7.25, yend = 17),
             curvature = 0.3, color = "black", linewidth = 0.65) +
  ### 3lvl
  geom_rect(aes(xmin = 10.1, xmax = 10.35, ymin = 13.5, ymax = 15.25), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 10.225, xend = 10.225, y = 15.25, yend = 16.75)) +
  geom_segment(aes(x = 10.15, xend = 10.3, y = 16.75, yend = 16.75)) +  
  annotate("point", x = c(10.5), 
           y = c(14.75, 15, 14.4, 16, 16.75), size = 1.5) +  
  geom_rect(aes(xmin = 10.65, xmax = 10.9, ymin = 14.25, ymax = 15.25), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 10.65, xend = 10.9, y = 14.75, yend = 14.75)) +
  geom_segment(aes(x = 10.775, xend = 10.775, y = c(14, 15.25), yend = c(14.25, 16.5))) +
  geom_rect(aes(xmin = 11.1, xmax = 11.35, ymin = 13.5, ymax = 14), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 11.225, xend = 11.225, y = 14, yend = 14.75)) +
  geom_segment(aes(x = 11.15, xend = 11.3, y = 14.75, yend = 14.75)) +  
  annotate("point", x = c(11.5), 
           y = c(13.6, 13.8, 14.0, 14.4, 15), size = 1.25) +  
  geom_rect(aes(xmin = 11.65, xmax = 11.9, ymin = 13.6, ymax = 14.25), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 11.65, xend = 11.9, y = 13.8, yend = 13.8)) +
  geom_segment(aes(x = 11.775, xend = 11.775, y = c(13.5, 14.25), yend = c(13.6, 15))) +
  geom_rect(aes(xmin = 12.1, xmax = 12.35, ymin = 13.5, ymax = 15), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 12.225, xend = 12.225, y = 15, yend = 17)) +
  geom_segment(aes(x = 12.15, xend = 12.3, y = 17, yend = 17)) +    
  annotate("point", x = c(12.5), 
           y = c(14, 14.5, 14.8, 15.2, 17), size = 1.25) +
  geom_rect(aes(xmin = 12.65, xmax = 12.9, ymin = 14.25, ymax = 15.75), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 12.65, xend = 12.9, y = 14.5, yend = 14.5)) +
  geom_segment(aes(x = 12.775, xend = 12.775, y = c(14, 15.75), yend = c(14.25, 16.8))) +
  ### 2lvl
  geom_rect(aes(xmin = 10.1+6.25, xmax = 10.35+6.25, ymin = 13.5, ymax = 15.25), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 10.225+6.25, xend = 10.225+6.25, y = 15.25, yend = 16.75)) +
  geom_segment(aes(x = 10.15+6.25, xend = 10.3+6.25, y = 16.75, yend = 16.75)) +  
  annotate("point", x = c(10.5)+6.25, 
           y = c(14.75, 15, 14.4, 16, 16.75), size = 1.5) +  
  geom_rect(aes(xmin = 10.65+6.25, xmax = 10.9+6.25, ymin = 14.25, ymax = 15.25), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 10.65+6.25, xend = 10.9+6.25, y = 14.75, yend = 14.75)) +
  geom_segment(aes(x = 10.775+6.25, xend = 10.775+6.25, y = c(14, 15.25), yend = c(14.25, 16.5))) +
  geom_rect(aes(xmin = 11.1+6.75, xmax = 11.35+6.75, ymin = 13.5, ymax = 14), fill = "#B12A9080",
            color = "black") +
  geom_segment(aes(x = 11.225+6.75, xend = 11.225+6.75, y = 14, yend = 14.75)) +
  geom_segment(aes(x = 11.15+6.75, xend = 11.3+6.75, y = 14.75, yend = 14.75)) +  
  annotate("point", x = c(11.5)+6.75, 
           y = c(13.6, 13.8, 14.0, 14.4, 15), size = 1.25) +  
  geom_rect(aes(xmin = 11.65+6.75, xmax = 11.9+6.75, ymin = 13.6, ymax = 14.25), fill = "#FCA63680",
            color = "black") +
  geom_segment(aes(x = 11.65+6.75, xend = 11.9+6.75, y = 13.8, yend = 13.8)) +
  geom_segment(aes(x = 11.775+6.75, xend = 11.775+6.75, y = c(13.5, 14.25), yend = c(13.6, 15))) 






## gandalf

  
  
  
