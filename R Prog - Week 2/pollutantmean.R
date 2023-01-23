<<<<<<< HEAD
# Assignment - Week 2
#Part 1

print(R.version.string)


pollutantmean <- function(directory,pollutant,id=1:332) {
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
=======
# Assignment - Week 2
#Part 1

print(R.version.string)


pollutantmean <- function(directory,pollutant,id=1:332) {
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
>>>>>>> ebc92d508d52c3490c866bd0854b9ddb86b943a1
