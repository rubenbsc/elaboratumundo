package trabajov3

class Estado {

	String description
	
	static hasMany = [pedidos:Pedido]
    
	static constraints = {
    }
}
