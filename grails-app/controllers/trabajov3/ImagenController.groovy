package trabajov3



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImagenController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def viewImage = {
			  def foto = Imagen.get( params.id )
			  byte[] image = foto.img
			  response.outputStream << image	
	}
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Imagen.list(params), model:[imagenInstanceCount: Imagen.count()]
    }

    def show(Imagen imagenInstance) {
        respond imagenInstance
    }

    def create() {
        respond new Imagen(params)
    }

    @Transactional
    def save(Imagen imagenInstance) {
        if (imagenInstance == null) {
            notFound()
            return
        }

        if (imagenInstance.hasErrors()) {
            respond imagenInstance.errors, view:'create'
            return
        }

        imagenInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'imagen.label', default: 'Imagen'), imagenInstance.id])
                redirect imagenInstance
            }
            '*' { respond imagenInstance, [status: CREATED] }
        }
    }

    def edit(Imagen imagenInstance) {
        respond imagenInstance
    }

    @Transactional
    def update(Imagen imagenInstance) {
        if (imagenInstance == null) {
            notFound()
            return
        }

        if (imagenInstance.hasErrors()) {
            respond imagenInstance.errors, view:'edit'
            return
        }

        imagenInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Imagen.label', default: 'Imagen'), imagenInstance.id])
                redirect imagenInstance
            }
            '*'{ respond imagenInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Imagen imagenInstance) {

        if (imagenInstance == null) {
            notFound()
            return
        }

        imagenInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Imagen.label', default: 'Imagen'), imagenInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagen.label', default: 'Imagen'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
