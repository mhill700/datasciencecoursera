
# Part 2
# Write a function that reads a directory full of files and reports the number
# of completely observed cases in each data file. The function should return a
# data frame where the first column is the name of the file and the second
# column is the number of complete cases. A prototype of this function follows
complete <- function(directory, id = 1:332) {
  dfcomplete <- data.frame(id=as.numeric(),nobs=as.numeric())
  l <- length(id)
  for(i in seq(l)) {
    if(id[i]<10) {
      df <- read.csv(paste(directory,'/00',id[i],".csv", sep=""))
    } else if(id[i]<100) {
      df <- read.csv(paste(directory,'/0',id[i],".csv", sep=""))
    } else {
      df <- read.csv(paste(directory,'/',id[i],".csv", sep=""))
    }
    #Find nobs
    nobs <- sum(complete.cases(df) == TRUE)
    #Add ID and nobs to the running data frame
    dfcomplete <- rbind(dfcomplete,c(id[i],nobs))
  }
  colnames(dfcomplete) <- c("id", "nobs")
  print(dfcomplete)
}

#replicate examples
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)