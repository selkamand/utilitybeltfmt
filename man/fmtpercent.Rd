% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/numeric_reformatting.R
\name{fmtpercent}
\alias{fmtpercent}
\title{Formatters}
\usage{
fmtpercent(number, decimal_places = 1, proportion = FALSE)
}
\arguments{
\item{number}{number to turn into a percentage string, e.g. 10 to 10.0\% (numeric)}

\item{decimal_places}{number of decimal places to give percentage to (numeric)}

\item{proportion}{multiply number by 100 before formatting as percentage (e.g. 0.1 to 10\%) (boolean)}
}
\value{
percentage formatted string (character)
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#superseded}{\figure{lifecycle-superseded.svg}{options: alt='[Superseded]'}}}{\strong{[Superseded]}}
}
\examples{
fmtpercent(5, decimal_places = 2) # returns 5\%
}
