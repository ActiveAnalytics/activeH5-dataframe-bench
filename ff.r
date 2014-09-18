# Benchmark code for reading/writing data frames from/to file using ff package

# Load the data set from CSV file
data_path <- "../data/2007.csv"
system.time(dat <- read.csv(data_path))

# Load the ff package
require(ff)

ff_file <-"../data/air_ff"
system.time(ffsave(dat_ff, file = ff_file,
    compression_level = 0))

# Restart R

require(ff)
ff_file <-"../data/air_ff"
system.time(ffload(file = ff_file))

# Read back to data frame
system.time(dat <- dat_ff[,])
