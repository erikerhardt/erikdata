## Startup functions ------------------------------------

# Based on zzz.R from the tidyverse package, https://github.com/tidyverse/tidyverse/blob/main/R/zzz.R
#' .onAttach start message
#'
#' @param ...             arguments
#' @return invisible(NULL)
.onAttach <- function(...) {

  needed <- core[!is_attached(core)]
  if (length(needed) == 0)
    return()

  crayon::num_colors(TRUE)
  erikdata_attach()

  if (!"package:conflicted" %in% search()) {
    x <- erikdata_conflicts()
    msg(erikdata_conflict_message(x), startup = TRUE)
  }

  start_message <- c( "erikdata, solving common complex data analysis workflows\n"
                      , "  by Dr. Erik Barry Erhardt <erik@StatAcumen.com>")
  packageStartupMessage(start_message)
  #print(erikdata_logo())

  invisible(NULL)
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

#' .onLoad getOption package settings
#'
#' @param libname defunct
#' @param pkgname defunct
#'
#' @return invisible(NULL)
#'
#' @examples
#' getOption("erikdata.name")
.onLoad <- function(libname, pkgname) {
  op <- options()
  op.erikdata <- list(
    #erikdata.path = "~/R-dev",
    erikdata.install.args  = "",
    erikdata.name          = "Erik Barry Erhardt",
    erikdata.desc.author   = "Erik Erhardt <erik@StatAcumen.com> [aut, cre]",
    erikdata.desc.license  = "GPL (>= 2)",
    erikdata.desc.suggests = NULL,
    erikdata.desc          = list()
  )
  toset <- !(names(op.erikdata) %in% names(op))
  if(any(toset)) options(op.erikdata[toset])

  invisible(NULL)
}
