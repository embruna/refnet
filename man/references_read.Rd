% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/references_read.R
\name{references_read}
\alias{references_read}
\title{Reads Thomson Reuters Web of Knowledge/Science and ISI reference export files (both .txt or .ciw format accepted)}
\usage{
references_read(data = ".", dir = FALSE, include_all = FALSE)
}
\arguments{
\item{data}{the location of the file or files to be imported. This can be either the absolute or 
relative name of the file (for a single file) or folder (for multiple files stored in the same folder; 
used in conjuction with `dir = TRUE``). If left blank it is assumed the location is the working directory.}

\item{dir}{if FALSE it is assumed a single file is to be imported. 
Set to TRUE if importing multiple files (the path to the folder in which files are stored is set with `data=``; 
all files in the folder will be imported). Defaults to FALSE.}

\item{include_all}{if FALSE only a subset of commonly used fields from references records are imported. 
If TRUE then all fields from the reference records are imported. Defaults to FALSE.  
The additional data fields included if `include_all=TRUE`: CC, CH, CL, CT, CY, DT, FX, GA, GE, ID, IS, J9, JI, 
LA, LT, MC, MI, NR, PA, PI, PN, PS, RID, SU, TA, VR.}
}
\description{
\code{references_read} This function reads Thomson Reuters Web of Knowledge
and ISI format reference data files into an R-friendly data format. The resulting dataframe
is the argument for the refplitr function `authors_clean()`.
}
\examples{
## If a single files is being imported from a folder called "data" located in an RStudio Project: 
## imported_refs<-references_read(data = './data/refs.txt', dir = FALSE, include_all=FALSE)

## If multiple files are being imported from a folder named "heliconia" nested within a folder
## called "data" located in an RStudio Project: 
## heliconia_refs<-references_read(data = './data/heliconia', dir = TRUE, include_all=FALSE)

## To load the Web of Science records used in the examples in the documentation  
BITR_data_example <- system.file('extdata', 'BITR_test.txt', package = 'refsplitr')
BITR <- references_read(BITR_data_example)


}
