const express = require('express');
const http = require('http');

const app = express();
const server = http.createServer(app);

app.get('/', (req, res) => {
    res.send('Hello NodeJS');    
});

server.listen(5000, () => {
    console.log('Server started on port 5000');
});