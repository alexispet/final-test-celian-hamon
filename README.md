[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/OlYrOqbl)

# Y Social network API

[![CI](https://github.com/alexispet/final-test-celian-hamon/actions/workflows/action.yml/badge.svg)](https://github.com/alexispet/final-test-celian-hamon/actions/workflows/action.yml)

## LE WATCH TOWER EST INSTALLÉ SUR LE SERVEUR AWS

Production URL: https://ec2-54-224-95-216.compute-1.amazonaws.com/
Development URL: http://ec2-54-224-95-216.compute-1.amazonaws.com:81/
impossible de set un sous domaine sur le serveur aws

## Description

This is the official API for the Y Social Network.
It's built with Node.js, Express.js, MariaDB.

## Requirements

| Requirement | Version |
| ----------- | ------- |
| Node.js     | 21.5.0  |
| MariaDB     | 11.2.2  |

## Installation

1. Clone the repository
2. Install the dependencies
3. Import database structure and default content with `npm run db:import`
4. Run the server with `npm run start`
5. API is now available at `http://localhost:3000`

## API Documentation

| Method | Endpoint | Description   |
| ------ | -------- | ------------- |
| GET    | /post    | Get all posts |

## Testing

Run `npm run test` to run the integration tests.

> Note: You need to have the database imported before running the tests.
