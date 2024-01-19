#!/bin/bash

if [ $NODE_ENV == "development" ]
then
    echo "Installing modules"
    npm install
    npm install -g lighthouse
fi

npm run db:import 

exec "$@"
