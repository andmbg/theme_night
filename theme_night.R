theme_nightout <- function(base_size = 11,
                          base_family = "") {
  theme_grey(base_size = base_size,
             base_family = base_family) %+replace%
    theme(
      # get rid of panel grids
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      # Change plot and panel background
      plot.background=element_rect(fill = "#201b18"),
      plot.title = element_text(color = "white"),
      panel.background = element_rect(fill = 'black'),
      # Change legend 
      legend.position = "right",
      legend.direction = "vertical",
      legend.background = element_rect(fill = rgb(.05,.05,.05, 1),
                                       color = NA),
      legend.key = element_rect(color = "grey10", fill = "black"),
      legend.key.size = unit(1.2, "lines"),
      legend.key.height = NULL,
      legend.key.width = NULL,
      legend.title = element_text(color = "white",
                                  face = "bold",
                                  size = .8*base_size),
      legend.text = element_text(color = "white",
                                 size = .8*base_size),
      axis.text = element_text(color = "white"),
      axis.title = element_text(color = "white",
                                face = "bold"),
      axis.ticks = element_line(color = "white"),
      strip.background = element_rect(fill = NA,
                                      color = NA),
      strip.text = element_text(color = "white")
      
    )
}

theme_nightin <- function(base_size = 11,
                          base_family = "",
                          legend.position = c(.9, .8)) {
  theme_grey(base_size = base_size,
             base_family = base_family) %+replace%
    theme(
      # get rid of panel grids
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      # Change plot and panel background
      plot.background=element_rect(fill = "#201b18"),
      plot.title = element_text(color = "white"),
      panel.background = element_rect(fill = 'black'),
      # Change legend 
      legend.position = legend.position,
      legend.direction = "vertical",
      legend.background = element_rect(fill = rgb(1,1,1, .1),
                                       color = "gray10"),
      legend.key = element_rect(color = "grey10", fill = "black"),
      legend.key.size = unit(1.2, "lines"),
      legend.key.height = NULL,
      legend.key.width = NULL,
      legend.title = element_text(color = "white",
                                  face = "bold",
                                  size = .8*base_size),
      legend.text = element_text(color = "white",
                                 size = .8*base_size),
      axis.text = element_text(color = "white"),
      axis.title = element_text(color = "white",
                                face = "bold"),
      axis.ticks = element_line(color = "white"),
      strip.background = element_rect(fill = NA,
                                      color = NA),
      strip.text = element_text(color = "white")
      
    )
}
