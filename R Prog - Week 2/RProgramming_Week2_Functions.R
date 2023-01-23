<<<<<<< HEAD
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

=======
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

>>>>>>> ebc92d508d52c3490c866bd0854b9ddb86b943a1
