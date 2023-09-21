import mysql from "mysql2";
import dotenv from "dotenv/config";
import fs from "fs";

const dbconn = {
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
  port: 3306,
};
if (process.env.MYSQL_CERT) {
  dbconn.ssl = { ca: fs.readFileSync("DigiCertGlobalRootCA.crt.pem") };
}

const db = mysql.createConnection(dbconn);

export default db;
