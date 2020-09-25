## install packages
install.packages("jsonlite")
library("jsonlite")

## input data
star_wars <- fromJSON("data-raw/star_wars.json")

star_wars <- (setNames(star_wars[["links"]], c("Node1", "Node2", "Weight")))
star_wars <- subset(star_wars, Node1 != "0" & Node2 != "0")


## save as rda
save(star_wars, file = "data-host/star_wars.rda")
