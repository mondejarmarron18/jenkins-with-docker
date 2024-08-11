import "dotenv/config";

// Get env variables
const _ = (key: string) => {
  return process.env[key];
};

// Check NODE_ENV
export const isProduction = _("NODE_ENV") === "production";

const config = {
  port: _("PORT"),
};

export default config;
