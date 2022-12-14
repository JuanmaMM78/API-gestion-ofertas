const mysql = require("mysql2");

const pool = mysql.createPool({
  host: process.env.DB_HOST || "sql7.freemysqlhosting.net",
  user: process.env.DB_USER || "sql7584593",
  password: process.env.DB_PASSWORD || "VtSg1PsJJD",
  port: process.env.DB_PORT || 3306,
  database: process.env.DB_NAME || "sql7584593",
});

global.db = pool;
