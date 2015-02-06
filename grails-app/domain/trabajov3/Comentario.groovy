package trabajov3

class Comentario {
	
	String text
	static belongsTo = [autor:Usuario] //permitimos borrado en cascada de los comentarios al borrar el usuario
	
    static constraints = {
    }
}
