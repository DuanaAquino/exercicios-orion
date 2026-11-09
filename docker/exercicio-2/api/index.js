const express = require('express');
const { Pool } = require('pg');
const app = express();

const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
});

app.get('/', async (req, res) => {
  try {
    await pool.query('CREATE TABLE IF NOT EXISTS acessos (id SERIAL PRIMARY KEY, data TIMESTAMP DEFAULT NOW())');
    await pool.query('INSERT INTO acessos DEFAULT VALUES');
    res.send('Hello from Docker! Acesso gravado no banco de dados com sucesso.');
  } catch (err) {
    res.status(500).send('Erro ao conectar no banco.');
  }
});

app.listen(3000, () => console.log('Exercicio 2 rodando!'));