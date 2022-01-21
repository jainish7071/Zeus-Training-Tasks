const mysql = require("mysql");

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Ja@123456789",
  database: "sql_store",
});
con.connect((err) => {
  if (err) console.log(err);
});

module.exports = con;
