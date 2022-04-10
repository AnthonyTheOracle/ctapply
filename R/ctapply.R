#'Standard Central Tendency function
#'
#'This function can be used to get the measure of central tendency and spread for a numeric vector x
#'
#'@param x numeric vector
#'@param np logical TRUE/FALSE:  The user has a choice to which measure to calculate
#'@param print logical TRUE/FALSE: The user has a choice to print the result
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


ctapply <- function(x,np=TRUE,print=TRUE){
  if(!np){
    center <- mean(x);
    sd <- sd(x)
  }else{
    center <- median(x)
    spread <- mad(x)
  }
  if (print & !np){
    cat("Mean= ",center,"\n","SD= ",spread,"\n")
  }else if (print & np){
    cat("Median= ", center,"\n","MAD= ",spread,"\n")
  }
  result <-list(center=center, spread=spread)
  return(result)
}
