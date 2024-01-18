FROM node as build

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE ${PORT}

FROM build as runner

COPY node_modules /app/node_modules
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

CMD ["npm","run", "start"]