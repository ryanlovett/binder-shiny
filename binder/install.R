cran_no_deps <- function(x) {
  x <- as.character(match.call()[[2]])
  if (!require(x, character.only=TRUE)) {
    install.packages(pkgs=x, lib="/srv/rlibs")
    require(x, character.only=TRUE)
  }
}

cran_no_deps('shiny')
