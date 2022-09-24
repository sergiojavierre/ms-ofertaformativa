class Modulo{
    private codigo: String;
    private ciclo: String;
    private nombre: String;
    private horas: Number;
    private curso: Number

    public constructor(codigo: String, ciclo: String, nombre: String, horas: Number, curso: Number) {
        this.codigo = codigo;
        this.ciclo = ciclo;
        this.nombre = nombre;
        this.horas = horas;
        this.curso = curso;
    }

}

export default Modulo;