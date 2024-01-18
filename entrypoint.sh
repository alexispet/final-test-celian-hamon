#!/bin/bash

if [ $NODE_ENV == "development" ]
then
    echo "Installing modules"
    npm install
fi

npm run db:import 

exec "$@"
