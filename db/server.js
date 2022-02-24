const express = require("express");
require("dotenv").config();
const app = express();
const port = 3001;

app.use(express.json());
app.use(function (_req, res, next) {
  res.setHeader("Access-Control-Allow-Origin", "http://localhost:3000");
  res.setHeader("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE,OPTIONS");
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Content-Type, Access-Control-Allow-Headers"
  );
  next();
});

const Pool = require("pg").Pool;
const pool = new Pool({
  user: process.env.OWNER,
  host: process.env.HOST,
  database: process.env.DATABASE,
  password: process.env.PASSWORD,
  port: 5432,
});

app.get("/", (req, res) => {
  pool.query("SELECT * FROM nuggets_of_wisdom;").then((response) => {
    res.send(response);
  });
});

app.listen(port, () => {
  console.log(`App running on port ${port}.`);
});
