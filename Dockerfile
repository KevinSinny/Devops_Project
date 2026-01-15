FROM node:20

WORKDIR /my-app

# Copy app folder instead of root
COPY myapp/package*.json ./myapp/

WORKDIR /my-app/myapp

RUN npm install

COPY myapp .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]
