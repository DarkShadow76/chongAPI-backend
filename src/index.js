const express = require('express');
const db = require('./db.js');
const app = express();
const cors = require('cors');

const http = require('http');
const PORT = 4777;

// Configuración de CORS

const corsOptions = {
  origin: 'http://localhost:3000', // Reemplaza con el origen de tu aplicación NextJs
  methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
  credentials: false,
  optionsSuccessStatus: 200 // Algunos navegadores antiguos (IE11, varias versiones de UC Browser) no admiten cors preflight requests sin esta opción
};

// Express global config
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors(corsOptions));
app.use(require('./routes/index.js'));

const server = http.createServer(app);

async function main() {
  try {
    await db.sync()
    app.listen(PORT, () => {
      console.log(`Servidor web iniciado en puerto ${PORT}`)
    });

  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
}

main();