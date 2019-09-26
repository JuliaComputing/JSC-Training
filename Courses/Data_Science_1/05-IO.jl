import RDatasets

df = RDatasets.dataset("datasets", "iris")

df

# Write to a CSV file:
using CSV

CSV.write("iris.csv", df)

CSV.read("iris.csv")

df = RDatasets.dataset("datasets", "airquality")

CSV.write("airquality.csv", df)
CSV.read("airquality.csv")

# Write to a HDF5 file:
using HDF5

A = rand(500, 500)

h5write("test.h5", "data/A", A)

h5read("test.h5", "data/A")
