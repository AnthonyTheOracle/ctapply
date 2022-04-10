
install.packages(pkgs = "C:\\USF\\SPRING2022\\R-PROGRAMMING\\ctapply_0.0.0.9000.tar.gz", repos = NULL, type = "source")
library(ctapply)

data(package="ctapply")
data("electricdata")
head(electricdata)

?ctapply

ctapply(electricdata$fuel)
