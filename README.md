
<!-- README.md is generated from README.Rmd. Please edit that file -->

# correct.community

<!-- badges: start -->

[![R-CMD-check](https://github.com/richardjtelford/correct.community/workflows/R-CMD-check/badge.svg)](https://github.com/richardjtelford/correct.community/actions)
<!-- badges: end -->

Community data inevitably contain errors due to misidentifications or
oversight and need correcting. The goal of correct.community is to
provide a framework for correcting these errors in a reproducible way.

## Installation

You can install correct.community from [GitHub](https://github.com/)
with:

``` r
# install.packages("remotes")
remotes::install_github("richardjtelford/correct.community")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#library(correct.community)
## basic example code
```

## Data required

-   turf community data
-   optional subturf data
-   taxon list
-   turfID list
-   siteID list
-   corrections

## Initial checks

-   (new) taxa are valid NO
-   turfID are valid NO
-   siteID are valid NO

## Secondary checks

-   taxa to correct are in turf NO

## Types of corrections

-   rename/merge taxa at global level (all years) NO
-   rename/merge at site & year NO
-   rename/merge at turf & year (perhaps with revised cover) NO
-   new cover for existing taxa NO
-   impute cover NO
-   delete species NO
-   add species NO
-   add/delete subturfs NO
-   rotate subturf NO
