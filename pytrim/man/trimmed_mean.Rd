% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trimmed_mean.R
\name{trimmed_mean}
\alias{trimmed_mean}
\title{Calculate the trimmed mean of a numeric vector.}
\usage{
trimmed_mean(x, s, l)
}
\arguments{
\item{x}{A numeric vector from which to calculate the trimmed mean.}

\item{s}{The number of smallest values to remove from the beginning of x.}

\item{l}{The number of largest values to remove from the end of x.}
}
\value{
The trimmed mean of x after removing s smallest and l largest values.
}
\description{
This function calculates the trimmed mean of a numeric vector by removing
the smallest s values and the largest l values from the sorted vector x,
and then computing the mean of the remaining values.
}
\details{
This function checks if the input vector x has at least s + l + 1 values to
ensure that there are enough values to calculate a trimmed mean.
}
\examples{
trimmed_mean(x = c(1, 7, 3, 2, 5, 0.5, 9, 10), s = 1, l = 2)
[1] 3.6

}
