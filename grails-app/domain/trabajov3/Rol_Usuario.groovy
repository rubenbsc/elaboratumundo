package trabajov3

class Rol_Usuario {
	
	String description
	
	static hasMany = [usuarios:Usuario]

    static constraints = {
		
    }
	
//	static mapping = {
//		table 'Rol_Usuario'
//		version false
//		
//		userRoleID column: 'id_rol_usuario'
//		description ciolumn: 'des_rol'
//	}
}
