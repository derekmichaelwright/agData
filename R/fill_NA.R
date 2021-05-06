#' fill_NA
#'
#' This function replaces NA values with the nearest above value.
#' @param x vector
#' @return Vector with NA values replaced with the nearest above value
#' @export
#' @examples
#' xx %>% mutate(Column1 = fill_NA(Column1))

fill_NA <- function(x) {
  val <- x[1]
  for(i in 1:length(x)) {
    if(!is.na(x[i])) { val <- x[i] } else { x[i] <- val }
  }
  x
}
