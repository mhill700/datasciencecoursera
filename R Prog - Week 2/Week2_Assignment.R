# Assignment - Week 2

print(R.version.string)

#Part 1
pollutantmean <- function(directory,pollutant,id) {
  x <- as.numeric()
  l <- length(id)
  # For loop that runs for number of items in vector id
  # Need to call the .csv name with leading zeroes x2 if id <10, and x1 if id<100
  # Using if/else in the for loop to call the correct csv file
  for(i in seq(l)) {
    if(id[i]<10) {
      df <- read.csv(paste(directory,'/00',id[i],".csv", sep=""))
    } else if(id[i]<100) {
      df <- read.csv(paste(directory,'/0',id[i],".csv", sep=""))
    } else {
      df <- read.csv(paste(directory,'/',id[i],".csv", sep=""))
    }
    # Add all the values to a running vector which will be averaged at the end
    x <- c(x, df[[pollutant]])
  }
  # Take average and ignore NA
  mean(x,na.rm=TRUE)
}

#Replicate example
print(pollutantmean("specdata", "sulfate", 1:10))
print(pollutantmean("specdata", "nitrate", 70:72))
print(pollutantmean("specdata", "nitrate", 23))


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
source("complete.R")
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
