#' Create power set
#'
#' This function creates power set.
#'
#' @example
#'
#' powerset(1:3)
powerset <- function(set){
  ps <- list()
  ps[[1]] <- numeric()
  for(element in set){
    temp <- vector(mode="list",length=length(ps))
    for(subset in 1:length(ps)){
      temp[[subset]] = c(ps[[subset]],element)
    }
    ps <- c(ps,temp)
  }
  ps
}
