#' theme_agData.
#'
#' ggplot theme.
#' @param x ggplot
#' @return ggplot
#' @export
#' @examples
#' xx <- agData_FAO_Crops %>% agData_spread()

theme_agData <- function(x) {
  theme_bw() + theme(strip.background = element_rect(fill = "White"))
}
