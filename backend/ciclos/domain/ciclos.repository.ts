
import Ciclo from './Ciclo'

interface CiclosRepository{
    findAll() : Promise<Ciclo[]>
}

export default CiclosRepository