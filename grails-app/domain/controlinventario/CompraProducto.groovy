package controlinventario

class CompraProducto {

    Producto            producto          // usar search con "refresco - rejilla"
    Integer             cantidad

    //EstadoRegistro  estadoRegistro
    static mapping = {
        table 'ComprasProductos'
    }
    static constraints = {
        producto          blank: false, nullable: false
        cantidad          blank: false, nullable: false
    }
}
