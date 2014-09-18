# Benchmark code for reading/writing data frames from/to HDF5 files using Julia's HDF5 & DataFrames package

# Loading the packages
using DataFrames, HDF5, JLD

# Reading CSV file
read_file = "analysis/benchmarks/data/2007.csv"
@elapsed dat = readtable(read_file, separator = ',')

# Writing the file to jld (Julia's HDF5 format)
jld_file = "analysis/benchmarks/data/air_data.jld"
@elapsed JLD.save(jld_file, "dat", dat)

# Restart Julia

# Loading the packages
using DataFrames, HDF5, JLD

# Reading back the data
jld_file = "analysis/benchmarks/data/air_data.jld"
@elapsed dat = JLD.load(jld_file)["dat"]
