# Benchmarks for reading/writing from/to rda (RData) files

# Writing
write_file <- "../data/air_2007.rda"
system.time(save(dat, file = write_file))


# Reading (After restarting)
system.time(load(file = write_file))
