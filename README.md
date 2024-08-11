# Jenkins with Docker Container Practice

**Status:** Ongoing

## Tech Used:

- ExpressJS
- Typescript
- Docker
- Jenkins
- Make
- PM2

## How to run

1. <a href="https://docs.docker.com/engine/install">Install Docker</a>

2. Install Docker Compose

   - <a href="https://docs.docker.com/compose/install">For Windows</a>
   - <a href="https://docs.docker.com/compose/install/linux">For Linux</a>

**Note:** Make sure to install the "plugin" version for linux

3. Install "make" utility as we need it to run the docker compose commands

   - <a href="https://gnuwin32.sourceforge.net/packages/make.htm">For Windows</a>
   - For Linux, run this command `sudo apt-get update`

4. Add the environment file, and add the the necessary variable names, refer to config file for the required and optional variable names under `src/utils/config/index.ts`

   **Env file names**

   - `.env.prod` for production
   - `.env.dev` for development

5. Start up the container by running the command:
   - `make prod` for production
   - `make dev` for development

**Note:** In production, docker container will run in detach mode
