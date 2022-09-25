import express, { Request, Response } from 'express'
import Ciclo from '../../domain/Ciclo'

const router = express.Router()

//user stories
import CiclosFindAll from '../../application/ciclos.findall'
import CiclosFilterNivel from '../../application/ciclos.filterNivel'
import CiclosFindModulos from '../../application/ciclos.findModulos'

//repositories implementations
import CiclosRepositoryMySQL from '../storage/ciclos.repository.mysql'
const ciclosRepositoryMySQL: CiclosRepositoryMySQL = new CiclosRepositoryMySQL()

//uses cases
const ciclosFindAll: CiclosFindAll = new CiclosFindAll(ciclosRepositoryMySQL)
const ciclosFilterNivel: CiclosFilterNivel = new CiclosFilterNivel(ciclosRepositoryMySQL)
const ciclosFindModulos: CiclosFindModulos = new CiclosFindModulos(ciclosRepositoryMySQL)


router.get('/', async (req: Request, res: Response) => {
    try {
        const ciclos = await ciclosFindAll.findAll()
        res.send(ciclos)
    }
    catch (error) {
        res.send(error)
    }
})

router.get('/:codigo', async (req: Request, res: Response) => {
    const ciclo = new Ciclo(req.params.codigo)
    const ciclos = await ciclosFindModulos.findModulos(ciclo)
    res.send(ciclos)
})

router.get('/nivel/:nivel', async (req: Request, res: Response) => {
    const ciclos = await ciclosFilterNivel.filter(req.params.nivel)
    res.send(ciclos)
})

export { router as routerCiclos};