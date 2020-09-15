## input data
intra_organizational <- fread("data-raw/intra_organizational.txt", col.names = c("Node", "Node2", "Weight"))

## save as rda
save(intra_organizational, file = "data-host/intra_organizational.rda")
