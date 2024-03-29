<<<<<<< HEAD
# Part 3
# Write a function that takes a directory of data files and a threshold for
# complete cases and calculates the correlation between sulfate and nitrate for
# monitor locations where the number of completely observed cases (on all
# variables) is greater than the threshold. The function should return a vector
# of correlations for the monitors that meet the threshold requirement. If no
# monitors meet the threshold requirement, then the function should return a
# numeric vector of length 0.

corr <- function(directory, threshold = 0) {
  files <- list.files(path = paste(getwd(),"/",directory, sep=""))
  l <- length(files)
  q <- as.numeric()
  for(i in seq(l)) {
    df <- read.csv(paste(directory,"/",files[i],sep=""))
    nobs <- sum(complete.cases(df) == TRUE)
    if(nobs == 0) {
      next
    } else if(nobs >= threshold) {
      q <- c(q,cor(df$sulfate, df$nitrate, use="complete.obs"))
    }
  }
  return(q)
}
=======
# Part 3
# Write a function that takes a directory of data files and a threshold for
# complete cases and calculates the correlation between sulfate and nitrate for
# monitor locations where the number of completely observed cases (on all
# variables) is greater than the threshold. The function should return a vector
# of correlations for the monitors that meet the threshold requirement. If no
# monitors meet the threshold requirement, then the function should return a
# numeric vector of length 0.

corr <- function(directory, threshold = 0) {
  files <- list.files(path = paste(getwd(),"/",directory, sep=""))
  l <- length(files)
  q <- as.numeric()
  for(i in seq(l)) {
    df <- read.csv(paste(directory,"/",files[i],sep=""))
    nobs <- sum(complete.cases(df) == TRUE)
    if(nobs == 0) {
      next
    } else if(nobs >= threshold) {
      q <- c(q,cor(df$sulfate, df$nitrate, use="complete.obs"))
    }
  }
  return(q)
}
>>>>>>> ebc92d508d52c3490c866bd0854b9ddb86b943a1
