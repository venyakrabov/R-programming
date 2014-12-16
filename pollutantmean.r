pollutantmean <- function(directory, pollutant, id=1:332) {
        #directory.head <- "C:/Users/vorlov/Documents/Coursera/specdata"                        
        #get data into data frame for every ID selected
        for(i in id){
                id.long <- formatC(id[i], width = 3, format = "d", flag = "00") 
                filename <- paste("C:/Users/vorlov/Documents/Coursera/", directory, "/", id.long, ".csv", sep="")
                data <- rbind(read.csv(filename))
                }
        #get values except for NA
        data.na <- is.na(data[,pollutant])
        #calculate mean
        data.mean <- mean(data[!data.na,pollutant])
        data.mean
}
