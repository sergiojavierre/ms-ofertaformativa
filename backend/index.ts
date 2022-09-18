import express from 'express';

const app = express();

//routers
import { routerCiclos } from './ciclos/infrastructure/rest/ciclos.router';

app.use('/ciclos',routerCiclos)

app.listen(3000, () => {
  console.log('Application started on port 3000!');
});