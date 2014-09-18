# Benchmark code for reading/writing data frames from/to HDF5 files using rhdf5 package

# Load the data set from CSV file
data_path <- "../data/2007.csv"
system.time(dat <- read.csv(data_path))

# Load the package
require(rhdf5)

# Write time
h5_file <- "../data/air_2007_2.h5"
h5createFile(h5_file)
system.time(h5write(dat, h5_file, "dat", level = 0))

# Restart R

# Load the package
require(rhdf5)
system.time(air_h5 <- h5read(h5_file,"dat"))
