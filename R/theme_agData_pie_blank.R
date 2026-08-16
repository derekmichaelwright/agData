#' theme_agData_pie_blank.
#'
#' ggplot theme.
#' @param x ggplot
#' @param caption.adj hjust for the caption
#' @return ggplot with agData theme for pie graphs
#' @export

theme_agData_pie_blank <- function(x, caption.adj = 1, ...) {
  theme_minimal() +
  theme(axis.title   = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.y  = element_blank(),
        panel.border = element_blank(),
        panel.grid   = element_blank(),
        plot.title   = element_text(size = 14, face = "bold"),
        legend.key = element_rect(color = NA),
        plot.caption = element_text(hjust = caption.adj),
        ...)
}
