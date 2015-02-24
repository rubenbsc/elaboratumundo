package trabajov3

class Imagen {
	byte[] img
	String fileType
	String fileName
	Integer position
	
	static belongsTo = [producto:Producto] //Habilitado borrado en cascada
    
	static constraints = {
		img(nullable:true, maxSize:1073741824) // maximo de 4GB 
		fileType(blank:true, nullable:true)
		fileName(blank:true, nullable:true)
    }
}
