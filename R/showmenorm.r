#' When you need a break...
#'
#' Genetic data analysis can be a harsh, tiring, daunting task.
#' Sometimes, a mere break will not cut it.
#' Sometimes, you need Norm Macdonald.
#'
#' @author Derek Michael Wright \email{derek.wright#usask.ca}
#'
#' @export
#'
#' @details
#'
#' Please send us more! Either pull request or submit an issue with a URL (use
#' \code{adegenetIssues()}).
#'
#'
#' @param x the name or index of the video to display; if NULL, a random video is chosen
#'
#' @param list a logical indicating if the list of available videos should be displayed
#'
showmenorm <- function(x = NULL, list = FALSE){
    ## 'pool' is a named character vector of video URLs
    pool <- c(n0 = "https://www.youtube.com/channel/UCJNky9LM9wx0cmWfrg5eUcw/videos",
              n1 = "https://www.youtube.com/watch?v=wK_ENB1gS5U",
              n2 = "https://www.youtube.com/watch?v=XLxJTRiAUog",
              n3 = "https://www.youtube.com/watch?v=CAWw5o_lyw8",
              n4 = "https://www.youtube.com/watch?v=z0IA5xNCqsY&t=324s",
              n5 = "https://www.youtube.com/watch?v=c_dluMVKDUA",
              n6 = "https://www.youtube.com/watch?v=sbbG7_Fw9e4",
              n7 = "https://www.youtube.com/watch?v=4KGbu9tP93Q",
              n8 = "https://www.youtube.com/watch?v=ejmGvdpz4Ac",
              n9 = "https://www.youtube.com/watch?v=5L915KS_jLc&t=231s",
              n10 = "https://www.youtube.com/watch?v=FQiFfRLVdgE&t=266s")

    ## either we return the list of videos, or we show one
    if (list) {
        return(pool)
    }

    if (is.null(x)) {
        x <- sample(seq_along(pool), 1L)
    }

    ## check that x is okay
    if (is.numeric(x) && (x < 1 || x > length(pool))) {
        stop(sprintf("Video index (%d) is wrong; there are currently %d videos in the list", x, length(pool)))
    }

    if (is.character(x) && !x %in% names(pool)) {
        stop(sprintf("Video name (%s) is not in the list; use the option 'list=TRUE' to see available videos.", x))
    }

    browseURL(pool[x])
}
