docker build -t electric-muyu:v1.0.0 .

#tag name
docker tag electric-muyu:v1.0.0 liuzy/electric-muyu:latest

# push to docker hub
docker push liuzy/electric-muyu:latest

# clean docker images
# shellcheck disable=SC2006
imagesId=`docker images | grep electric-muyu | awk '{print $3}'`
echo $imagesId
for str in $imagesId
do
  docker rmi $str -f
done