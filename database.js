import mysql from "mysql2";
import dotenv from "dotenv";
import fs from "fs";

dotenv.config();

const dbconn = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  port: 3306,
};
if (process.env.MYSQL_CERT) {
  dbconn.ssl = { cs: fs.readFileSync("DigiCertGlobalRootCA.crt.pem") };
}

const db = mysql.createConnection(dbconn);

export default db;
