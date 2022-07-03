# Once you update this list, run the list in console and then run usethis::use_data(unicode_preview)
unicode_symbols <- list(
  "White Heavy Check Mark Emoji" = "\u2705",
  "Heavy Check Mark Emoji" = "\u2714",
  "Check Mark"  = "\u2713",
  "Heavy Multiplication X Emoji" = "\u2716",
  "Heavy Ballot X" = "\u2718",
  "Cross Mark" = "\u274C",
  "Negative Squared Cross Mark" = "\u274E",
  "Warning Sign" =  "\u26A0",
  "Heavy Exclamation Mark Symbol" = "\u2757",
  "Information Source" = "\u2139"
  )

#' List supported unicode paramateres
#'
#' @return run for its side effects
#' @export
#'
#' @examples
#' unicode_preview()
unicode_preview <- function(){
  message("To use the following symbols, please see  `unicode_symbols` list\n", rep("-", 40))
  message(paste("[", unlist(unicode_symbols), "]", names(unicode_symbols), "\n"))
}


#' Coloured Message
#'
#' @param ... (string/s) MEssage to format Comma separated strings will be concatenated (no spaces) before colorisation.
#'
#' @return run for its side effects
#' @export
message_bold <- function(...) { message(fmtbold(...))  }

#' Coloured Message
#'
#' @param ... (string/s) MEssage to format Comma separated strings will be concatenated (no spaces) before colorisation.
#'
#' @return run for its side effects
#' @export
message_success <- function(...) { message(fmtsuccess("[", unicode_symbols[["Heavy Check Mark Emoji"]], "] ",...))  }

#' Coloured Message
#'
#' @param ... (string/s) MEssage to format Comma separated strings will be concatenated (no spaces) before colorisation.
#'
#' @return run for its side effects
#' @export
message_error <- function(...) { message(fmterror("[", unicode_symbols[["Heavy Ballot X"]], "] ",...))  }
