
<!-- README.md is generated from README.Rmd. Please edit that file -->

# correct.community

<!-- badges: start -->

[![R-CMD-check](https://github.com/richardjtelford/correct.community/workflows/R-CMD-check/badge.svg)](https://github.com/richardjtelford/correct.community/actions)
<!-- badges: end -->

Community data inevitably contain errors due to, for example,
misidentifications or recording errors, and need correcting. The goal of
the `correct.community` package is to provide a framework for correcting
these errors in a reproducible way.

## Installation

You can install correct.community from [GitHub](https://github.com/)
with:

``` r
# install.packages("remotes")
remotes::install_github("richardjtelford/correct.community")
```

## Data required

-   turf community data
-   optional subturf data
-   taxon list
-   turfID list
-   siteID list
-   corrections

### Step 1

Make a correction template file with `cc_make_template()` and fill it in
using Excel or similar.

### Step 2

Import with your favourite data importing function (`readr::read_csv`
recommended)

### Step 3

Validate the corrections to check that sites, species, etc are valid.

### Step 4

Classify the errors into different types and iterate over these to fix
the errors.

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
