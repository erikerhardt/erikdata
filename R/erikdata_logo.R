#' The erikdata logo, using ASCII or Unicode characters
#'
#' Use [crayon::strip_style()] to get rid of the colors.
#'
#' @param sw_unicode Whether to use Unicode symbols. Default is `TRUE`
#'   on UTF-8 platforms.
#'
#' @importFrom purrr map2
#' @importFrom crayon make_style
#' @importFrom crayon blue
#' @export
#' @examples
#' erikdata_logo()
erikdata_logo <-
  function
  (
    sw_unicode = l10n_info()$`UTF-8`
  ) {
# https://patorjk.com/software/taag/#p=display&f=Standard&t=erikdata
# Standard
#            _ _       _       _
#   ___ _ __(_) | ____| | __ _| |_ __ _
#  / _ \ '__| | |/ / _` |/ _` | __/ _` |
# |  __/ |  | |   < (_| | (_| | || (_| |
#  \___|_|  |_|_|\_\__,_|\__,_|\__\__,_|
#

  # original
  # logo <-
  #   c(
  #     ""
  #   , "   0    1   _ _    2  _    9  _  3  4   "
  #   , "   ___ _ __(_) | ____| | __ _| |_ __ _  "
  #   , "  / _ \ '__| | |/ / _` |/ _` | __/ _` | "
  #   , " |  __/ |  | |   < (_| | (_| | || (_| | "
  #   , "  \___|_|  |_|_|\_\__,_|\__,_|\__\__,_| "
  #   , "     5       6           7      8     9  "
  #   , ""
  #   )
  logo <-
    c(
      ""
    , "   0    1   _ _    2  _    9  _  3  4   "
    , "   ___ _ __(_) | ____| | __ _| |_ __ _  "
    , "  / _ \\ '__| | |/ / _` |/ _` | __/ _` | "
    , " |  __/ |  | |   < (_| | (_| | || (_| | "
    , "  \\___|_|  |_|_|\\_\\__,_|\\__,_|\\__\\__,_| "
    , "     5       6           7      8     9  "
    , ""
    )

  hexa <- c("*", ".", "o", "*", ".", "*", ".", "o", ".", "*")

  if (sw_unicode) {
    hexa <- c("*" = "\u2b22", "o" = "\u2b21", "." = ".")[hexa]
  }

  cols <-
    c("red", "yellow", "green", "magenta", "cyan", "yellow",
      "green", "white", "magenta", "cyan")

  col_hexa <-
    purrr::map2(hexa, cols, ~ crayon::make_style(.y)(.x))

  for (i in 0:9) {
    pat <- paste0("\\b", i, "\\b")
    logo <- sub(pat, col_hexa[[i + 1]], logo)
  }

  #structure(crayon::blue(logo), class = "tidyverse_logo")
  structure(crayon::blue(logo), class = "erikdata_logo")

}


#' Print for erikdata_logo
#'
#' @param x the \code{erikdata_logo()}
#' @param ... additional parameters passed to \code{cat()}
#'
#' @return the logo, invisibly
#' @export
print.erikdata_logo <-
  function(
    x
  , ...
  ) {
  cat(x, ..., sep = "\n")
  invisible(x)
}
