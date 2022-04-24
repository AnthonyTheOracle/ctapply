#'Plot bar graph
#'
#'You can either use the electric data that comes with the package or generate your own
#'
#'@param x=cost numeric vector (could use package data electricdata$cost)
#'@keywords ctbarplot
#'@export
#'@examples
#'ctbarplot()


ctbarplot <- function(x){
  barplot(x,
          main = 'Cost Function of Electricity Producers (1955)',
          xlab = 'Cost of fuel',
          horiz = TRUE)

}
