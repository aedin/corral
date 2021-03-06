% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{add_embeddings2scelist}
\alias{add_embeddings2scelist}
\title{Add embeddings to list of SCEs}
\usage{
add_embeddings2scelist(scelist, embeddings, slotname = "corralm")
}
\arguments{
\item{scelist}{list of SingleCellExperiments; to which the corresponding embeddings should be added}

\item{embeddings}{matrix; the embeddings outputted from a dimension reduction, e.g. \code{\link{corralm}}. Rows in this table correspond to columns in the SCEs in \code{scelist} (if all the SCEs were column-bound), and row indices should correspond to cells.}

\item{slotname}{character; name of the slot for the reduced dim embedding; defaults to \code{corral}}
}
\value{
list of SingleCellExperiments with respective embeddings stored in them
}
\description{
Add embeddings to list of SCEs
}
\examples{
library(DuoClustering2018)
sce <- sce_full_Zhengmix4eq()
scelist <- list(sce,sce)
embeddings <- matrix(sample(seq(0,20,1),dim(sce)[2]*6,replace = TRUE),nrow = dim(sce)[2]*2)
scelist <- add_embeddings2scelist(scelist, embeddings)
}
