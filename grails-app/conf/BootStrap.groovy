import javax.management.relation.Role;
import java.sql.Date;
import trabajov3.*

class BootStrap {

    def init = { servletContext ->
		if(Usuario.count() > 0) {
			clearSampleData()
		}
		println "entrando... "
		createSampleData()
//		enviroments{
//			development {
//				createSampleData()
//			}
//		}
    }
    
	def destroy = {
		enviroments{
			development {
				clearSampleData()
			}
		}
	}
	
	private createSampleData() {
		//Datos de prueba
		println "Creando roles..."
		def roleAdmin = new Rol(authority: 'ROL_ADMIN').save(failOnError: true)
		def rolEmpleado = new Rol(authority: 'ROL_EMPLEADO').save(failOnError: true)
		//def admin = new Rol_Usuario(description:"administrador").save(failOnError: true)
		//def cliente = new Rol_Usuario(description:"clientes").save(failOnError: true)
		//def clienteVIP = new Rol_Usuario(description:"Clientes VIP").save(failOnError:true)
		
		def hoy = new Date(System.currentTimeMillis())

		println "Creando usuarios..."
		def mollete = new Usuario(username: 'mollete', password: 'molletaso', email:'rubenbsc@gmail.com', firstname:"Rubén", lastname:"Burgos Santa-Cruz", startDate:hoy).save(failOnError: true)
		//def ruben = new Usuario(username:"ruben", password:Usuario.hashPassword("admin"), email:"elaboratumundo@gmail.com", firstname:"Rubén", lastname:"Burgos Santa-Cruz", rol:admin, startDate:hoy).save(failOnError: true)
		//def diego = new Usuario(username:"diego", password:Usuario.hashPassword("diego"), email:"elaboratumundo@gmail.com", firstname:"Diego", lastname:"Fernández Moya", rol:cliente, startDate:hoy).save(failOnError: true)
		def barbara = new Usuario(username:"barbara", password: 'barbarita', email:"elaboratumundo@gmail.com", firstname:"Bárbara", lastname:"Rodríguez Martín", startDate:hoy).save(failOnError: true)
		
		if(!barbara.authorities.contains(rolEmpleado)){
			UsuarioRol.create(barbara, rolEmpleado, true)
		}
		if(!mollete.authorities.contains(roleAdmin)){
			UsuarioRol.create(mollete, roleAdmin, true)
		}
		
		
		println "Creando categorías ..."
		def cat1 = new Categoria(title: "Relojes", description: "Relojes para sajdasdjasnd ssakdbaskjbd kabsdk").save(failOnError: true)
		def cat2 = new Categoria(title: "Pulseras Cuero", description: "Pulseras de cuero").save(failOnError: true)
		
		println "Creando productos..."
		def producto1 = new Producto(name:"Reloj retro adorno mariposa", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:7, cost:2.35, weight: 20.00, unitPrice: 8.50, valoration: 3.78, totalVotes:4, novelty:'S', category: cat1)
			
		def producto2 = new Producto(name:"Reloj retro adorno mariposa", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:4, cost:2.35, weight: 20.00, unitPrice: 8.50, valoration: 3.78, totalVotes:4, novelty:'S', category: cat1)
		
		def producto3 = new Producto(name:"Pulsera doble hebilla (Negra)", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:5, cost:4.00, weight: 47.08, unitPrice: 6.95, valoration: 4.50, totalVotes:4, novelty:'N', category: cat2)
		
		def producto4 = new Producto(name:"Pulsera Cuero Adornos Metal", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:3, cost:3.40, weight: 25.68, unitPrice: 5.50, valoration: 5.00, totalVotes:7, novelty:'S', category: cat2)
		
		def producto5 = new Producto(name:"Pulsera Unisex Cuero Ajustable", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:4, cost:1.13, weight: 9.63, unitPrice: 2.45, valoration: 4.75, totalVotes:4, novelty:'S', category: cat2)
		
		def producto6 = new Producto(name:"Pulsera Cuero Trébol", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:4, cost:1.80, weight: 13.91, unitPrice: 2.45, valoration: 4.75, totalVotes:4, novelty:'S', category: cat2)
		
		def producto7 = new Producto(name:"Reloj Mujer WoMaGe Redondo (Rojo)", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:4, cost:3.66, weight: 35.31, unitPrice: 6.75, valoration: 4.66, totalVotes:8, novelty:'S', category: cat2)
		
		println "Cargando Imágenes de productos..."
		def fichero1 = new File("/home/tfg/Desktop/imagenes/i1.jpg")
		def fichero2 = new File("/home/tfg/Desktop/imagenes/i2.jpg")
		def fichero3 = new File("/home/tfg/Desktop/imagenes/HP0158B-1.jpg")
		def fichero4 = new File("/home/tfg/Desktop/imagenes/HP0158B-2.jpg")
		def fichero5 = new File("/home/tfg/Desktop/imagenes/HP0158B-3.jpg")
		def fichero6 = new File("/home/tfg/Desktop/imagenes/HP0158B-4.jpg")
		def fichero7 = new File("/home/tfg/Desktop/imagenes/HP0159X-1.jpg")
		def fichero8 = new File("/home/tfg/Desktop/imagenes/HP0159X-2.jpg")
		def fichero9 = new File("/home/tfg/Desktop/imagenes/HP0159X-3.jpg")
		def fichero10 = new File("/home/tfg/Desktop/imagenes/HP0159X-4.jpg")
		def fichero11 = new File("/home/tfg/Desktop/imagenes/HPM26L-1.jpg")
		def fichero12 = new File("/home/tfg/Desktop/imagenes/HP4558X-1.jpg")
		def fichero13 = new File("/home/tfg/Desktop/imagenes/YW2312R-1.jpg")
		println "Paso1 "
		def img1 = new Imagen(img: fichero1.getBytes(), fileType: "jpg", fileName: "i1", position: 1 )
		def img2 = new Imagen(img: fichero2.getBytes(), fileType: "jpg", fileName: "i2", position: 1 )
		def img3 = new Imagen(img: fichero3.getBytes(), fileType: "jpg", fileName: "i3", position: 1 )
		def img4 = new Imagen(img: fichero4.getBytes(), fileType: "jpg", fileName: "i4", position: 2 )
		def img5 = new Imagen(img: fichero5.getBytes(), fileType: "jpg", fileName: "i5", position: 3 )
		def img6 = new Imagen(img: fichero6.getBytes(), fileType: "jpg", fileName: "i6", position: 4 )
		def img7 = new Imagen(img: fichero7.getBytes(), fileType: "jpg", fileName: "i7", position: 1 )
		def img8 = new Imagen(img: fichero8.getBytes(), fileType: "jpg", fileName: "i8", position: 2 )
		def img9 = new Imagen(img: fichero9.getBytes(), fileType: "jpg", fileName: "i9", position: 3 )
		def img10 = new Imagen(img: fichero10.getBytes(), fileType: "jpg", fileName: "i10", position: 4 )
		def img11 = new Imagen(img: fichero11.getBytes(), fileType: "jpg", fileName: "i11", position: 1 )
		def img12 = new Imagen(img: fichero12.getBytes(), fileType: "jpg", fileName: "i12", position: 1 )
		def img13 = new Imagen(img: fichero13.getBytes(), fileType: "jpg", fileName: "i13", position: 1 )
		
		println "Paso 2"
		
		producto1.addToFotos(img1).save(failOnError: true)
		producto2.addToFotos(img2).save(failOnError: true)
		producto3.addToFotos(img3).save(failOnError: true)
		producto3.addToFotos(img4).save(failOnError: true)
		producto3.addToFotos(img5).save(failOnError: true)
		producto3.addToFotos(img6).save(failOnError: true)
		producto4.addToFotos(img7).save(failOnError: true)
		producto4.addToFotos(img8).save(failOnError: true)
		producto4.addToFotos(img9).save(failOnError: true)
		producto4.addToFotos(img10).save(failOnError: true)
		producto5.addToFotos(img11).save(failOnError: true)
		producto6.addToFotos(img12).save(failOnError: true)
		producto7.addToFotos(img13).save(failOnError: true)
		
		println "Creando Status de pedidos"
		def status1 = new Estado(description: "Carrito de compra").save(failOnError: true)
		def status2 = new Estado(description: "Pedido pagado").save(failOnError: true)
		
		println "Creando Items de pedido de prueba"
		def linea1 = new Linea_Pedido(product: producto1, units: 3, unitPrice: producto1.unitPrice, totalPrice: 3*producto1.unitPrice, totalWeight: 3*producto1.weight)
		def linea2 = new Linea_Pedido(product: producto3, units: 2, unitPrice: producto3.unitPrice, totalPrice: 2*producto3.unitPrice, totalWeight: 2*producto3.weight)
		
		println "Creando pedido de prueba"
		def pedido1 = new Pedido(status: status1, cliente: mollete, date: new Date(System.currentTimeMillis()))
		
		pedido1.addToLineas(linea1).save(failOnError: true)
		pedido1.addToLineas(linea2).save(failOnError: true)

	}
	
	private clearSampleData() {
		//Mucho cuidado con el orden para que no se produzcan errores de referencias a FKs
		println "Borrando datos ..."
		Comentario.executeUpdate("delete from Comentario")
		Imagen.executeUpdate("delete from Imagen")
		Linea_Pedido.executeUpdate("delete from Linea_Pedido")
		Pedido.executeUpdate("delete from Pedido")
		Estado.executeUpdate("delete from Estado")
		Producto.executeUpdate("delete from Producto")
		UsuarioRol.executeUpdate("delete from UsuarioRol")
		Usuario.executeUpdate("delete from Usuario")
		Rol.executeUpdate("delete from Rol")
		Categoria.executeUpdate("delete from Categoria")
		println "Borrado terminado"
	}
}
