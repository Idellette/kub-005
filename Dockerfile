FROM  node:alpine As build

WORKDIR /app

COPY package.json . 

RUN npm install

COPY . .

VOLUME [ "/app/story" ]
ENV STORY_FOLDER=story

EXPOSE 3000 
CMD [ "node", "app.js"]