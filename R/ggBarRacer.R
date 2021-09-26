#' Create a bar chart race animation.
#'
#' Adapted from https://github.com/jl5000/barRacer/blob/master/R/bar_chart_race.R
#' @param df A dataframe containing the data.
#' @param cat_col The column containing the categories (for bars).
#' @param val_col The column containing the values (for bar heights).
#' @param time_col The column containing the time.
#' @param max_bars The maximum number of bars to show (defaults to 10).
#' @param duration The duration of the animation in seconds (defaults to 20).
#' @param fps The smoothness of the animation in frames per second (defaults to 10).
#' @param width The width of the animation in pixels (defaults to 1200).
#' @param height The height of the animation in pixels (defaults to 900).
#' @param title The title of the animation (defaults to blank).
#' @param renderer The renderer to use (defaults to gifski_renderer()).
#' @return A bar chart race animation.
#' @export
ggBarRacer <- function(df, cat_col, val_col, time_col,
                           max_bars = 10, duration = 20, fps = 10,
                           width = 1200, height = 900,
                           title = "",
                           renderer = gganimate::gifski_renderer()) {
  
  # gap between labels and end of bar
  nudge <- max(df %>% dplyr::pull({{val_col}})) / 50
  # space for category labels on the left
  shift <- max(df %>% dplyr::pull({{val_col}})) / 5
  # space for value labels on the right
  extend <- max(df %>% dplyr::pull({{val_col}})) * 1.07
  
  p <- df %>%
    dplyr::group_by({{time_col}}) %>%
    dplyr::mutate(rank = dplyr::min_rank(-{{val_col}})*1) %>%
    dplyr::filter(rank <= max_bars) %>%
    dplyr::ungroup() %>%
    ggplot(aes(x = rank, y = {{val_col}}, fill = {{cat_col}})) +
    geom_tile(aes(y = {{val_col}}/2, height = {{val_col}}),
                       show.legend = FALSE, width = 0.9) +
    geom_text(aes(label = {{cat_col}}), hjust = "right",
                  fontface = "bold", nudge_y = -nudge, size = 6) +
    geom_text(aes(label = scales::comma(round({{val_col}}))), hjust = "left",
                  nudge_y = nudge, colour = "grey30", size = 5) +
    scale_y_continuous("", labels = scales::comma, limits = c(-shift, extend)) +
    scale_x_reverse("") +
    coord_flip(clip = "off") +
    theme_minimal() +
    theme(panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank(),
          panel.grid.minor.x = element_blank(),
          axis.text.y = element_blank(),
          text = element_text(size = 20),
          plot.title = element_text(size = 32, face = "bold"),
          plot.subtitle = element_text(size = 24)) +
    gganimate::transition_time({{time_col}}) +
    gganimate::ease_aes("cubic-in-out") +
    gganimate::enter_fly(x_loc = -(max_bars + 2)) +
    gganimate::exit_fly(x_loc = -(max_bars + 2)) +
    labs(title = title,
         subtitle = "{round(frame_time)}")
}
