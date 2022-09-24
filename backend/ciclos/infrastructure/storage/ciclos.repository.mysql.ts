import Ciclo from '../../domain/Ciclo'
import CiclosRepository from '../../domain/ciclos.repository'

//mysql
import {executeQuery} from '../../../context/mysql.connector'
import Modulo from '../../domain/Modulo'

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
            console.error(error);
            return [] 
        }
    }

    async findModulos(ciclo: Ciclo): Promise<Modulo[]>{
        const sql = `select * from modulos where ciclo = '${ciclo.codigo}'`        
        try {
            const modulosMySQL : any[] = await executeQuery(sql)           
            const modulos : Modulo[]= []
            modulosMySQL.forEach((modulo) => modulos.push(new Modulo(modulo.codigo, modulo.ciclo, modulo.nombre, modulo.horas, modulo.curso)))
            return modulos
        }
        catch (error) {
            console.error(error)
            return []
        }
    }
}

export default CiclosRepositoryMySQL