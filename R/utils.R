# Based on utils.R from the tidyverse package, https://github.com/tidyverse/tidyverse/blob/main/R/utils.R


msg <- function(..., startup = FALSE) {
  if (startup) {
    if (!isTRUE(getOption("erikdata.quiet"))) {
      packageStartupMessage(text_col(...))
    }
  } else {
    message(text_col(...))
  }
}



text_col <- function(x) {
  # If RStudio not available, messages already printed in black
  if (!rstudioapi::isAvailable()) {
    return(x)
  }

  if (!rstudioapi::hasFun("getThemeInfo")) {
    return(x)
  }

  theme <- rstudioapi::getThemeInfo()

  if (isTRUE(theme$dark)) crayon::white(x) else crayon::black(x)
}

#' List all packages in the erikdata
#'
#' @param include_self Include erikdata in the list?
#' @export
#' @examples
#' erikdata_packages()
erikdata_packages <- function(include_self = TRUE) {
  raw <- utils::packageDescription("erikdata")$Imports
  imports <- strsplit(raw, ",")[[1]]
  parsed <- gsub("^\\s+|\\s+$", "", imports)
  names <- vapply(strsplit(parsed, "\\s+"), "[[", 1, FUN.VALUE = character(1))

  if (include_self) {
    names <- c(names, "erikdata")
  }

  return(names)
}

invert <- function(x) {
  if (length(x) == 0) return()
  stacked <- utils::stack(x)
  tapply(as.character(stacked$ind), stacked$values, list)
}

style_grey <- function(level, ...) {
  crayon::style(
    paste0(...),
    crayon::make_style(grDevices::grey(level), grey = TRUE)
  )
}


## This header still exported this function, even without @explort
## so I moved it down here to disconnect it from the function.

#' text_col
#'
#' @param x message
#'
#' @return color
#'
#' @importFrom rstudioapi isAvailable
#' @importFrom rstudioapi hasFun
#' @importFrom rstudioapi getThemeInfo
#' @importFrom crayon white
#' @importFrom crayon black
