#' renameByFolder
#'
#' This function copies all files in the input folder to the output folder then renames them based on folder name.
#' @param input Input folder
#' @param output Output folder
#' @param pad.width Minimum width of padded number
#' @param start.num Starting number
#' @return Renamed files in the output folder
#' @export
#' @examples
#' renameByFolder(input = "J:/PhotoR/input",
#'                output = "J:/PhotoR/output",
#'                pad.width =3 , start.num = 1)

renameByFolder <- function(input, output, pad.width = 3, start.num = 1) {
  # Copy all files
  foldernames <- list.files(input)
  # Loop to rename files
  for (i in foldernames) {
    dir.create(paste(output, i, sep = "/"))
    filenames <- list.files(paste(input, i, sep = "/"))
    file.copy(from = paste(input, i, filenames, sep = "/"), to = paste(output, i, sep = "/"))
    file.rename(
      from = paste(output, i, filenames, sep = "/"),
      to = paste(output, "/", i, "/", i,
                 stringr::str_pad(start.num:(length(filenames)+start.num-1), pad.width, pad = "0"),
                 ".jpg", sep = "")
    )
  }
}
