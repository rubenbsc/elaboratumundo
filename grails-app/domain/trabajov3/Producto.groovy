package trabajov3

class Producto {
	
	String name
	String little_des
	String long_des
	Integer units
	Double cost
	Double unitPrice
	Double weight
	Double iva //*****
	Double valoration
	Integer totalVotes
	String novelty
	
	static hasMany = [lineas:Linea_Pedido, fotos:Imagen, comentarios:Comentario]
	Categoria category
	
    static constraints = {
    }
}
