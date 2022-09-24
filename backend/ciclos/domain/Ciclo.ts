class Ciclo{

    private _codigo: String
    private nombre: String

    constructor(codigo: String, nombre?: String) {
        this._codigo = codigo
        this.nombre = nombre ||""
    }

    get codigo(): String {
        return this._codigo
    }
}

export default Ciclo