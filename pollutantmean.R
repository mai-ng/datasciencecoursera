## Write a function named 'pollutantmean' that calculates the mean of a pollutant 
## (sulfate or nitrate) across a specified list of monitors. 
## The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. 
## Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
## particulate matter data from the directory specified in the 'directory' argument 
## and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. 

pollutantmean <- function(directory, pollutant = "sulfate", id = 1:332) {
     ### list all the files in the 'directory'
      allFiles <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
     
     ### create an empty vector to store all the values read from the files
     data <- numeric()
     
     ### read each file and save the data
     for (i in id) {
           readfile <- read.csv(allFiles[i])
           data <- c(data, readfile[[pollutant]])
     }
     
     ### return the mean of the pollutant ignoring NA values
     mean(data, na.rm = TRUE)
     
}


# Test
pollutantmean("/Users/luongnv89/daisy/github/datasciencecoursera/specdata/", "sulfate")
## [1] 3.189369

pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706047

pollutantmean("specdata", "nitrate", 23)
## [1] 1.280833