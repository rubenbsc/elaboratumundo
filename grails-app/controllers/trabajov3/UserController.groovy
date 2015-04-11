package trabajov3

class UserController extends grails.plugin.springsecurity.ui.UserController {
	
	def addToCart = {

		def producto = Producto.get(params.productoId)
			
		if (producto == null){
			flash.error = "¡No se pudo añadir el producto al carrito! El producto [${params.productoId}] no se pudo encontrar."
			
			redirect(controller:'Producto',action:'index')
		}
		
		def pedido = Pedido.findByCliente(springSecurityService.currentUser)
		def estado = Estado.findByDescriptionLike("%Carrito%")
		
		
		if (pedido == null){
			pedido = new Pedido(cliente: springSecurityService.currentUser, status: estado)
			println "Pedido creado"
		}
		
		PedidoController pc = new PedidoController()
		pc.addToItemLine(producto, pedido)
		
		pedido.save(failOnError:true, flush: true)
		
		flash.mensajeAdd = "El artículo ha sido añadido al carrito de compra"
		redirect(controller: 'Producto', action: 'show', id: producto.id)
	}
}
