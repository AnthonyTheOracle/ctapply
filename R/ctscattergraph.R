#'Plot histogram
#'
#'You may use the electric data that comes with the package
#'
#'@param x = cost numeric vector (could use package data electricdata$cost)
#'@param y = fuel numeric vector (could use package data electricdata$fuel)
#'@keywords ctscattergraph
#'@export
#'@examples
#'ctscattergraph()

ctscattergraph <- function(x,y){
  plot(x,
       y,
       main = "Scatter plot of Cost vs Fuel",
       xlab = "Cost",
       ylab = "fuel")
  abline(lm(x ~ y),
         col = "blue",
         lwd = 2)
}
