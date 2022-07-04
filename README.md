
<!-- README.md is generated from README.Rmd. Please edit that file -->

# utilitybeltfmt

<!-- badges: start -->
<!-- badges: end -->

The goal of utilitybeltfmt is to colorise R console output with minimal
effort. Preconfigured colorisations/symbol prefixes are provided for
errors, warnings, and info messages.

## Installation

You can install the development version of utilitybeltfmt from
[GitHub](https://github.com/selkamand/utilitybeltfmt) with:

``` r
# install.packages("devtools")
devtools::install_github("selkamand/utilitybeltfmt")
```

## Usage

### Preformatted messages

``` r
library(utilitybeltfmt)
```

![](images/paste-46C66429.png)

### Formatting options

You can also use **`fmt`**`type` functions to produce formatted strings.
These functions are useful for assertion messages.

``` r
# Example assertion
if(condition == true){
  stop(fmterror("This is an error"))
}

# There are also options for warnings, info & bold text
message(fmterror("This is an error"))
message(fmtwarning("This is a warning"))
message(fmtinfo("This text is informative"))
message(fmtbold("This text is bold"))
```
