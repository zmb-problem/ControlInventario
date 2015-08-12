package controlinventario

class Compra {
    String              noOrden
    Date                fecha
    String              descripcion

    static hasMany = [ productos : CompraProducto ]

    //EstadoRegistro  estadoRegistro

    static mapping = {
        table 'Compras'
    }
    static constraints = {
        noOrden          blank: false, nullable: false
        fecha           blank: true, nullable: false
        //, validator: {
        //    fecha.toString().matches("/([1-9]|1[012])[- /.]([1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d/")
        //}

        descripcion     blank: true, nullable: false

    }
}
