package controlinventario

import com.sun.org.apache.xpath.internal.operations.Bool

class Inventario {
    Date                fechaInicio
    Date                fechaCierre
    String              descripcion
    String              resumen
    Bool                finalizado

    static hasMany =    [ productos : InventarioProducto]
    //EstadoRegistro  estadoRegistro

    static mapping = {
        table 'Inventarios'
    }

    static constraints = {
        fechaInicio         blank: false, nullable: false
        fechaCierre         blank: false, nullable: false
        descripcion         blank: false, nullable: false
        resumen             blank: false, nullable: false
        finalizado          blank: false, nullable: false

    }

}

