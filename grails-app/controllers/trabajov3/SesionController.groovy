package trabajov3

class SesionController {

	def index() {
		redirect(action:"login")
	}
	
	def login() {
		if(session.user != null) {
			redirect(controller:"Inicio", action:"index")
		}
	}
	
	def entrar() {
		params.password = Usuario.hashPassword(params.password)
		def usuario = Usuario.findByUsernameAndPassword(params.username, params.password)
		if(!user) {
			flash.message = "Username/password combination not found."
			redirect(controller:"Sesion", action:"login")
		} else {
			session.user = usuario
			flash.message = "Login successful."
			if(params.redirectURL != null) {
				redirect(url: params.redirectURL)
			} else {
				redirect(controller:"Inicio", action:"index")
			}
		}
	}
	
	def logout() {
		if(session.user != null) {
			session.user = null
			session.invalidate()
			flash.message = "Logout successful."
			redirect(controller:"Sesion", action:"login")
		} else {
			redirect(controller:"Sesion", action:"login")
		}
	}
	
}
