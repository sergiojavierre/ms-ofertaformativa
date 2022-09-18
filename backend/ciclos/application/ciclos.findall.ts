
//entities
import Ciclo from '../domain/Ciclo'

//repositories
import CiclosRepository from '../domain/ciclos.repository'

class CiclosFindAll{
    ciclosRepository: CiclosRepository

    constructor(ciclosRepository: CiclosRepository) {
        this.ciclosRepository = ciclosRepository
    }

    findAll(): Promise<Ciclo[]>{
        return this.ciclosRepository.findAll()
    }

}
export default CiclosFindAll;