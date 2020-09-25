## install packages
install.packages("data.table")
library("data.table")

## input data
UC_irvine_students <- fread("data-raw/UC_irvine_students.txt")
UC_irvine_students <- setNames(UC_irvine_students, c("Node1", "Node2", "Weight"))

## save as .rda file
save(UC_irvine_students, file = "data-host/UC_irvine_students.rda")
