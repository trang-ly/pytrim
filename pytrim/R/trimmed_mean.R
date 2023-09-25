#' Calculate the trimmed mean of a numeric vector.
#'
#' This function calculates the trimmed mean of a numeric vector by removing
#' the smallest s values and the largest l values from the sorted vector x,
#' and then computing the mean of the remaining values.
#'
#' @param x A numeric vector from which to calculate the trimmed mean.
#' @param s The number of smallest values to remove from the beginning of x.
#' @param l The number of largest values to remove from the end of x.
#'
#' @return The trimmed mean of x after removing s smallest and l largest values.
#'
#' @details
#' This function checks if the input vector x has at least s + l + 1 values to
#' ensure that there are enough values to calculate a trimmed mean.
#'
#' @examples
#' trimmed_mean(x = c(1, 7, 3, 2, 5, 0.5, 9, 10), s = 1, l = 2)
#' [1] 3.6
#'
#' @export


trimmed_mean <- function(x, s, l) {
  # check if x has at least s + l + 1 values
  if (length(x) < s + l + 1) {
    stop("x must have at least s + l + 1 values.")
  }

  # sort the vector in ascending order
  x <- sort(x)

  # remove the s smallest and l largest values
  x <- x[s + 1:((length(x) - 1) - l)]

  # calculate the mean of the remaining values
  mean <- sum(x) / length(x)

  # return the trimmed mean
  return(mean)
}
