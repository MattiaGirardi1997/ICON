## install packages
install.packages("data.table", "dplyr", "tibble")
library("data.table")
library("dplyr")
library("tibble")

## input data
HIV_transmission <- fread("data-raw/HIV_transmission.csv")

## nodes
source <- HIV_transmission %>%
  distinct(id1) %>%
  rename(label = id1)

destination <- HIV_transmission %>%
  distinct(id2) %>%
  rename(label = id2)

nodes <- full_join(source, destination)
nodes <- nodes %>% rowid_to_column("id")

## edges
count <- HIV_transmission %>%
  group_by(id1, id2) %>%
  summarise(weight = n()) %>%
  ungroup()

edges <- count %>%
  left_join(nodes, by = c("id1" = "label")) %>%
  rename(Node1 = id)%>%
  left_join(nodes, by = c("id2" = "label")) %>%
  rename(Node2 = id)

edges <- select(edges, Node1, Node2, weight)

## save as rda
save(edges, file = "data-host/HIV_transmission.rda")

