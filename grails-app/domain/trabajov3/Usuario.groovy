package trabajov3

class Usuario {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
		
	String email
	String firstname
	String lastname
	Date startDate
	Date endDate
	Date birthDate
	
	static hasMany = [comentarios:Comentario, pedidos:Pedido]
	
	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true, size: 5..15
		password blank: false //Debo establecer una política de contraseñas
		
		email email: true, blank: false
		startDate nullable:true, blank:true
		endDate nullable:true, blank:true
		birthDate nullable:true, blank:true
		
	}

	static mapping = {
		password column: '`password`'
		comentarios sort:"fecha", order:"desc"
		pedidos sort:"date", order:"desc"
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
