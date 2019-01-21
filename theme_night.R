theme_nightout <- function(base_size = 11,
                          base_family = "", ...) {
  
  # if using only one colour, set to white, given black bgr:
  update_geom_defaults("curve", list(colour = "white"))
  update_geom_defaults("path", list(colour = "white"))
  update_geom_defaults("polygon", list(colour = "white", fill = "white"))
  update_geom_defaults("rect", list(colour = "white", fill = "white"))
  update_geom_defaults("ribbon", list(colour = "white", fill = "white"))
  update_geom_defaults("abline", list(colour = "white"))
  update_geom_defaults("hline", list(colour = "white"))
  update_geom_defaults("vline", list(colour = "white"))
  update_geom_defaults("segment", list(colour = "white"))
  update_geom_defaults("spoke", list(colour = "white"))
  update_geom_defaults("area", list(colour = "white", fill = "white"))
  update_geom_defaults("density", list(colour = "white", fill = "white"))
  update_geom_defaults("dotplot", list(colour = "white", fill = "white"))
  update_geom_defaults("bar", list(colour = "white"))
  update_geom_defaults("label", list(colour = "white"))
  update_geom_defaults("point", list(colour = "white", fill = "white"))
  update_geom_defaults("quantile", list(colour = "white"))
  update_geom_defaults("rug", list(colour = "white"))
  update_geom_defaults("smooth", list(colour = "white", fill = "white"))
  update_geom_defaults("text", list(colour = "white"))
  update_geom_defaults("col", list(colour = "white", fill = "white"))
  update_geom_defaults("boxplot", list(colour = "white", fill = "white"))
  update_geom_defaults("violin", list(colour = "white", fill = "white"))
  update_geom_defaults("hex", list(colour = "white", fill = "white"))
  update_geom_defaults("line", list(colour = "white"))
  update_geom_defaults("step", list(colour = "white"))
  update_geom_defaults("crossbar", list(colour = "white", fill = "white"))
  update_geom_defaults("errorbar", list(colour = "white"))
  update_geom_defaults("errorbarh", list(colour = "white"))
  update_geom_defaults("linerange", list(colour = "white"))
  update_geom_defaults("pointrange", list(colour = "white", fill = "white"))
  update_geom_defaults("map", list(colour = "white", fill = "white"))
  
  p <- theme_grey(base_size = base_size,
                  base_family = base_family) %+replace%
    theme(
      # get rid of panel grids
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      # Change plot and panel background
      plot.background=element_rect(fill = "#201b18",
                                   color = NA),
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
    ) +
    theme(...)
  
  # detach & reattach ggplot2:
  detach("package:ggplot2", unload = TRUE)
  library(ggplot2)
  
  return(p)
}

theme_nightin <- function(base_size = 11,
                          base_family = "",
                          legend.position = c(.9, .8), ...) {
  
  # if using only one colour, set to white, given black bgr:
  update_geom_defaults("curve", list(colour = "white"))
  update_geom_defaults("path", list(colour = "white"))
  update_geom_defaults("polygon", list(colour = "white", fill = "white"))
  update_geom_defaults("rect", list(colour = "white", fill = "white"))
  update_geom_defaults("ribbon", list(colour = "white", fill = "white"))
  update_geom_defaults("abline", list(colour = "white"))
  update_geom_defaults("hline", list(colour = "white"))
  update_geom_defaults("vline", list(colour = "white"))
  update_geom_defaults("segment", list(colour = "white"))
  update_geom_defaults("spoke", list(colour = "white"))
  update_geom_defaults("area", list(colour = "white", fill = "white"))
  update_geom_defaults("density", list(colour = "white", fill = "white"))
  update_geom_defaults("dotplot", list(colour = "white", fill = "white"))
  update_geom_defaults("bar", list(colour = "white"))
  update_geom_defaults("label", list(colour = "white"))
  update_geom_defaults("point", list(colour = "white", fill = "white"))
  update_geom_defaults("quantile", list(colour = "white"))
  update_geom_defaults("rug", list(colour = "white"))
  update_geom_defaults("smooth", list(colour = "white", fill = "white"))
  update_geom_defaults("text", list(colour = "white"))
  update_geom_defaults("col", list(colour = "white", fill = "white"))
  update_geom_defaults("boxplot", list(colour = "white", fill = "white"))
  update_geom_defaults("violin", list(colour = "white", fill = "white"))
  update_geom_defaults("hex", list(colour = "white", fill = "white"))
  update_geom_defaults("line", list(colour = "white"))
  update_geom_defaults("step", list(colour = "white"))
  update_geom_defaults("crossbar", list(colour = "white", fill = "white"))
  update_geom_defaults("errorbar", list(colour = "white"))
  update_geom_defaults("errorbarh", list(colour = "white"))
  update_geom_defaults("linerange", list(colour = "white"))
  update_geom_defaults("pointrange", list(colour = "white", fill = "white"))
  update_geom_defaults("map", list(colour = "white", fill = "white"))
 
  p <- theme_grey(base_size = base_size,
                  base_family = base_family) %+replace%
    theme(
      # get rid of panel grids
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      # Change plot and panel background
      plot.background=element_rect(fill = "#201b18",
                                   color = NA),
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
    ) +
    theme(...)
  
  # detach & reattach ggplot2:
  detach("package:ggplot2", unload = TRUE)
  library(ggplot2)
  
  return(p)
}
