#!/bin/sh
mvn clean package && docker build -t fr.grin/BelcaidTP2 .
docker rm -f BelcaidTP2 || true && docker run -d -p 9080:9080 -p 9443:9443 --name BelcaidTP2 fr.grin/BelcaidTP2