class Ciclo{

    codigo: String
    nombre: String

    constructor(codigo: String, nombre?: String) {
        this.codigo = codigo
        this.nombre = nombre ||""
    }
}

export default Ciclo