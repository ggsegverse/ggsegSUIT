# ggsegSUIT

SUIT cerebellar atlas for the [ggseg](https://github.com/ggseg/ggseg)
plotting ecosystem.

Provides the SUIT anatomical parcellation of the cerebellum with 34
regions covering lobules I-X, vermis subdivisions, and deep cerebellar
nuclei (dentate, interposed, fastigial).

## Installation

We recommend installing ggseg atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
    ggseg = "https://ggseg.r-universe.dev",
    CRAN = "https://cloud.r-project.org"))

install.packages("ggsegSUIT")
```

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ggseg/ggsegSUIT")
```

## Example

``` r
library(ggsegSUIT)
library(ggseg)
library(ggplot2)

plot(suit) +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 7)) +
  guides(fill = guide_legend(ncol = 4))
```

## Source data

The NIfTI volume and lookup tables in `data-raw/` are from the
[DiedrichsenLab/cerebellar_atlases](https://github.com/DiedrichsenLab/cerebellar_atlases)
GitHub repository (Diedrichsen_2009 directory):

<https://github.com/DiedrichsenLab/cerebellar_atlases/tree/master/Diedrichsen_2009>

Files used:

- `atl-Anatom_space-MNI_dseg.nii` – discrete segmentation volume
  (MNI152, 1mm)
- `atl-Anatom.tsv` – region index, name, and hex color
- `atl-Anatom.lut` – FreeSurfer-style LUT with RGB as 0-1 floats

## Reference

Diedrichsen J, Balsters JH, Flavell J, Cussans E, Ramnani N (2009). A
probabilistic MR atlas of the human cerebellum. *NeuroImage*,
46(1):39-46.
<doi:%5B10.1016/j.neuroimage.2009.01.045>\](<https://doi.org/10.1016/j.neuroimage.2009.01.045>)

## Code of Conduct

Please note that the ggsegSUIT project is released with a [Contributor
Code of Conduct](https://ggseg.github.io/ggsegSUIT/CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.
