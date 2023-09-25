#' Calculate the length of the third side of a right triangle.
#'
#' This function calculates the length of the third side of a right triangle
#' using the Pythagorean theorem
#'
#' @param a The length of one of the two shorter sides of the right triangle.
#' @param b The length of the other shorter side of the right triangle.
#' @param c The length of the hypotenuse (not allowed, set to NULL).
#'
#' @return The length of the third side of a right triangle.
#'
#' @details
#' This function checks various conditions:
#' - Must provide the length of at least two sides.
#' - Cannot provide the length of all three sides.
#' - All arguments must be numeric.
#'
#' @examples
#' pythag(a = 3, b = 4)
#' [1] 5
#'
#' @export

pythag <- function(a, b, c = NULL) {
  # check if user only provides the length of one side
  if (is.null(a) && is.null(b)) {
    stop("Must provide the length of at least two sides.")
  }

  # check if user provides the lengths of all three sides
  if (!is.null(c)) {
    stop("Cannot provide the length of all three sides.")
  }

  # check if user provides any values other than numeric values
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("All arguments must be numeric.")
  }

  # calculate the length of the third side
  side <- sqrt(a^2 + b^2)

  # return the length of the third side
  return(side)
}
