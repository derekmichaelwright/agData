#' mapvals.
#'
#' ggplot theme.
#' @param x list
#' @param from Entries to change
#' @param to Entries to change them to
#' @param warn_missing Logical, will warn if missing
#' @return replaced list
#' @export

mapvals <- function (x, from, to, warn_missing = TRUE) {
  if (length(from) != length(to)) {
    stop("`from` and `to` vectors are not the same length.")
    }
  if (!is.atomic(x) && !is.null(x)) {
    stop("`x` must be an atomic vector or NULL.")
    }
  if (is.factor(x)) {
    levels(x) <- mapvalues(levels(x), from, to, warn_missing)
    return(x)
    }
  mapidx <- match(x, from)
  mapidxNA <- is.na(mapidx)
  from_found <- sort(unique(mapidx))
  if (warn_missing && length(from_found) != length(from)) {
    message("The following `from` values were not present in `x`: ",
            paste(from[!(1:length(from) %in% from_found)], collapse = ", "))
    }
  x[!mapidxNA] <- to[mapidx[!mapidxNA]]
  x
}
