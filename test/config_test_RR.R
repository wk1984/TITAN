conf<-list(
           verbose=T,
           debug=T,
           debug.dir="/home/cristianl/scratch/RR",
           #
           spatconv=T,
           variable="RR",
           # use of geographical info
           dem.fill=T,
           dem.file="/home/cristianl/data/titan/meps_gmted2010_1km_topo_topdown.nc",
           dem.varname="altitude",
           proj4dem="+proj=lcc +lat_0=63 +lon_0=15 +lat_1=63 +lat_2=63 +no_defs +R=6.371e+06",
           # precipitation (in-situ) and temperature (field) cross-check
           ccrrt=T,
           t2m.file="/home/cristianl/data/titan_day/seNorge_v2_0_TEMP1d_grid_20180511.nc",
           t2m.varname="mean_temperature",
           t2m.ndim=3,
           t2m.tpos=3,
           t2m.dimnames=c("X","Y","time"),
           proj4t2m="+proj=utm +zone=33 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0",
           t2m.demfile="/home/cristianl/data/geoinfo/seNorge2_dem_UTM33.nc",
           t2m.demvarname="elevation",
           t2m.demndim=2,
           t2m.demtpos=NULL,
           t2m.demepos=NULL,
           t2m.demdimnames=c("easting","northing"),
           # correction for the wind-undercatch of precipitation
           rr.wcor=T,
           wind.file="/home/cristianl/data/titan_day/MEPSpp_FFMRR-MEPS_lcc_20180511.nc",
           windspeed.varname="windspeed_10m",
           wind.ndim=3,
           wind.tpos=3,
           wind.dimnames=c("x","y","time"),
           # fg (radar)
#           fg=T,
#           fg.file="/home/cristianl/data/titan/norway.mos.sri-acrr-1h.noclass-clfilter-vpr-clcorr-block.utm33-1000.20180403.nc",
#           fg.type="radar",
#           thrpos.fg=100,
#           thrneg.fg=.1,
           # fge (MEPS)
#           fge=T,
#           fge.file="/home/cristianl/data/titan/meps_2_5km_20180403T12Z_test.nc",
#           fge.type="meps",
#           sdmin.fge=0.2,
#           iqrmin.fge=0.2,
#           csd.fge=2,
#           infsd.fge=3,
#           ciqr.fge=2,
#           infiqr.fge=3,
           # buddy-check
           i.buddy=3,
           dr.buddy=3000, #m
           thr.buddy=3,
           n.buddy=5,
           dz.buddy=2500, #m
           # steve
           steve=T,
           i.steve=3, 
           thres.steve=c(.1,1),
           pmax_lt.steve=c(20,20),
           dmax_lt.steve=c(150000,150000),
           n_lt.steve=c(4,2),
           frac_lt.steve=c(0.3,0.2),
           dmin_next_lt.steve=c(150000,150000),
           pmax_ge.steve=c(20,20),
           dmax_ge.steve=c(150000,150000),
           n_ge.steve=c(4,2),
           frac_ge.steve=c(0.3,0.2),
           dmin_next_ge.steve=c(100000,100000),
           # puddle-check
           titan_path="/home/cristianl/projects/TITAN",
           puddle=T,
           i.puddle=3,
           dobs_k.puddle=5,
           Dh_min.puddle=25,
           thres.puddle=c(0.1,1),
           eps2.puddle=0.1,
           n_lt.puddle=c(5,2),
           n_ge.puddle=c(5,2),
#           n_lt.puddle=c(400,25),
#           n_ge.puddle=c(400,25),
           # SCT
           i.sct=3,
           n.sct=50,
           dz.sct=1,
           DhorMin.sct=5000, #m
           Dver.sct=200000, #m
           eps2.sct=0.1,
           thr.sct=16,
           fast.sct=F,
           min.corep=0.5,
           mean.corep=1,
           max.corep=2,
           # dem
           dem=T,
           dz.dem=2000, #m
           # radarout
#           radarout=T,
#           radarout.prid=100,
#           radarout.aggfact=3,
           # isolation test
           dr.isol=250000,
           n.isol=3,
           # plausibility
           vmin=0,  #mm/h
           vmax=400 #mm/h
)
