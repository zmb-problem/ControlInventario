package controlinventario



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InventarioProductoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InventarioProducto.list(params), model:[inventarioProductoInstanceCount: InventarioProducto.count()]
    }

    def show(InventarioProducto inventarioProductoInstance) {
        respond inventarioProductoInstance
    }

    def create() {
        respond new InventarioProducto(params)
    }

    @Transactional
    def save(InventarioProducto inventarioProductoInstance) {
        if (inventarioProductoInstance == null) {
            notFound()
            return
        }

        if (inventarioProductoInstance.hasErrors()) {
            respond inventarioProductoInstance.errors, view:'create'
            return
        }

        inventarioProductoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'inventarioProducto.label', default: 'InventarioProducto'), inventarioProductoInstance.id])
                redirect inventarioProductoInstance
            }
            '*' { respond inventarioProductoInstance, [status: CREATED] }
        }
    }

    def edit(InventarioProducto inventarioProductoInstance) {
        respond inventarioProductoInstance
    }

    @Transactional
    def update(InventarioProducto inventarioProductoInstance) {
        if (inventarioProductoInstance == null) {
            notFound()
            return
        }

        if (inventarioProductoInstance.hasErrors()) {
            respond inventarioProductoInstance.errors, view:'edit'
            return
        }

        inventarioProductoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'InventarioProducto.label', default: 'InventarioProducto'), inventarioProductoInstance.id])
                redirect inventarioProductoInstance
            }
            '*'{ respond inventarioProductoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(InventarioProducto inventarioProductoInstance) {

        if (inventarioProductoInstance == null) {
            notFound()
            return
        }

        inventarioProductoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'InventarioProducto.label', default: 'InventarioProducto'), inventarioProductoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'inventarioProducto.label', default: 'InventarioProducto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
