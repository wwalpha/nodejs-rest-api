import express from 'express';
import cors from 'cors';

const app = express();

app.use(cors());

app.get('/', express.json(), (req, res) => res.send('Hello World!'));

app.listen(8080, () => console.log('App listening on port 8080!'));
