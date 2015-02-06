package trabajov3



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Linea_PedidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Linea_Pedido.list(params), model:[linea_PedidoInstanceCount: Linea_Pedido.count()]
    }

    def show(Linea_Pedido linea_PedidoInstance) {
        respond linea_PedidoInstance
    }

    def create() {
        respond new Linea_Pedido(params)
    }

    @Transactional
    def save(Linea_Pedido linea_PedidoInstance) {
        if (linea_PedidoInstance == null) {
            notFound()
            return
        }

        if (linea_PedidoInstance.hasErrors()) {
            respond linea_PedidoInstance.errors, view:'create'
            return
        }

        linea_PedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'linea_Pedido.label', default: 'Linea_Pedido'), linea_PedidoInstance.id])
                redirect linea_PedidoInstance
            }
            '*' { respond linea_PedidoInstance, [status: CREATED] }
        }
    }

    def edit(Linea_Pedido linea_PedidoInstance) {
        respond linea_PedidoInstance
    }

    @Transactional
    def update(Linea_Pedido linea_PedidoInstance) {
        if (linea_PedidoInstance == null) {
            notFound()
            return
        }

        if (linea_PedidoInstance.hasErrors()) {
            respond linea_PedidoInstance.errors, view:'edit'
            return
        }

        linea_PedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Linea_Pedido.label', default: 'Linea_Pedido'), linea_PedidoInstance.id])
                redirect linea_PedidoInstance
            }
            '*'{ respond linea_PedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Linea_Pedido linea_PedidoInstance) {

        if (linea_PedidoInstance == null) {
            notFound()
            return
        }

        linea_PedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Linea_Pedido.label', default: 'Linea_Pedido'), linea_PedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'linea_Pedido.label', default: 'Linea_Pedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
