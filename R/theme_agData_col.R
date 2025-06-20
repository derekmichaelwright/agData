#' theme_agData_col.
#'
#' ggplot theme.
#' @param x ggplot
#' @param linesize border line size
#' @param bgFill background fill color
#' @param stripFill strip background color
#' @param lineColor color of axis lines
#' @param horizontal Logical, use if you want the y axis gridlines removed
#' @return ggplot with agData theme
#' @export

theme_agData_col <- function(x, bgFill = "white", lineColor = "grey90", linesize = 0.75, stripFill = "white",
                             horizontal = F, ...) {
  if(horizontal == T) {
    xx <- theme(panel.background = element_rect(color = "black", fill = bgFill, size = linesize),
                panel.grid = element_line(color = lineColor),
                panel.border = element_rect(color = "black", fill = NA, size = linesize),
                strip.background = element_rect(color = "black", fill = stripFill, size = linesize),
                legend.key = element_rect(color = NA),
                panel.grid.major.y = element_blank(),
                panel.grid.minor.y = element_blank(),
                ...)
  }
  if(horizontal == F) {
    xx <- theme(panel.background = element_rect(color = "black", fill = bgFill, size = linesize),
                panel.grid = element_line(color = lineColor),
                panel.border = element_rect(color = "black", fill = NA, size = linesize),
                strip.background = element_rect(color = "black", fill = stripFill, size = linesize),
                legend.key = element_rect(color = NA),
                panel.grid.major.x = element_blank(),
                panel.grid.minor.x = element_blank(),
                ...)
  }
  xx
}
