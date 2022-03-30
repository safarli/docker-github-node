const express = require('express')

const app = express();

app.get('/', (req, res) => {
	res.status(200).send('Ana sehifeye xos geldiniz!')
})

app.get('/books', (req, res) => {
	res.status(200).send('Burada siz istediyinz kitablari tapa bilersiniz')
})

app.listen('8081', () => console.log('SERVER STARTED LISTENING ON PORT: 8080'))