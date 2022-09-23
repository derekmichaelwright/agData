#' theme_agData.
#'
#' ggplot theme.
#' @param x ggplot
#' @param linesize border line size
#' @param bgFill background fill color
#' @param stripFill strip background color
#' @param lineColor color of axis lines
#' @return ggplot with agData theme
#' @export

theme_agData2 <- function(x, bgFill = "white", lineColor = "grey80", linesize = 0.75, stripFill = "white", ...) {
  theme(panel.background = element_rect(colour = "black", fill = bgFill, size = linesize),
        panel.grid = element_line(color = lineColor),
        panel.border = element_rect(colour = "black", fill=NA, size=linesize),
        strip.background = element_rect(colour = "black", fill = stripFill, size = linesize),
        ...)
}
