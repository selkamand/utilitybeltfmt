
#' Coloured Message
#'
#' @param ... (string/s) MEssage to format Comma separated strings will be concatenated (no spaces) before colorisation.
#' @param symbol add a symbol indicating the type of message as prefix (boolean) (TRUE)
#' @return run for its side effects
#' @export
#' @examples
#' message_error("This is an error")
#' message_warning("This is a warning")
#' message_info("This text is informative")
#' message_bold("This text is bold")
message_error <- function(..., symbol=TRUE) { message(fmterror(..., symbol = symbol))  }

#' @inherit message_error
#' @export
message_warning <- function(..., symbol=TRUE) { message(fmtwarning(..., symbol = symbol))  }

#' @inherit message_error
#' @export
message_success <- function(..., symbol=TRUE) { message(fmtsuccess(..., symbol = symbol))  }

#' @inherit message_error
#' @export
message_info <- function(..., symbol=TRUE) { message(fmtinfo(..., symbol = symbol))  }

#' @inherit message_error
#' @export
message_bold <- function(...) { message(fmtbold(...))  }

