const express = require("express");

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.json({
    application: "E-Commerce Application",
    environment: process.env.ENVIRONMENT || "development",
    version: process.env.APP_VERSION || "1.0.0",
    status: "running"
  });
});

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "healthy"
  });
});

app.listen(PORT, "0.0.0.0", () => {
  console.log("E-Commerce application running on port " + PORT);
});
