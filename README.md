# Jenkins with Docker Container Practice

**Status:** Ongoing

## Tech Used:

- ExpressJS
- Typescript
- Docker
- Jenkins
- Make

## How to run

1. <a href="https://docs.docker.com/engine/install">Install Docker</a>

2. <a href="https://docs.docker.com/compose/install">Install Docker Compose</a>, for linux machine use the plugin version

3. Install "make" utility as we need it to run the docker compose commands

   - <a href="https://gnuwin32.sourceforge.net/packages/make.htm">For Windows</a>
   - For Linux `sudo apt-get update`

4. Add the environment files, and add there the necessary variable names, refer to config file for the required and optional variable names under src/utils/config/index.ts

   **Env file names**

   - `.env.prod` for production
   - `.env.dev` for development

5. Run the environment
   - `make prod` for production
   - `make dev` for development
     **Note:** production docker container will run on detach mode
