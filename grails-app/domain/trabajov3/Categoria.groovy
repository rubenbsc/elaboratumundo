package trabajov3

class Categoria {
	
	String title
	String description
	
	static hasMany = [productos:Producto]
	
    static constraints = {
    }
}
