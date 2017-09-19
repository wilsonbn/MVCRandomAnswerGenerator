docker build -t mvcrandomanswers .

docker images
docker stop randomanswers
docker rm randomanswers
docker run -d -p 8000:8000 --name randomanswers mvcrandomanswers
"http://$(docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" randomanswers):8000"

