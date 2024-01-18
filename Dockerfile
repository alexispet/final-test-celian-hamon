FROM node as build

COPY . /app

WORKDIR /app

EXPOSE ${PORT}

FROM build as runner

RUN npm install

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

CMD ["npm","run", "start"]