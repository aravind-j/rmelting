
## `rmelting`: R Interface to MELTING 5 <img src="https://raw.githubusercontent.com/aravind-j/rmelting/master/inst/extdata/rmelting.png" align="right" alt="logo" width="173" height = "200" style = "padding: 10px; border: none; float: right;">

###### Version : [0.99.1](https://aravind-j.github.io/rmelting/); License: [GPL-2|GPL-3](https://www.r-project.org/Licenses/)

##### *Aravind, J.<sup>1</sup> and Krishna, G. K.<sup>2</sup>*

1.  Division of Germplasm Conservation, ICAR-National Bureau of Plant
    Genetic Resources, New Delhi
2.  Division of Crop Physiology, ICAR-Indian Agricultural Research
    Institute, New Delhi

-----

[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.0.2-6666ff.svg)](https://cran.r-project.org/)
[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version-last-release/rmelting)](https://cran.r-project.org/package=rmelting)
<!-- [![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/grand-total/rmelting?color=green)](https://CRAN.R-project.org/package=rmelting) -->
<!-- [![packageversion](https://img.shields.io/badge/Package%20version-0.2.3.3-orange.svg)](https://github.com/aravind-j/rmelting) -->
[![develVersion](https://img.shields.io/badge/devel%20version-0.0.0.9000-orange.svg)](https://github.com/aravind-j/rmelting)
<!-- [![GitHub Download Count](https://github-basic-badges.herokuapp.com/downloads/aravind-j/rmelting/total.svg)] -->
[![Project Status:
WIP](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Last-changedate](https://img.shields.io/badge/last%20change-2018--12--23-yellowgreen.svg)](/commits/master)
<!-- [![Rdoc](http://www.rdocumentation.org/badges/version/rmelting)](http://www.rdocumentation.org/packages/rmelting) -->
<!-- [![Zenodo DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.841963.svg)](https://doi.org/10.5281/zenodo.841963) -->
[![Analytics](https://pro-pulsar-193905.appspot.com/UA-116683292-1/welcome-page)](https://github.com/aravind-j/google-analytics-beacon)

-----

## Description

Provides functions to compute various germination indices such as
germinability, median germination time, mean germination time, mean
germination rate, speed of germination, Timson’s index, germination
value, coefficient of uniformity of germination, uncertainty of
germination process, synchrony of germination etc. from germination
count data. Includes functions for fitting cumulative seed germination
curves using four-parameter hill function and computation of associated
parameters. See the vignette for more, including full list of citations
for the methods implemented.

## Installation

<!-- The package can be installed from CRAN as follows:


```r
install.packages('germinationmetrics', dependencies=TRUE)
```
-->

The development version can be installed from github as follows:

``` r
devtools::install_github("aravind-j/rmelting")
```

## Detailed tutorial

For a detailed tutorial on how to used this package type:

``` r
browseVignettes(package = 'rmelting')
```

## What’s new

To know whats new in this version
type:

``` r
news(package='rmelting')
```

## Links

<!-- [CRAN page](https://cran.r-project.org/package=germinationmetrics) -->

[Github page](https://github.com/aravind-j/germinationmetrics)

[Documentation website](https://aravind-j.github.io/germinationmetrics/)

<!-- [Zenodo DOI](https://doi.org/10.5281/zenodo.1219630) -->

## Citing `rmelting`

To cite the methods in the package use:

``` r
citation("rmelting")
```

``` 

To cite the R package 'rmelting' in publications use:

  Aravind, J. and Krishna, G. K. (2018).  rmelting: R Interface to
  MELTING 5. R package version 0.99.1,
  https://aravind-j.github.io/rmelting/.

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {rmelting: R Interface to MELTING 5},
    author = {J. Aravind and G. K. Krishna},
    year = {2018},
    note = {R package version 0.99.1},
    note = {https://aravind-j.github.io/rmelting/},
  }

This free and open-source software implements academic research by
the authors and co-workers. If you use it, please support the
project by citing the package.
```
