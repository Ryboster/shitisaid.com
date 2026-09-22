
apt install jq



FRONTEND_PORT= $(jq -r '.FRONTEND.EXPOSE_PORT' config.json)
BACKEND_PORT= $(jq -r '.BACKEND.EXPOSE_PORT' config.json)
DATABASE_PORT= $(jq -r '.DATABASE.EXPOSE_PORT' config.json)


sed -i "s/EXPOSE [0-9]*/EXPOSE ${FRONTEND_PORT}/" frontend/Dockerfile
sed -i "s/\"0.0.0.0:[0-9]*\"/\"0.0.0.0:${FRONTEND_PORT}\"/" frontend/Dockerfile


sed -i "s/EXPOSE [0-9]*/EXPOSE ${BACKEND_PORT}/" database/Dockerfile
sed -i "s/EXPOSE [0-9]*/EXPOSE ${DATABASE_PORT}/" backend/Dockerfile





docker build -t shitisaid:frontend frontend/.
docker build -t shitisaid:database database/.
docker build -t shitisaid:backend backend/.