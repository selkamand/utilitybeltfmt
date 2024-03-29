% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/color_text.R
\name{fmtinfo}
\alias{fmtinfo}
\title{Colour text}
\usage{
fmtinfo(..., symbol = TRUE, level = 1)
}
\arguments{
\item{...}{(string/s) Text to colorise. Comma separated strings will be concatenated (no spaces) before colorisation.}

\item{symbol}{add a symbol indicating the type of message as prefix (boolean)}

\item{level}{how many tabs should be used as a prefix to the text (calculated as level-1) (numeric)}
}
\value{
(string) Input text flanked by relevant Ansi escape codes
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#superseded}{\figure{lifecycle-superseded.svg}{options: alt='[Superseded]'}}}{\strong{[Superseded]}}

A collection of functions that take text and return that same text flanked by  characters
that will lead to its coloration/formatting when printed to terminals using message/cat. Different presets are available:
fmterror, fmtwarning, fmtsuccess, fmtbold.

If greater control is required, use the crayon package
}
\examples{
message(fmterror("This is an error"))
message(fmtwarning("This is a warning"))
message(fmtinfo("This text is informative"))
message(fmtbold("This text is bold"))
}
