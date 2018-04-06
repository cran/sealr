## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = TRUE, echo = TRUE-------------------------------------------
library(sealr)
library(testthat)

## ------------------------------------------------------------------------
x <- seq(1, 9, by = 2)

design_class(x, seal = TRUE)

design_range(x, seal = TRUE)

## ---- eval = FALSE, echo = TRUE------------------------------------------
#  design_class(x, seal = TRUE, clip = TRUE)
#  expect_is(
#    x,
#    "numeric"
#  )

## ---- warning = FALSE----------------------------------------------------
transcribe(iris)

my_data <- list(A = letters, B = trees)

transcribe(my_data, load_testthat = FALSE, ts = FALSE)

