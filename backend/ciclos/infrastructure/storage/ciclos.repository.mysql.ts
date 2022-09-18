import Ciclo from '../../domain/Ciclo'
import CiclosRepository from '../../domain/ciclos.repository'

//mysql
import {executeQuery} from '../../../context/mysql.connector'

class CiclosRepositoryMySQL implements CiclosRepository{
    
    async findAll(): Promise<Ciclo[]>{
        const sql = `select * from ciclos`
        try {
            const ciclosMySQL : any[] = await executeQuery(sql)           
            const ciclos : Ciclo[]= []
            ciclosMySQL.forEach((ciclo) => ciclos.push(new Ciclo(ciclo.codigo, ciclo.nombre)))
            return ciclos
        }
        catch (error) {
            console.log(error);
            
            return [new Ciclo('1', '3')] 
        }
    }
}

export default CiclosRepositoryMySQL