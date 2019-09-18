#' theme_agData.
#'
#' ggplot theme.
#' @param x ggplot
#' @return ggplot
#' @export
#' @examples
#' xx <- agData_FAO_Crops %>% agData_spread()

theme_agData <- function(x, linesize = 0.75) {
  theme(panel.background = element_rect(colour = "black", size = linesize),
        strip.background = element_rect(colour = "black", size = linesize))
}
