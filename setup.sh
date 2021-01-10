# cd ./backend && docker build -t goals-app-backend-image . &&
# cd .. &&
# cd ./frontend && docker build -t goals-app-frontend-image . &&
# cd .. &&

# ## Without networks
# # docker run -d --rm --name goals-app-database -p 27017:27017 mongo &&
# # docker run -d --rm --name goals-app-backend --add-host=host.docker.internal:host-gateway -p 5001:80 goals-app-backend-image &&
# # docker run -d --rm --name goals-app-frontend -p 5000:3000 -it goals-app-frontend-image

# ## With networks
# docker network create goals-network &&
# docker run -d --rm --name goals-app-database -v $(pwd)/database:/data/db --network goals-network mongo &&
# docker run -d --rm --name goals-app-backend -v $(pwd)/backend:/app -v $(pwd)/logs:/app/logs --network goals-network -p 5001:80 goals-app-backend-image &&
# docker run -d --rm --name goals-app-frontend -v $(pwd)/frontend/src:/app/src -p 5000:3000 -it goals-app-frontend-image

# With docker compose
docker-compose up -d