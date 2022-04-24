#'Plot histogram
#'
#'You can either use the electric data that comes with the package or generate your own
#'
#'@param x = cost numeric vector (could use package data electricdata$cost)
#'@keywords ctbarplot
#'@export
#'@examples
#'cthistgraph()

cthistgraph <- function(x){
  hist(x, breaks = 10,
       col = "orange",
       main = "Cost Function of Electricity Producers with Kernal Denisty plot",
       xlab = x)
}
