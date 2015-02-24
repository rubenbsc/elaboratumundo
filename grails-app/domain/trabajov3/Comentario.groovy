package trabajov3

class Comentario {
	
	Date fecha
	String text
	static belongsTo = [autor:Usuario, producto: Producto] //permitimos borrado en cascada de los comentarios al borrar el usuario
	
    static constraints = {
		text blank:false
    }
	
	static mapping = {
		sort fecha:"desc"
	}
	
	String cabecera() {
		return "Fecha: ${fecha.toString()} Comentario de '${autor.username}' sobre '${producto.name}'"
	}
	
	String toString() {
		return text
	}
	
}
