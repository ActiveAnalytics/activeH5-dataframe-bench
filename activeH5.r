# Benchmark code for reading/writing data frames from/to HDF5 files using activeH5 package

# Load the data set from CSV file
data_path <- "../data/2007.csv"
system.time(dat <- read.csv(data_path))

# Load the activeH5 package
require(activeH5)

# Prepare the file
system.time(h5DAT <- newH5DF(dat, filePath = h5_file))
# Write time
system.time(h5DAT <- newH5DF(dat, filePath = h5_file))

# Restart R
require(activeH5)

# Read back the data
h5_file <- "../data/air_2007.h5"
system.time(h5_dat <- openH5DF(h5_file))
system.time(air_h5 <- h5_dat$readTable())
