#Docker SKF
This project provides a Docker image for the 
[OWASP Security Knowledge Framework](https://github.com/blabla1337/skf-flask)

##Usage
```
git clone https://github.com/dpnl87/docker-skf.git
cd docker-skf
docker build -t dpnl87/skf .
docker run -p 5443:5443 -it dpnl87/skf
open https://<Docker_host>:5443
```
