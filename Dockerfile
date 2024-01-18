FROM node as build

COPY . /app

WORKDIR /app

EXPOSE ${PORT}

RUN npm install

FROM build as runner

COPY --from=build /app/node_modules /app/
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

RUN npm run db:import 
CMD ["npm","run", "start"]