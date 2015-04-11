package trabajov3



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class PedidoController {

	def aumentarCantidad() {
		
		def l1 = Linea_Pedido.get(params.lineaId)
		def pedido = Pedido.get(l1.pedido.id)
		
		l1.units += 1
		l1.totalPrice = l1.units * l1.unitPrice
		PedidoController pc = new PedidoController()
		pc.actualizarTotal(pedido)
		 l1.save(flush: true)
		flash.message = "Se ha aumentado el número de unidades"
		redirect(controller: "Pedido", action: "show", id: l1.pedido.id)
	}
	
	def disminuirCantidad() {
		
		def item = Linea_Pedido.get(params.lineaId)
		def pedido = Pedido.get(item.pedido.id)
		
		if (item.units == 1){
			flash.message = "La cantidad de un producto no puede ser 0."
		}else{
			item.units -= 1
			item.totalPrice = item.units * item.unitPrice
			PedidoController pc = new PedidoController()
			pc.actualizarTotal(pedido)
			item.save(flush: true)
			
			flash.message = "Se ha disminuido el número de unidades"
		}
		redirect(controller: "Pedido", action: "show", id: pedido.id)
	}
	
	def eliminarDelCarrito() {
		def item = Linea_Pedido.get(params.lineaId)
		def pedido = Pedido.get(item.pedido.id)
		
		item.delete(flush: true)
		actualizarTotal(pedido)
		redirect(controller: "Pedido", action: "show", id: item.pedido.id)
	}
		
	
	public void actualizarTotal(Pedido ped){
		Double total = 0.0
		
		for (item in ped.lineas) {
			total += item.totalPrice
		}
		
		ped.totalCost = total.round(2)
		ped.save(flush: true)
	}
	
	public void addToItemLine(Producto prod, Pedido pedido){
		def purchaseItem = pedido.lineas?.find{it.product == prod}
		
		if (purchaseItem == null){
			if (pedido.lineas == null){
				pedido.lineas = []
			}
			Linea_Pedido line = new Linea_Pedido(product: prod,  units: 1, unitPrice: prod.unitPrice, totalPrice: prod.unitPrice, totalWeight: prod.weight)
			pedido.addToLineas(line)
		}
		else{
			purchaseItem.units += 1
			purchaseItem.unitPrice = prod.unitPrice
		}
		
		pedido.save(flush: true)
		
		actualizarTotal(pedido)

	}
	
	
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	
	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pedido.list(params), model:[pedidoInstanceCount: Pedido.count()]
    }

    def show(Pedido pedidoInstance) {
        respond pedidoInstance
    }

    def create() {
        respond new Pedido(params)
    }

    @Transactional
    def save(Pedido pedidoInstance) {
        if (pedidoInstance == null) {
            notFound()
            return
        }

        if (pedidoInstance.hasErrors()) {
            respond pedidoInstance.errors, view:'create'
            return
        }
		
        pedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect pedidoInstance
            }
            '*' { respond pedidoInstance, [status: CREATED] }
        }
    }
	

    def edit(Pedido pedidoInstance) {
        respond pedidoInstance
    }

    @Transactional
    def update(Pedido pedidoInstance) {
        if (pedidoInstance == null) {
            notFound()
            return
        }

        if (pedidoInstance.hasErrors()) {
            respond pedidoInstance.errors, view:'edit'
            return
        }

        pedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect pedidoInstance
            }
            '*'{ respond pedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pedido pedidoInstance) {

        if (pedidoInstance == null) {
            notFound()
            return
        }

        pedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
