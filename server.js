const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;

app.use(cors());

// Middleware to parse JSON bodies
app.use(express.json());

// Simple API endpoint
app.get('/', (req, res) => {
  res.json({ message: 'Hello from the Temi slash!' });
});

app.get('/api/message', (req, res) => {
  res.json({ message: 'Hello from the backend!' });
});

app.get('/api/emmanuel-info', (req, res) => {
  res.json({ Name: 'Emmanuel', Age: 39, Gender: "Male", Location: "Abule Oja" });
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
