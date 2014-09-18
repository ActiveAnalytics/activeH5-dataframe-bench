activeH5-dataframe-bench
========================

Benchmarks comparing the write/read speed to/from file using the activeH5 package against other similar tools

This is a set of scripts that present the code for the activeH5 benchmarks for reading and writing data frames (tables) from and to disk. The blog for this is located here: <http://active-analytics.com/blog/activeH5-dataframe-benchmarks/> and the benchmarks were run on an computer with an Intel Core i7-3820QM CPU @2.7GHz with 32GB of RAM, a Segate ATA ST9500423AS 500GB hard drive. We used the Ubuntu 14.04 operating system with R version 3.1.1, activeH5 version 0.0.1, ff package version 2.2-13, and rhdf5 version 2.8.0. Julia version 0.3.0 was used, and the DataFrames package version 0.5.7, and HDF5 package version 0.4.0. Python version 2.7.6 was used and pandas version 0.13.1, h5py version 2.2.1, numpy version 1.8.1, and scipy 0.13.3 was installed.
