package trabajov3

import org.apache.commons.codec.digest.DigestUtils;

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
		username (size: 5..15, blank: false, unique: true)
		password (blank: false) //No limito el tamaño porque se almacena el hash
		email (email: true, blank: false)
		startDate(nullable:true, blank:true)
		endDate(nullable:true, blank:true)
		birthDate(nullable:true, blank:true)
		
//		startDate(blank: true)
//		endDate(blank: true)
//		birthDate(blank:true)
    }
	
	static String hashPassword(String password) {
		DigestUtils.shaHex(password)
	}
	
	static mapping = {
		comentarios sort:"fecha", order:"desc"
		pedidos sort:"date", order:"desc"
	}
	
	String toString() { 
		return "User $username (id: $id)" 
	}
	
	String getUsername() { 
		return username 
	}
}
