FROM node:20

WORKDIR /app

# Copy only package files first
COPY myapp/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the React app
COPY myapp .

# Build the React app
RUN npm run build

# Install serve to run production build
RUN npm install -g serve

EXPOSE 5173

CMD ["serve", "-s", "dist", "-l", "5173"]
FROM node:20

WORKDIR /app

# Copy only package files first
COPY myapp/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the React app
COPY myapp .

# Build the React app
RUN npm run build

# Install serve to run production build
RUN npm install -g serve

EXPOSE 5173

CMD ["serve", "-s", "dist", "-l", "5173"]
