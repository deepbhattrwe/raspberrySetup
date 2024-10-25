To run all the swarm nodes/ containers
# Docker compose
docker compose -f actualBudget/docker-compose.yml up -d
docker compose -f bitwarden/docker-compose.yml up -d
docker compose -f monitoring_pi/docker-compose.yml up -d
docker compose -f nginx/docker-compose.yml up -d
docker compose -f zigbeehub/docker-compose.yml up -d

# Docker stack
docker stack deploy -c portainer-stack.yml portainer
docker stack deploy -c owncloud/docker-compose.yml owncloud
docker stack deploy -c pihole_vpn/pihole_vpn-compose.yml pihole_vpn

To Stop all containers:
docker compose -f actualBudget/docker-compose.yml down
docker compose -f bitwarden/docker-compose.yml down
docker compose -f monitoring_pi/docker-compose.yml down
docker compose -f nginx/docker-compose.yml down
docker compose -f zigbeehub/docker-compose.yml down

To stop stacks:
docker stack rm portainer
docker stack rm owncloud
docker stack rm pihole_vpn