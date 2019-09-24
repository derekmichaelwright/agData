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
#' @examples
#' xx <- agData_FAO_Crops %>% agData_spread()

theme_agData <- function(x, linesize = 0.75, bgFill = "grey95", stripFill = "white", lineColor = "white") {
  theme(panel.grid = element_line(color = lineColor),
        panel.background = element_rect(colour = "black", fill = bgFill, size = linesize),
        strip.background = element_rect(colour = "black", fill = stripFill, size = linesize) )
}
