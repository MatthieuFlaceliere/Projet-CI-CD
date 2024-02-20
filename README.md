[![Github action for CI/CD](https://github.com/MatthieuFlaceliere/Projet-CI-CD/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/MatthieuFlaceliere/Projet-CI-CD/actions/workflows/main.yml)
# Projet CI/CD Yohann DUBOEUF/Matthieu FLACELIERE

## Description

This project is the best Web Application ever. ![Icon](./asset/logo.ico)

## Configuration

### Environment variables

- `PORT`: The port on which the server will listen. Default: `3000`

See `.env.example` for an example.

## Usage

```sh
npm run start
```

## CI

This project uses GitHub Actions for CI. The workflow is defined in `.github/workflows/main.yml`. It runs the following steps:
- Lint of js files with eslint.
- Lint Dockerfile with hadolint.
- Build and test the Docker image.

## CD

This project uses GitHub Actions for CD. The workflow is defined in `.github/workflows/main.yml`. It runs the following steps:
- Connect to Docker Hub.
- Build and push the Docker image to [registery](https://hub.docker.com/repositories/mflaceliere)

`projet-ci-cd:latest` Tag is used for the last commit on the main branch. \
`projet-ci-cd:x.x.x` Tag is used when tag is pushed on the main branch. Tag partern is : [0-9]+.[0-9]+.[0-9]

