import express from 'express';
import dotenv from "dotenv"

dotenv.config()

const app = express();
const port = process.env.PORT

//routers
import { routerCiclos } from './ciclos/infrastructure/rest/ciclos.router';

app.use('/ciclos',routerCiclos)

app.listen(process.env.PORT, () => {
  console.log(`Application started on port ${port}`);
});