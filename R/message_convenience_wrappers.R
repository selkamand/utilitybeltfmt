
#' Coloured Message
#'
#' @inheritParams fmterror
#' @param ... (string/s) Message to format. Comma separated strings will be concatenated (no spaces) before colorisation.
#' @return run for its side effects
#' @export
#' @examples
#' message_error("This is an error")
#' message_warning("This is a warning")
#' message_info("This text is informative")
#' message_bold("This text is bold")
message_error <- function(..., symbol=TRUE, level=1) { message(fmterror(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_warning <- function(..., symbol=TRUE, level=1) { message(fmtwarning(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_success <- function(..., symbol=TRUE, level=1) { message(fmtsuccess(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_info <- function(..., symbol=TRUE, level=1) { message(fmtinfo(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_bold <- function(..., level=1) { message(fmtbold(..., level = level))  }

