FROM debian:buster AS builder

RUN apt update
RUN apt install --assume-yes python3-all python3-pip dh-python dh-systemd debhelper
RUN python3 -m pip install stdeb
