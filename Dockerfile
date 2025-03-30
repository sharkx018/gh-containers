FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.en6xb.mongodb.net
ENV MONGODB_USERNAME boygym293
ENV MONGODB_PASSWORD root123

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]