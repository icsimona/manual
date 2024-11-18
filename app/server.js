const express = require('express');
const app = express();
const port = 8080;

app.get('/health', (req, res) => {
    res.status(200).send('Healthy');
});

app.get('/', (req, res) => {
    res.send('Welcome to the Demo App!');
});

app.listen(port, () => {
    console.log(`Demo app listening at http://localhost:${port}`);
});
