#' theme_agData_pie.
#'
#' ggplot theme.
#' @param x ggplot
#' @return ggplot with agData theme for pie graphs
#' @export
#' @examples

theme_agData_pie <- function(x, ...) {
  theme(panel.background = element_blank(),
        panel.border = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        axis.text = element_blank(),
        ...)
}
