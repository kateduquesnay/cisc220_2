#!/bin/bash

#Assignment 2
#Sarah Carter 10193595
#Adele McCallum 10093867
#Dean Wilkins-Reeves 19176758
#Katherine DuQuesnay 10138898
#git clone https://github.com/kateduquesnay/cisc220_2.git cisc220_2

#get rid of previous rules
sudo iptables -F
sudo iptables -X
sudo iptables -t nat -F
sudo iptables -t nat -X
sudo iptables -t mangle -F
sudo iptables -t mangle -X
sudo iptables -P INPUT ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD ACCEPT

#enable SSH from 130.15.0.0-130.15.225.225 and from computers in private networks
sudo iptables -A INPUT -p TCP --dport 22 -s 130.15.0.0/16 -j ACCEPT
sudo iptables -A INPUT -p TCP --dport 22 -m iprange --src-range 10.0.0.0-10.255.255.255 -j ACCEPT
sudo iptables -A INPUT -p TCP --dport 22 -m iprange --src-range 172.16.0.0-172.31.255.255 -j ACCEPT
sudo iptables -A INPUT -p TCP --dport 22 -m iprange --src-range 192.168.0.0-192.168.255.255 -j ACCEPT

#allow all hhtp/https traffic
sudo iptables -A INPUT -p TCP --dport 80 -j ACCEPT
sudo iptables -A INPUT -p TCP --dport 443 -j ACCEPT

#allow 130.15.100.100 to connect to mysql (port 3306)
sudo iptables -A INPUT -p TCP --dport 3306 -s 130.15.100.100 -j ACCEPT

#drop all other incoming TCP traffic (also disallows all incoming traffic to mysql port from other IPs)
sudo iptables -A INPUT -p TCP -j DROP

#allow connecting to 130.15.0.0, block all other IPs
sudo iptables -A OUTPUT \! --src 130.15.0.0/16 -j DROP

#drop outgoing ssh traffic to all other computers
sudo iptables -A OUTPUT -p TCP --sport 22 -j DROP
