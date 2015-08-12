package controlinventario

class Venta {
    String              noFactura
    Date                fecha
    String              descripcion

    static hasMany = [ productos : VentaProducto ]

    static mapping = {
        table 'Ventas'
    }

    static constraints = {
        noFactura       blank: false, nullable: false
        fecha           blank: false, nullable: false
        descripcion     blank: false, nullable: false
    }
}
