package trabajov3

import java.sql.Date

class Usuario {

	String username
	String password
	String email
	String firstname
	String lastname
	Date startDate
	Date endDate
	Date birthDate
	
	static hasMany = [comentarios:Comentario, pedidos:Pedido]
	Rol_Usuario rol
	
    static constraints = {
    }
}
