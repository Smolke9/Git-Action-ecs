const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Dockerized Node.js App 🚀");
});

module.exports = app;
