package controlinventario

class Producto {

    String              codigoBarras
    String              nombre
    String              descripcion
    TipoBulto           tipoBulto
    Date                fechaAlta
    Integer             stockMinimo
    Integer             stockMaximo
    Date                fechaActualizacion
    byte[]              fotoProducto
    String              estado

    //EstadoRegistro  estadoRegistro

    static mapping = {
        table 'Productos'
    }

    static constraints = {
        codigoBarras        blank: false, nullable: false
        nombre              blank: false, nullable: false
        descripcion         blank: false, nullable: false
        tipoBulto           blank: false, nullable: false
        fechaAlta           blank: false, nullable: false
        stockMinimo         blank: false, nullable: false
        stockMaximo         blank: false, nullable: false
        fechaActualizacion  blank: false, nullable: false
        fotoProducto        blank: false, nullable: false
        estado              blank: false, nullable: false

    }

}

