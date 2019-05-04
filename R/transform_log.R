#' transform_log
#'
#' A simple log transformation
#'
#' @param x A vector
#' 
#' #' @examples
#' transform_log(exp(rnorm(7)))
#' 
#' @export
transform_log <- function(x) {
  
  # value checks
  if ( !is.numeric(x) ) stop("Input must be numeric!")
  if ( any(x<0) ) stop("Input must not be negative!")
  
  x <- log(x)
  x
}


