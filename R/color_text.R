#' @title Colour text
#'
#' @description A collection of functions that take text and return that same text flanked by  characters
#' that will lead to its coloration/formatting when printed to terminals using message/cat. Different presets are available:
#' fmterror, fmtwarning, fmtsuccess, fmtbold.
#'
#' If greater control is required, use the crayon package
#'
#' @param ... (string/s) Text to colorise. Comma separated strings will be concatenated (no spaces) before colorisation.
#' @param symbol add a symbol indicating the type of message as prefix (boolean)
#' @return (string) Input text flanked by relevant Ansi escape codes
#' @export
#'
#' @examples
#' message(fmterror("This is an error"))
#' message(fmtwarning("This is a warning"))
#' message(fmtinfo("This text is informative"))
#' message(fmtbold("This text is bold"))
fmterror <- function(..., symbol = TRUE) {
  symbol_text = ifelse(symbol,yes=paste0("[", unicode_symbols[["Heavy Ballot X"]], "] "), no = "")
  text = crayon::bold(crayon::red(paste0(symbol_text, ...)))
  return(text)
  }


#' @inherit fmterror
#' @export
fmtwarning <- function(..., symbol=TRUE) {
  symbol_text = ifelse(symbol,yes=paste0("[!] "), no = "")
  text = crayon::bold(crayon::yellow(paste0(symbol_text, ...)))
  return(text)
}

#' @inherit fmterror
#' @export
fmtsuccess <- function(..., symbol = TRUE) {
  symbol_text = ifelse(symbol,yes=paste0("[", unicode_symbols[["Heavy Check Mark Emoji"]], "] "), no = "")
  text = crayon::bold(crayon::green(paste0(symbol_text, ...)))
  return(text)
}

#' @inherit fmterror
#' @export
fmtinfo <- function(..., symbol = TRUE) {
  symbol_text = ifelse(symbol,yes=paste0("[", unicode_symbols[["Information Source"]], "] "), no = "")
  text = crayon::bold(crayon::blue(paste0(symbol_text, ...)))
  return(text)
}


#' @inherit fmterror
#' @export
fmtbold <- function(...) { return(crayon::bold(paste0(...)))  }

