package trabajov3



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Rol_UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Rol_Usuario.list(params), model:[rol_UsuarioInstanceCount: Rol_Usuario.count()]
    }

    def show(Rol_Usuario rol_UsuarioInstance) {
        respond rol_UsuarioInstance
    }

    def create() {
        respond new Rol_Usuario(params)
    }

    @Transactional
    def save(Rol_Usuario rol_UsuarioInstance) {
        if (rol_UsuarioInstance == null) {
            notFound()
            return
        }

        if (rol_UsuarioInstance.hasErrors()) {
            respond rol_UsuarioInstance.errors, view:'create'
            return
        }

        rol_UsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rol_Usuario.label', default: 'Rol_Usuario'), rol_UsuarioInstance.id])
                redirect rol_UsuarioInstance
            }
            '*' { respond rol_UsuarioInstance, [status: CREATED] }
        }
    }

    def edit(Rol_Usuario rol_UsuarioInstance) {
        respond rol_UsuarioInstance
    }

    @Transactional
    def update(Rol_Usuario rol_UsuarioInstance) {
        if (rol_UsuarioInstance == null) {
            notFound()
            return
        }

        if (rol_UsuarioInstance.hasErrors()) {
            respond rol_UsuarioInstance.errors, view:'edit'
            return
        }

        rol_UsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Rol_Usuario.label', default: 'Rol_Usuario'), rol_UsuarioInstance.id])
                redirect rol_UsuarioInstance
            }
            '*'{ respond rol_UsuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Rol_Usuario rol_UsuarioInstance) {

        if (rol_UsuarioInstance == null) {
            notFound()
            return
        }

        rol_UsuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Rol_Usuario.label', default: 'Rol_Usuario'), rol_UsuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rol_Usuario.label', default: 'Rol_Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
