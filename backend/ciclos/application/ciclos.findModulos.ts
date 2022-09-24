
//entities
import Ciclo from '../domain/Ciclo'
import Modulo from '../domain/Modulo'

//repositories
import CiclosRepository from '../domain/ciclos.repository'

class CiclosFindModulos{
    ciclosRepository: CiclosRepository

    constructor(ciclosRepository: CiclosRepository) {
        this.ciclosRepository = ciclosRepository
    }

    findModulos(ciclo: Ciclo): Promise<Modulo[]>{
        return this.ciclosRepository.findModulos(ciclo)
    }

}
export default CiclosFindModulos;