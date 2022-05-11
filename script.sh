#install package.json
npm init -y

#install express via npm
npm install express

#Buat container
docker build -t node-app-image .

#jalankan container
docker run -p 3000:3000 -d --name node-app node-app-image

