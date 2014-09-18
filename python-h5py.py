# Benchmark code for reading/writing data frames from/to HDF5 files using the h5py and DataFrames packages

# Read the CSV file
data_path = "analysis/benchmarks/data/2007.csv"

tic = tt.time()
dat = pd.read_csv(data_path)
toc = tt.time()

# Time taken
print toc - tic


# Load the packages
import pandas as pd
import h5py as h5
import time as tt

# Creat the file
h5_file = "air_py.h5"
tic = tt.time()
h5_obj = pd.HDFStore(h5_file)
toc = tt.time()

# Time taken
print toc - tic


# Write the data to the file ...
tic = tt.time()
h5_obj['dat'] = dat
h5_obj.close()
toc = tt.time()
print toc - tic

# Restart Python

import pandas as pd
import h5py as h5
import time as tt

# Read back the data

# Preparing the file ...
h5_file = "../data/air_py.h5"
tic = tt.time()
h5_obj = pd.HDFStore(h5_file)
toc = tt.time()

print toc - tic

# Writing the data
tic = tt.time()
dat = h5_obj['dat']
toc = tt.time()

print toc - tic

