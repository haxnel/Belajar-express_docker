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
docker run -v (pwd):/app -p 3000:3000 -d --name node-app node-app-image                                                                                                                                                   (main*) 20:17:18

#Menambahkan nodemon 
npm install nodemon --save-dev
