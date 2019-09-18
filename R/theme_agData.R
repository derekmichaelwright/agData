#' theme_agData.
#'
#' ggplot theme.
#' @param x ggplot
#' @return ggplot
#' @export
#' @examples
#' xx <- agData_FAO_Crops %>% agData_spread()

theme_agData <- function(x) {
  theme(panel.background = element_rect(colour = "black", size = 2),
        strip.background = element_rect(colour = "black", size = 2))
}
