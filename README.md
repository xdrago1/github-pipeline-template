## Github Actions CI/CD Pipeline Template using multiple Docker-Compose files and traefik as reverse-proxy

## Overview
Angular App
- [x] Angular 16 App using Server-Side-Rendering with docker-compose.yml and NGINX as provider in _./angular-app_
- [x] Traefik with docker-compose.yml in _./traefik_

## Usage

### Prerequisites
- [x] Docker
- [x] Docker-Compose
- [x] Remote Machine with Docker Environment where github actions can deploy to
- [x] Github Account

### Where you have to make changes
- [ ] Change variables in ./workflow/deployment-pipe.yml
- [ ] Change Domain name in ./angular-app/docker.compose.yml in "labels" on the nginx service

### Before you start
- [ ] Create the shared Docker Network for all services with `docker network create traefik_proxy` on the machine where you want to run the application.

### Start Deploying
- Push to main branch to trigger the Pipeline
- The Workflow will test, build and deploy the application to the remote machine
- After completing the deployment, the application will be available under the domain you specified.
- The final step is a small test where the application and API is called and the response is checked for a positive http response code to make sure the deployment was successful# github-pipeline-template
