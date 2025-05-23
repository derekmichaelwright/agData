% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/folder_Renamer.R
\name{folder_Renamer}
\alias{folder_Renamer}
\title{folder_Renamer}
\usage{
folder_Renamer(input, output, pad.width = 3, start.num = 1)
}
\arguments{
\item{input}{Input folder}

\item{output}{Output folder}

\item{pad.width}{Minimum width of padded number}

\item{start.num}{Starting number}
}
\value{
Renamed files in the output folder
}
\description{
This function copies all files in the input folder to the output folder then renames them based on folder name.
}
\examples{
renameByFolder(input = "J:/PhotoR/input",
               output = "J:/PhotoR/output",
               pad.width =3 , start.num = 1)
}
