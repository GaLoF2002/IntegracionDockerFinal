const express = require('express');
const app = express();

app.get('/api/saludo', (req, res) => {
    res.json({ mensaje: '¡Hola desde el microservicio!' });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Microservicio ejecutándose en http://localhost:${PORT}`);
});
