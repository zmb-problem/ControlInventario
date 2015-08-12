package controlinventario

class VentaProducto {

    Producto            producto          // usar search con "refresco - rejilla"
    Integer             cantidad

    //EstadoRegistro  estadoRegistro

    static mapping = {
        table 'VentaProductos'
    }

    static constraints = {
        producto        blank: false, nullable: false
        cantidad        blank: false, nullable: false

    }
}
