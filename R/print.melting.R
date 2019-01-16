#' Prints melting temperature from a \code{melting} object
#'
#' \code{print.melting} prints to console the melting temperature value from an object of
#' class \code{melting}.
#'
#' @param x An object of class \code{melting}.
#' @param ... Unused
#' @seealso \code{\link[rmelting]{melting}}
#'
#' @return The melting temperature value (degree Celsius) in the console.
#'
#' @export
print.melting <- function(x, ...){

  print(x$Results$`Melting temperature (C)`)
  if (!is.na(x$Message)) {
    message(x$Message)
  }

}
