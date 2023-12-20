const express = require('express');
const connection = require('./db');
const app = express();
const cors = require('cors');
const http = require('http');
const PORT = 4447;

// Configuración de CORS
const corsOptions = {
  origin: 'http://localhost:3000', // Reemplaza con el origen de tu aplicación NextJs
  methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
  credentials: true,
  optionsSuccessStatus: 200 // Algunos navegadores antiguos (IE11, varias versiones de UC Browser) no admiten cors preflight requests sin esta opción
};

// Express global config
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors(corsOptions));
app.use(require('./routes/index'));

const server = http.createServer(app);

server.listen(PORT, async () => {
  console.log('Server running in port', PORT);

  try {
    await connection.sync({ force: false });
  } catch (err) {
    console.log(err);
  }
});