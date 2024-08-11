import express from "express";
import config, { isProduction } from "./utils/config";

const app = express();
const port = config.port;

app.get("/", (req, res) => {
  res.send("Hello Worlds!");
});

app.listen(port, () => {
  const nodeEnv = isProduction ? "production" : "development";

  console.log(
    `[server]: Server is running in ${nodeEnv} at http://localhost:${port}`
  );
});
