@echo off
call mvn clean package
call docker build -t fr.grin/BelcaidTP2 .
call docker rm -f BelcaidTP2
call docker run -d -p 9080:9080 -p 9443:9443 --name BelcaidTP2 fr.grin/BelcaidTP2