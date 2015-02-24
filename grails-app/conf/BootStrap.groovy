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
		def admin = new Rol_Usuario(description:"administrador").save(failOnError: true)
		def cliente = new Rol_Usuario(description:"clientes").save(failOnError: true)
		//def clienteVIP = new Rol_Usuario(description:"Clientes VIP").save(failOnError:true)
		
		def hoy = new Date()
		
		println "Creando usuarios..."
		def ruben = new Usuario(username:"ruben", password:Usuario.hashPassword("admin"), email:"elaboratumundo@gmail.com", firstname:"Rubén", lastname:"Burgos Santa-Cruz", rol:admin, startDate:hoy).save(failOnError: true)
		def diego = new Usuario(username:"diego", password:Usuario.hashPassword("diego"), email:"elaboratumundo@gmail.com", firstname:"Diego", lastname:"Fernández Moya", rol:cliente, startDate:hoy).save(failOnError: true)
		def barbara = new Usuario(username:"barbara", password:Usuario.hashPassword("cliente"), email:"elaboratumundo@gmail.com", firstname:"Bárbara", lastname:"Rodríguez Martín", rol:admin, startDate:hoy).save(failOnError: true)
		
		println "Creando categorías ..."
		def cat1 = new Categoria(title: "Relojes", description: "Relojes para sajdasdjasnd ssakdbaskjbd kabsdk").save(failOnError: true)
		
		println "Creando productos..."
		def producto1 = new Producto(name:"Reloj retro adorno mariposa", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:4, cost:2.35, weight: 20.00, unitPrice: 8.50, valoration: 3.78, totalVotes:4, novelty:'S', category: cat1)
			
		def producto2 = new Producto(name:"Reloj retro adorno mariposa", little_des:"Descripción corta del artículo",
			long_des: "Aqui deberá estar la descripción larga. Es posible que ocupe varias líneas. sdasfd akfhakf hao dfhasifhia hfa fhadsifha.",
			units:4, cost:2.35, weight: 20.00, unitPrice: 8.50, valoration: 3.78, totalVotes:4, novelty:'S', category: cat1)
		
		println "Cargando Imágenes de productos..."
			
		def fichero1 = new File("/home/tfg/Desktop/imagenes/i1.jpg")
		def fichero2 = new File("/home/tfg/Desktop/imagenes/i2.jpg")
		
		def img1 = new Imagen(img: fichero1.getBytes(), fileType: "jpg", fileName: "i1", position: 1 )
		def img2 = new Imagen(img: fichero2.getBytes(), fileType: "jpg", fileName: "i2", position: 1 )
		
		producto1.addToFotos(img1).save(failOnError: true)
		producto1.addToFotos(img2).save(failOnError: true)
		producto2.addToFotos(img2).save(failOnError: true)
			
		//println "Creating shopping lists..."
//			def groceriesList = new ShoppingList(name:"Groceries", description:"List of items to get from the grocery store", items:[:], owner:casey).save()
//			def partsList = new ShoppingList(name:"Parts", description:"List of parts to get from the auto-parts store", items:[:], owner:casey).save()
//
//			println "Creating shopping items..."
//			new ShoppingItem(name:"Bread", list:groceriesList, isNeeded:true).save()
//			new ShoppingItem(name:"Milk", list:groceriesList, isNeeded:true).save()
//			new ShoppingItem(name:"Eggs", list:groceriesList, isNeeded:true).save()
//
//			println "Creating reminders..."
//			new Reminder(name:"Take out the trash", description:"Don't forget to take the trash out.", owner:casey, remindAt: new Date(113, 5, 28)).save()
//
//			println "Creating todo lists..."
//			def homeList = new TodoList(name:"Home", description:"List of things to do around the house.", items:[:], owner:casey).save()

//			println "Creating todo items..."
//			new Todo(name:"Take out trash", list:homeList, isNeeded:true).save()
//			new Todo(name:"Fix leaky pipe", list:homeList, isNeeded:true).save()
	}
	
	private clearSampleData() {
		//Mucho cuidado con el orden para que no se produzcan errores de referencias a FKs
		println "Borrando datos ..."
		Comentario.executeUpdate("delete from Comentario")
		Estado.executeUpdate("delete from Estado")
		Imagen.executeUpdate("delete from Imagen")
		Linea_Pedido.executeUpdate("delete from Linea_Pedido")
		Pedido.executeUpdate("delete from Pedido")
		Producto.executeUpdate("delete from Producto")
		Usuario.executeUpdate("delete from Usuario")
		Rol_Usuario.executeUpdate("delete from Rol_Usuario")
		Categoria.executeUpdate("delete from Categoria")
		println "Borrado terminado"
	}
}
