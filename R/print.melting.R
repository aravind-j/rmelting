#' Prints melting temperature from a \code{melting} object
#'
#' \code{print.melting} prints to console the melting temperature value from an object of
#' class \code{melting}.
#'
#' @param x An object of class \code{melting}.
#' @param ... Unused
#' @seealso \code{\link[rmelting]{melting}}
#'
#' @export
print.melting <- function(x, ...){

  print(x$Results$`Melting temperature (C)`)

}
