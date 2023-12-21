# Utiliza una imagen base de Node.js
FROM node:20.9.0-alpine3.17

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de tu aplicación al contenedor
COPY . .

# Instala las dependencias de la aplicación
RUN npm install

# Expone el puerto en el que se ejecutará tu aplicación
EXPOSE 4447

# Comando para iniciar la aplicación
CMD ["npm", "run","start:dev"]
