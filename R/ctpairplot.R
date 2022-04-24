#'Plot scattere pair graph
#'
#'You can either use the electric data that comes with the package or generate your own
#'
#'@param x= electricdata data frame
#'@keywords ctpairplot
#'@export
#'@examples
#'ctpairplot()

ctpairplot <- function(x){
  pairs(x,
        main = "Scatter plot matrix for fuelshare dataset")
}





