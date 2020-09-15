## input data
HIV_transmission <- fread("data-raw/HIV_transmission.csv")

## nodes 
source <- HIV %>%
  distinct(id1) %>%
  rename(label = id1)

destination <- HIV %>%
  distinct(id2) %>%
  rename(label = id2)

nodes <- full_join(source, destination)
nodes <- nodes %>% rowid_to_column("id")

## edges 
count <- HIV %>%  
  group_by(id1, id2) %>%
  summarise(weight = n()) %>%
  ungroup()

edges <- count %>% 
  left_join(nodes, by = c("id1" = "label")) %>% 
  rename(from = id)%>% 
  left_join(nodes, by = c("id2" = "label")) %>% 
  rename(to = id)

edges <- select(edges, from, to, weight)

## save as rda
save(HIV_transmission, file = "data-host/HIV_transmission.rda")

