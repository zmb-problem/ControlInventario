package controlinventario

class InventarioProducto {
    Producto            producto          // usar search con "refresco - rejilla"
    Integer             existenciasReales
    Integer             faltantes
    Integer             sobrantes

    //EstadoRegistro  estadoRegistro

    static mapping = {
        table 'InventariosProductos'
    }

    static constraints = {
        producto            blank: false, nullable: false
        existenciasReales   blank: false, nullable: false
        faltantes           blank: false, nullable: false
        sobrantes           blank: false, nullable: false

    }
}
