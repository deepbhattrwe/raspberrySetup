#!/bin/sh

# Define the new subnets
DOCKER_SUBNET="172.20.0.0/16"
ROUTER_SUBNET="192.168.178.0/24"

# Path to the Nginx configuration file
NGINX_CONF="/etc/nginx/nginx.conf"

# Update the Nginx configuration file
sed -i "s|set_real_ip_from 10.0.0.0/8;|set_real_ip_from $DOCKER_SUBNET;|" $NGINX_CONF
sed -i "s|set_real_ip_from 172.16.0.0/12;|set_real_ip_from $DOCKER_SUBNET;|" $NGINX_CONF
sed -i "s|set_real_ip_from 192.168.0.0/16;|set_real_ip_from $ROUTER_SUBNET;|" $NGINX_CONF

# Start Nginx
nginx -g "daemon off;"