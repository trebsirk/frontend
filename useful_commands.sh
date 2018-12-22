docker build -f Dockerfile.dev -t frontend .
docker run -p 3000:3000 frontend
docker run -p 3000:3000 -v $(pwd):/app frontend
# -v /app/node_modules is a bookmark
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app frontend
docker run -it frontend npm run test
