export GDAL_TIFF_OVR_BLOCKSIZE=256

gdal_translate -of Gtiff \
-co BLOCKXSIZE=256 -co BLOCKYSIZE=256 -co COMPRESS=LZW \
-a_ullr 0 5000000 10000000 0 \
-a_srs EPSG:3857 $1 $2

# Run as ./makegeotif.sh <input.tif> <output.tif>
