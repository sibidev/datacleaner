#' windsorize
#'
#' see https://en.wikipedia.org/wiki/Winsorizing
#'
#' @param x A vector
#' @param p A quantile
#' 
#' @examples
#' windsorize(rnorm(7))
#' 
#' @export
windsorize <- function(x, p = .90) {
  
  # value checks
  if( length(x)==0 ) stop("Input must not be empty!") 
  if( all(is.na(x)) ) stop("Input must not only contain NAs!")

  q_upper <- quantile(x, 1-(1-p)/2 )
  q_lower <- quantile(x, (1-p)/2 )
  x[x >= q_upper] <- q_upper
  x[x <= q_lower] <- q_lower
  x
  
}


