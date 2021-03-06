% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/design.R
\name{design}
\alias{design}
\alias{design_length}
\alias{design_range}
\alias{design_dim}
\alias{design_unique}
\alias{design_missings}
\alias{design_levels}
\alias{design_nlevels}
\alias{design_nrow}
\alias{design_ncol}
\alias{design_names}
\alias{design_dimnames}
\alias{design_varclass}
\alias{design_class}
\title{Print an \R{} object test result}
\usage{
design_length(x, ...)

design_range(x, ...)

design_dim(x, ...)

design_unique(x, ...)

design_missings(x, ...)

design_levels(x, ...)

design_nlevels(x, ...)

design_nrow(x, ...)

design_ncol(x, ...)

design_names(x, ...)

design_dimnames(x, ...)

design_varclass(x, ...)

design_class(x, environment = NULL, ...)
}
\arguments{
\item{x}{\R{} object}

\item{...}{Arguments passed on to \code{seal}
\describe{
  \item{load_testthat}{include \code{library(testthat)} when \emph{TRUE}}
  \item{clip}{If \emph{TRUE} will overwrite the system clipboard.
When clipr is not available, The clip arguments is forcibly \emph{FALSE}.}
  \item{ts}{include comments that timestamp?}
  \item{mask_seal}{Whether to comment out after executing the function.
Default \emph{FALSE}. This option is effective only when using RStudio.}
}}

\item{environment}{which environment (work space) to search the available objects}
}
\description{
Print an \R{} object test result
}
\examples{
design_length(letters)
design_range(letters)
x <- c(1, NA, 3, 5)
design_range(x)
design_dim(iris)
x <- c(1, 1, 3, 2)
length(x)
design_unique(x)
design_unique(c("a", "a", "b"), seal = TRUE)
x <- c(1, NA, 3)
design_missings(x = x)
design_missings(c(1, NA, 3))
my_species <- iris$Species
design_levels(my_species)
my_species \%>\% design_levels()
my_species <- iris$Species
design_nlevels(my_species, seal = FALSE, ts = FALSE)
my_species \%>\% design_nlevels()
design_nrow(mtcars)
design_ncol(mtcars)
design_names(iris)
design_varclass(iris)
design_class(letters)
design_class(iris)
}
