Este proyecto utiliza Docker para contenerizar una aplicación Node.js que expone una API. A continuación se detallan las instrucciones para levantar el proyecto, una explicación de lo que hace y detalles sobre el archivo Dockerfile.

## Instrucciones para levantar la API

### Requisitos previos

- Tener **Docker** instalado en tu máquina. Puedes descargarlo e instalarlo desde [docker.com](https://www.docker.com/get-started).
- Tener **Git** instalado en tu máquina. Puedes descargarlo desde [git-scm.com](https://git-scm.com/).

### Pasos para levantar la API

1. **Clona el repositorio:**

   Si aún no has clonado el repositorio, puedes hacerlo ejecutando el siguiente comando en tu terminal:

   
## Explicación de cada paso del Dockerfile ##
FROM node:16
Utiliza la imagen oficial de Node.js versión 16 como la base para la construcción de la imagen Docker.

WORKDIR /app
Establece el directorio /app como el directorio de trabajo dentro del contenedor. Todos los comandos siguientes se ejecutarán en este directorio.

COPY package.json ./*
Copia los archivos package.json y package-lock.json dentro del contenedor para poder instalar las dependencias de la aplicación.

RUN npm install
Ejecuta el comando npm install dentro del contenedor para instalar las dependencias definidas en package.json.

COPY . .
Copia todo el código fuente de la aplicación (excepto los archivos y directorios ignorados por .dockerignore) al contenedor.

EXPOSE 3000
Expone el puerto 3000, el cual es utilizado por la API de la aplicación, para permitir el acceso desde fuera del contenedor.

CMD ["node", "index.js"]
Define el comando que se ejecutará cuando el contenedor se inicie, que en este caso es node index.js para iniciar la API.
