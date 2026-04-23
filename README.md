

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegSUIT

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegSUIT/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegSUIT/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggseg.r-universe.dev/badges/ggsegSUIT.png)](https://ggseg.r-universe.dev/ggsegSUIT)
<!-- badges: end -->

SUIT cerebellar lobular atlas for the ggseg ecosystem.

Diedrichsen J, Balsters JH, Flavell J, Cussans E, & Ramnani N (2009). A
probabilistic MR atlas of the human cerebellum. *NeuroImage*, 46(1),
39-46.

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegSUIT")
```

You can install this package from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ggsegverse/ggsegSUIT")
```

## SUIT atlas

``` r
library(ggseg)
library(ggsegSUIT)

plot(suit())
```

<img src="man/figures/README-suit-1.png" style="width:100.0%" />

## Data source

Diedrichsen J, Balsters JH, Flavell J, Cussans E, & Ramnani N (2009). A
probabilistic MR atlas of the human cerebellum. *NeuroImage*, 46(1),
39-46.
[doi:10.1016/j.neuroimage.2009.01.045](https://doi.org/10.1016/j.neuroimage.2009.01.045)
