# read in data, only care about first two columns
con <- file("data-raw/ppi_thaliana.txt", "r")
NUM_OBS <- 23410
ppi_thaliana <- data.frame(Protein1 = character(NUM_OBS),
                         Protein2 = character(NUM_OBS),
                         stringsAsFactors = FALSE)
readLines(con, n = 1)  # skip header line
line_counter <- 1
while (TRUE) {
  curr_line <- readLines(con, n = 1)
  if (length(curr_line) == 0) break

  curr_split <- strsplit(x = curr_line,
                         split = "\\s")[[1]]

  ppi_thaliana$Protein1[line_counter] <- curr_split[1]
  ppi_thaliana$Protein2[line_counter] <- curr_split[2]
  line_counter <- line_counter + 1
}
close(con)

# save as rda
save(ppi_thaliana, file = "data-host/ppi_thaliana.rda")
