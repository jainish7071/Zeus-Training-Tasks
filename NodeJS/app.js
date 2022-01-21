const express = require("express");
const sessions = require("express-session");
const cookieParser = require("cookie-parser");
const con = require("./db_connect.js");
const app = express();
app.use(express.json());
app.use(
  sessions({
    secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
    saveUninitialized: true,
    cookie: { maxAge: 1000 * 60 * 60 * 24 },
    resave: false,
  })
);
app.use(cookieParser());
app.get("/", (req, res) => {
  if (req.session.username && req.cookies["username"]) {
    return res.status(200).send(req.session.username + " " + req.cookies["username"]);
  } else if (req.cookies["username"]) {
    return res.status(200).send(req.cookies["username"]);
  }
  res.status(200).send("this is starting of my first page using nodejs");
});

app.get("/users", (req, res) => {
  con.query("SELECT * FROM customers", (err, result, fields) => {
    if (err) console.log(err);
    else res.status(200).send(result);
  });
});
app.get("/user/:id", (req, res) => {
  con.query("SELECT * FROM customers WHERE customer_id = ?", req.params.id, (err, result) => {
    if (err) console.log(err);
    else {
      req.session.username = result[0].first_name;
      res.cookie("username", result[0].last_name);
      res.status(200).send(result);
    }
  });
});
app.post("/user/:id", (req, res) => {
  con.query(`UPDATE customers SET ? WHERE customer_id = ${req.params.id}`, req.body, (err, result) => {
    if (err) console.log(err);
    else res.status(200).send(result);
  });
});
app.get("/logout", (req, res) => {
  req.session.destroy();
  res.cookie("username", "", { maxAge: -1000 });
  res.redirect("/");
});

let port = process.env.HOST || 80;

app.listen(port, () => {
  console.log(`Succesfully connected to ${port}`);
});
