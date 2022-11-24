FROM node:16

WORKDIR /app

RUN apt update && \
    apt install -y wget netcat && \
    wget -q -O /usr/bin/wait-for https://raw.githubusercontent.com/eficode/wait-for/v2.2.3/wait-for && \
    chmod +x /usr/bin/wait-for

COPY . .

RUN chmod +x /app/start.sh

RUN npm install -g sails@1.4.2

EXPOSE 1337
