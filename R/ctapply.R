#'Standard Central Tendency function
#'
#'This function can be used to get the measure of central tendency and spread for a numeric vector x
#'
#'@param x numeric vector
#'@param np logical TRUE/FALSE:  The user has a choice to which measure to calculate
#'@param print logical TRUE/FALSE: The user has a choice to print the result
#'@param options (1, 2, 3): Takes one of three values and return different output
#'@keywords ctapply
#'@export
#'@examples
#'ctapply()
#'
#' #Sample data used detail: Cost Function of Electricity Producers (1955)
#' #The sample data was taken from: https://vincentarelbundock.github.io/Rdatasets/datasets.html
#' #Electricity1955 <- read.table("C:\\USF\\SPRING2022\\R-PROGRAMMING\\Assignment11\\Electricity1955.csv", header = TRUE, sep=",")
#' #electricdata <- data.frame(Electricity1955)
#' #electricdata
#' #save(electricdata, file = "data\\electricdata.RData")
#'
#'
#' # Function description: get the measure of central tendency


ctapply <- function(x,np=TRUE,print=TRUE, options=3){
  library(survey)
  library(car)
  x<-electricdata$fuel
  if (options == 1){
    cat("OPTION: 1")
    if(np){
      center <- mean(x);
      sd <- sd(x)
    }else{
      center <- median(x)
      spread <- mad(x)
    }
    if (np){
      cat(" The Mean= ",center,"\n","Standard Deviation(spread) = ",sd,"\n")
      center = cat("\nThe Center is: ",  center)
    }else {
      cat(" The Median= ", center,"\n","Standard Deviation(spread)  = ",spread,"\n")
      spread = cat("\nThe Standard Deviation is: ",  spread)
    }
  }else if (options == 2){
    #Cobb-Douglas cost function
    cat("OPTION: 2")
    fm_all <- lm(log(cost/fuel) ~ log(output) +
                   log(labor/fuel) +
                   log(capital/fuel), data = electricdata)
    summary(fm_all)
  }else{
    #log quadratic cost function
    cat("OPTION: 3")
    fm_all2 <- lm(log(cost/fuel) ~ log(output) +
                    I(log(output)^2) +
                    log(labor/fuel) +
                    log(capital/fuel), data = electricdata)
    summary(fm_all2)
  }

}
