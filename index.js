const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.listen(port, "0.0.0.0", () => {
  console.log(`App is running at http://0.0.0.0:${port}`);
});
