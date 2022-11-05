add2 <- function(x, y) {
  x + y
}

aboveX <- function(x, y = 10) {
  use <- x > y
  x[use]
}

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

