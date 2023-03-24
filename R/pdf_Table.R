#' pdf_Table
#'
#' This function calculates a pdf file for a table of data.
#' @param data Data.
#' @param filename Name to give pdf file.
#' @param rowsperpage Rows per page.
#' @param width width of page.
#' @param height height of page.
#' @return Table with mean and sd for trait.
#' @export
#' @examples
#' pdf_Table(agData_FAO_Crops %>% filter(Area == "Canada", Crop == "Lentils") %>% select(Year, Measurement, Value), "myPDF.pdf", 41, 3.75, 12)

pdf_Table <- function(data, filename, rowsperpage = 36, width = 2.5, height = 11) {
  library(gridExtra); library(grid)
  pages <- ceiling(nrow(data)/rowsperpage)
  start <- 1
  mytheme <- ttheme_default(core    = list(fg_params = list(hjust = 0, x = 0.05)), 
                            colhead = list(fg_params = list(hjust = 0, x = 0.05)))
  #
  pdf(filename, height = height, width = width)
  for (i in 1:pages) {
    endT <- ifelse(start+rowsperpage-1 > nrow(data), nrow(data), start+rowsperpage-1) 
    gg <- tableGrob(data[start:endT,], 
                    theme = mytheme, 
                    rows = NULL )
    grid.newpage()
    grid.draw(gg)
    #
    start <- start + rowsperpage
  }
  dev.off()
}