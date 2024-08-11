<img src="/src/assets/images/banner.png" style="background-color:white;"/>

# Jenkins with Docker Container Practice

**Status:** Ongoing

## Tech Used

- ExpressJS
- TypeScript
- Docker
- Jenkins
- Make
- PM2

## How to Run

1. <a href="https://docs.docker.com/engine/install">Install Docker</a>.

2. Install Docker Compose:

   - <a href="https://docs.docker.com/compose/install">For Windows</a>
   - <a href="https://docs.docker.com/compose/install/linux">For Linux</a>

   **Note:** For Linux, make sure to follow the instructions for installing the "plugin" version.

3. Install the "make" utility, which is needed to run Docker Compose commands:

   - <a href="https://gnuwin32.sourceforge.net/packages/make.htm">For Windows</a>
   - For Linux, run the command: `sudo apt-get install make`

4. Add the environment files and include the necessary variable names. Refer to the config file for required and optional variable names under `src/utils/config/index.ts`.

   **Env File Names**

   - `.env.prod` for production
   - `.env.dev` for development

5. Start up the container by running the command:

   - `make prod` for production
   - `make dev` for development

   **Note:** In production, the Docker container will run in detached mode.
