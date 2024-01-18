#!/bin/bash

if [$NODE_ENV != "production"]; then
    npm install
fi

npm run db:import 

exec "$@"
