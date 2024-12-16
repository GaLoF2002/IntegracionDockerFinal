# Usa una imagen base de Node.js
FROM node:16

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY package*.json ./
COPY index.js ./

# Instala las dependencias
RUN npm install

# Expone el puerto 3000
EXPOSE 3000

# Comando para ejecutar el microservicio
CMD ["node", "index.js"]
