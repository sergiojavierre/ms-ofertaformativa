
//entities
import Ciclo from '../domain/Ciclo'

//repositories
import CiclosRepository from '../domain/ciclos.repository'

class CiclosFilterNivel{
    ciclosRepository: CiclosRepository

    constructor(ciclosRepository: CiclosRepository) {
        this.ciclosRepository = ciclosRepository
    }

    filter(nivel: String): Promise<Ciclo[]>{
        return this.ciclosRepository.filter(nivel)
    }

}
export default CiclosFilterNivel;