const express = require("express");
const app = express();
const port = 3000;

app.get("/", (_, res) => {
  res.status(200).type("text/html").send("<h1>🚀 Evolution API está funcionando correctamente</h1>");
});

app.listen(port, "0.0.0.0", () => {
  console.log(`Servidor escuchando en http://0.0.0.0:${port}`);
});
