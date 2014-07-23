#' Rttf2pt1 package
#'
#' This package is a wrapper for the ttf2pt1 program, and is meant
#' to be used with the extrafont package.
#'
#' @name Rttf2pt1
#' @docType package
#' @aliases Rttf2pt1 package-Rttf2pt1
NULL


#' Returns the path to the executable for ttf2pt1
#' @examples
#' which_ttf2pt1()
#'
#' @export
which_ttf2pt1 <- function() {
  if (.Platform$OS.type == "unix") {
    bin <- "ttf2pt1"
    binpath <- file.path(inst_path(), "exec", .Platform$r_arch, bin)

    # Fallback: manually try i386 if the r_arch version doesn't exist
    if (!file.exists(binpath))
      binpath <- file.path(inst_path(), "exec", "i386", bin)

  } else if (.Platform$OS.type == "windows") {
    bin <- "ttf2pt1.exe"
    binpath <- file.path(inst_path(), "exec", bin)
  } else {
    stop("Unknown platform: ", .Platform$OS.type)
  }

  # First check if it was installed with the package
  if (file.exists(binpath))
    return(binpath)

  # If we didn't find it installed with the package, check search path
  binpath <- Sys.which(bin)
  if (binpath == "")
    stop(bin, " not found in path.")
  else
    return(binpath)
}
