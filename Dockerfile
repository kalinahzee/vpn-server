FROM ubuntu:latest

RUN apt-get update && apt-get install -y wireguard iproute2 iputils-ping

COPY wg0.conf /etc/wireguard/wg0.conf

CMD ["wg-quick", "up", "wg0"]
