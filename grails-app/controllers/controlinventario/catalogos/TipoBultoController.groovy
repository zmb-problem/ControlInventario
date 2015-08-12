package controlinventario.catalogos

import controlinventario.catalogos.TipoBulto

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoBultoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoBulto.list(params), model:[tipoBultoInstanceCount: TipoBulto.count()]
    }

    def show(TipoBulto tipoBultoInstance) {
        respond tipoBultoInstance
    }

    def create() {
        respond new TipoBulto(params)
    }

    @Transactional
    def save(TipoBulto tipoBultoInstance) {
        if (tipoBultoInstance == null) {
            notFound()
            return
        }

        if (tipoBultoInstance.hasErrors()) {
            respond tipoBultoInstance.errors, view:'create'
            return
        }

        tipoBultoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoBulto.label', default: 'TipoBulto'), tipoBultoInstance.id])
                redirect tipoBultoInstance
            }
            '*' { respond tipoBultoInstance, [status: CREATED] }
        }
    }

    def edit(TipoBulto tipoBultoInstance) {
        respond tipoBultoInstance
    }

    @Transactional
    def update(TipoBulto tipoBultoInstance) {
        if (tipoBultoInstance == null) {
            notFound()
            return
        }

        if (tipoBultoInstance.hasErrors()) {
            respond tipoBultoInstance.errors, view:'edit'
            return
        }

        tipoBultoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoBulto.label', default: 'TipoBulto'), tipoBultoInstance.id])
                redirect tipoBultoInstance
            }
            '*'{ respond tipoBultoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoBulto tipoBultoInstance) {

        if (tipoBultoInstance == null) {
            notFound()
            return
        }

        tipoBultoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoBulto.label', default: 'TipoBulto'), tipoBultoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoBulto.label', default: 'TipoBulto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
