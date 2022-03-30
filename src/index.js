const express = require('express')
const ENVS = require('./envs')

const app = express();

app.get('/', (req, res) => {
	res.status(200).send('Ana sehifeye xos geldiniz!')
})

app.get('/books', (req, res) => {
	res.status(200).send('Burada siz istediyinz kitablari tapa bilersiniz')
})

app.get('/mottos', (req, res) => {
	res.status(200).send('Be brave man! Be brave!')
})

app.listen(ENVS.APP_PORT, () => console.log(`SERVER STARTED LISTENING ON PORT: ${ENVS.APP_PORT}`))