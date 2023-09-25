# pytrim

pytrim is an R package that provides a collection of functions for performing various operations related to geometry and statistics.

* The `pythag` function calculates the length of the third side of a right triangle using the Pythagorean theorem.
* The `trimmed_mean` function calculates the trimmed mean of a numeric vector. It removes the smallest s values and the largest l values from the vector.

## Installation

You can install pytrim directly from GitHub using the `devtools` package. To install the latest development version, run the following command in your R console:

```R
devtools::install_github("trang-ly/pytrim/pytrim")
```

## Usage

Here's how you can use this package in your R scripts:

```R
# load the package
library(pytrim)

# call a function
pythag(3, 4)
```

## Documentation

For detailed documentation on pytrim functions and their usage, including other examples, please refer to the package's documentation. You can access the documentation within R using the ? operator. For example:

```R
?pythag
```

Trang Ly <br>
lytt6@vcu.edu <br>
Created for BIOS 524 Biostatistical Computing with R Assignment 6