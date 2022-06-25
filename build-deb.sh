CONTAINER_NAME="simple-pid-build-env"
OUT_FOLDER="./dist"

#Remove the container if exist (might not be deleted last time)
docker rm -f $CONTAINER_NAME

#Start a temp container for building debian files
docker run -d --name $CONTAINER_NAME -it pywifi-build-env
docker exec $CONTAINER_NAME mkdir app

CP_DIST="$CONTAINER_NAME:/app"

#Copy source files
docker cp . $CP_DIST

#Build deb itself
docker exec -it $CONTAINER_NAME bash -c "cd /app ; python3 setup.py --command-packages=stdeb.command bdist_deb"

#Copy output files from container
docker cp $CONTAINER_NAME:/app/deb_dist $OUT_FOLDER

#Remove the container
docker rm -f $CONTAINER_NAME
