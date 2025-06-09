const express = require("express");
const app = express();
const port = 3000;

app.get("/", (_, res) => {
  res.send("🚀 Evolution API está funcionando correctamente");
});

app.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});
// Inicio del servidor Evolution API (simulado)
