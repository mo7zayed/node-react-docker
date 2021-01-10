# docker rm -f goals-app-database goals-app-backend goals-app-frontend &&
# docker rmi goals-app-backend-image goals-app-frontend-image # mongo node

# ## With networks only
# docker network rm goals-network &&

# docker volume prune

# With docker compose
docker-compose down --rmi all --remove-orphans -v