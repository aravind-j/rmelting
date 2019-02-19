#' Evaluate expression and capture all warnings and errors if any along with results
#'
#' Not exported. Strictly internal
#'
#' @keywords internal
#'
#' @param expr The expression to be evaluated.
#'
#' @return \itemize{
#'  \item{In cas of Warning(s)}{Returns the value along with the warning message(s).}
#'  \item{In cas of Error}{Returns NA as the value along with the error message.}
#' }
#'
#' @examples
#' foo <- function(){
#'   warning("oops")
#'   1}
#'
#' foo <- function(){
#'   warning("oops")
#'   warning("again oops")
#'   1}
#'
#' foo <- function(){
#'   warning("oops")
#'   log("a")}
#'
withWE <- function(expr) {
  myWarnings <- NULL
  myError <- NULL

  wHandler <- function(w) {
    myWarnings <<- c(myWarnings, conditionMessage(w))
    invokeRestart("muffleWarning")
  }

  val <- withCallingHandlers(tryCatch(expr,error = function(e) e),
                             warning = wHandler)

  if(!is.null(myWarnings)) {
    myWarnings <- paste("WARNING:", myWarnings)
    message <- myWarnings
    # message <- paste(myWarnings, myError,
    #                   collapse = "\n")
  } else {
    message <- NA
  }

  out <- list(value = val, message = message)

  if(any(c("error", "simpleError") %in% class(out$value))) {
    out$message <- paste("ERROR:", conditionMessage(out$value))
    out$value <- NA
  }

  if(!is.na(message)){
    message(paste(out$message, "\n"))
  }

  return(out)
}
