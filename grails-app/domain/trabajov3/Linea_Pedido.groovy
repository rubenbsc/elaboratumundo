package trabajov3

class Linea_Pedido {
	
	Integer units
	Double unitPrice
	Double totalPrice
	Double totalWeight
	//Double totalIVA
	//Sin IVA?
	
	static belongsTo = [pedido:Pedido] //habilitamos el borrado en cascada de las líneas del pedido al elminar un pedido
	Producto product
	
    static constraints = {
    }
}
