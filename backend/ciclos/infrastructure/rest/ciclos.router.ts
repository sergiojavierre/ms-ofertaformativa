import express, { Request, Response } from 'express'


const router = express.Router()

//user stories
import CiclosFindAll from '../../application/ciclos.findall'

//repositories implementations
import CiclosRepositoryMySQL from '../storage/ciclos.repository.mysql'
const ciclosRepositoryMySQL: CiclosRepositoryMySQL = new CiclosRepositoryMySQL()

const ciclosFindAll: CiclosFindAll = new CiclosFindAll(ciclosRepositoryMySQL)

router.get('/', async (req: Request, res: Response) => {
    const ciclos = await ciclosFindAll.findAll()
    res.send(ciclos)
})

export { router as routerCiclos};