FROM ubuntu:16.04
MAINTAINER Ashwin Rayaprolu

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install byobu curl git htop man unzip vim wget

# Install InetUtils for Ping/traceroute/ifconfig
RUN apt-get update
# For Ifconfig and other commands
RUN apt-get install -y net-tools
# For ping command
RUN apt-get install -y iputils-ping 
# For Traceroute
RUN apt-get install -y inetutils-traceroute