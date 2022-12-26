import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize({
  username: config.username,
  password: config.password,
  database: config.database,
  host: config.host,
  
  dialect: "postgres",
  storage: ":memory:",
});
//export const sequelize = new Sequelize(`postgres://${config.username}:${config.password}@example.co${config.host}:${config.port}/${config.database}`);