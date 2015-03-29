package trabajov3



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional

@Secured(['permitAll'])
@Transactional(readOnly = true)
class ProductoController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def viewMainImage = {
		def prod = Producto.get(params.id)
		//byte[] image = g.resource(dir: 'images', file: 'image1.jpg').bytes
		byte[] image = null
		for (foto in prod.fotos) {
			if (foto.position==1) {
				image = foto.img
			}
		}
		response.outputStream << image
	}
	
	def subirImagen = {
		//recuperamos el archivo en la varible archivo (fileName) es el nombre del imput file del gsp
		def img = request.getFile('fileName')
		// creamos el directorio en la ruta donde esta nuestra aplicacion y agragamos la carpeta
		println "va bien"
		def webRootDir = servletContext.getRealPath("/")
		def imgDir = new File(webRootDir, "/imagenes")
		imgDir.mkdirs()
		
		// Guardamos la imagen en el directorio
		img.transferTo(new File( imgDir, img.originalFilename))
		
		// Ruta del archivo
		String file=imgDir.toString()+ File.separator + img.originalFilename
		
		//agregamos el nombre del archivo a una lista en caso de querer imprimir el nombre
		ArrayList nomArchivo=new ArrayList()
		nomArchivo.add(archivo.originalFilename)
		
		//regresamos la lista a un gsp y asi cargamos un archivo al servidor
		//render (view:'form', model:[nomArchivo:nomArchivo])
		render "terminadooooooooooooooo"
	}

    def index(Integer max) {
		def categorias = Categoria.list()
        params.max = Math.min(max ?: 10, 100)
        respond Producto.list(params), model:[productoInstanceCount: Producto.count(), listaCategorias: categorias]
    }

    def show(Producto productoInstance) {
        respond productoInstance
    }

    def create() {
        respond new Producto(params)
    }

    @Transactional
    def save(Producto productoInstance) {
        if (productoInstance == null) {
            notFound()
            return
        }

        if (productoInstance.hasErrors()) {
            respond productoInstance.errors, view:'create'
            return
        }

        productoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'producto.label', default: 'Producto'), productoInstance.id])
                redirect productoInstance
            }
            '*' { respond productoInstance, [status: CREATED] }
        }
    }

    def edit(Producto productoInstance) {
        respond productoInstance
    }

    @Transactional
    def update(Producto productoInstance) {
        if (productoInstance == null) {
            notFound()
            return
        }

        if (productoInstance.hasErrors()) {
            respond productoInstance.errors, view:'edit'
            return
        }

        productoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Producto.label', default: 'Producto'), productoInstance.id])
                redirect productoInstance
            }
            '*'{ respond productoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Producto productoInstance) {

        if (productoInstance == null) {
            notFound()
            return
        }

        productoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Producto.label', default: 'Producto'), productoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
