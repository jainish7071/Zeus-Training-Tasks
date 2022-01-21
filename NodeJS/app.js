const express = require("express");
const con = require("./db_connect.js");
const app = express();

app.get("/", (req, res) => {
  res.status(200).send("this is starting of my first page using nodejs");
});

app.get("/users", async (req, res) => {
  con.query("SELECT * FROM customers", (err, result) => {
    if (err) console.log(err);
    else res.status(200).send(result);
  });
});

app.get("/user/:id", async (req, res) => {
  con.query("SELECT * FROM customers WHERE customer_id = ?", req.params.id, (err, result) => {
    if (err) console.log(err);
    else res.status(200).send(result);
  });
});

let port = process.env.HOST || 80;

app.listen(port, () => {
  console.log(`Succesfully connected to ${port}`);
});
