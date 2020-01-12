#' theme_agData.
#'
#' ggplot theme.
#' @param x ggplot
#' @param linesize border line size
#' @param bgFill background fill color
#' @param stripFill strip background color
#' @param lineColor color of axis lines
#' @return ggplot
#' @export

theme_agData <- function(x, linesize = 0.75, bgFill = "grey95", stripFill = "white", lineColor = "white", rotx = F) {
  if(rotx == T) {
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5),
          strip.background = element_rect(colour = "black", fill = stripFill, size = linesize),
          panel.grid = element_line(color = lineColor),
          panel.background = element_rect(colour = "black", fill = bgFill, size = linesize),
          panel.border = element_rect(colour = "black", fill=NA, size=linesize))
  }else{
    theme(strip.background = element_rect(colour = "black", fill = stripFill, size = linesize),
          panel.grid = element_line(color = lineColor),
          panel.background = element_rect(colour = "black", fill = bgFill, size = linesize),
          panel.border = element_rect(colour = "black", fill=NA, size=linesize))
  }
  
}
