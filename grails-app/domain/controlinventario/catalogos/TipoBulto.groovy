package controlinventario.catalogos

class TipoBulto {
    String  nombre
    String  descripcion
    //EstadoRegistro  estadoRegistro


    static mapping = {
        table 'UnidadesMedidas'
    }

    static constraints = {
        nombre          blank: false, nullable: false
        descripcion     blank: false, nullable: false

    }
}

