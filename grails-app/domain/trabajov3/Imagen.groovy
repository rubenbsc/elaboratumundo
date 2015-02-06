package trabajov3

class Imagen {
	String imgb64
	Integer position
	
	static belongsTo = [producto:Producto] //Habilitado borrado en cascada
    
	static constraints = {
    }
}
