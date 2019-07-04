# test1

Set of notebooks for testing with https://gke.mybinder.org/

based on repo2docker


Install more stuff while working:
File / New / Terminal

conda install netCDF4


https://www.unidata.ucar.edu/software/netcdf/examples/sresa1b_ncar_ccsm3-example.nc

ts = ds[['pr', 'tas']].sel(lon=slice(170,171)).squeeze(drop=True).to_dataframe()
ts.plot()
ts.head()
