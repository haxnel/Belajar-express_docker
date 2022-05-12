#install package.json
npm init -y

#install express via npm
npm install express

#Buat container
docker build -t node-app-image .

#jalankan container
docker run -p 3000:3000 -d --name node-app node-app-image

#Masuk ke bash container
docker exec -it node-app bash

#Cara mengambil file
docker run -v (pwd):/app -p 3000:3000 -d --name node-app node-app-image

#Menambahkan nodemon 
npm install nodemon --save-dev

#Coba env menggunakan port berbeda 
docker run -v (pwd):/app:ro -v /app/node_modules --env PORT=4000 -p 3000:4000 -d --name node-app node-app-image

#Membuat docker compose
docker-compose up -d

#Shutdown docker-compose dan hapus data anynomous
docker-compose down -v

#membuat build baru dari docker compose
docker-compose up -d --build

#up docker compose dev
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

#up docker compose prod
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

#up docker compose prod (update)
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build