import mysql from "mysql2";
import dotenv from "dotenv";
import fs from "fs";

dotenv.config();

const dbconn = {
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
  port:process.env.MYSQL_PORT,
};
if (process.env.MYSQL_CERT) {
  dbconn.ssl = { cs: fs.readFileSync("DigiCertGlobalRootCA.crt.pem") };
}

const db = mysql.createConnection(dbconn);

export default db;
