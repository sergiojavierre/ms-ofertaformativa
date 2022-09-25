
import Ciclo from './Ciclo'
import Modulo from './Modulo'

interface CiclosRepository{
    findAll(): Promise<Ciclo[]>
    filter(nivel:String): Promise<Ciclo[]>
    findModulos(ciclo: Ciclo): Promise<Modulo[]>
}

export default CiclosRepository