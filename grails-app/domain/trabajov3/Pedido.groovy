package trabajov3

import java.sql.Date

class Pedido {
	
	Date date
	String address
	String city
	String region
	String postalCode
	String phone
	String shipmentType
	Double shippingCost
	Double totalwhithoutiva
	Double iva
	Double totalCost
	
	static hasMany = [lineas:Linea_Pedido]
	Usuario cliente
	Estado status
	
    static constraints = {
		date nullable:true, blank:true
		address nullable:true, blank:true
		city nullable:true, blank:true
		region nullable:true, blank:true
		postalCode nullable:true, blank:true
		phone nullable:true, blank:true
		shippingCost nullable:true, blank:true
		shipmentType nullable:true, blank:true
		totalwhithoutiva nullable:true, blank:true
		iva nullable:true, blank:true
		totalCost nullable:true, blank:true
    }
	
	static mapping = {
		autoTimestamp true
	}
	
//	static mapping = {
//		
//		table 'Pedido'
//		version false
//		
//		orderID column: 'id_pedido'
//		date column: 'fecha'
//		address column: 'direccion'
//		city column: 'provincia'
//		region column: 'poblacion'
//		postalCode column: 'codigo_postal'
//		phone column: 'telefono'
//		shipmentType column: 'tipo_envio'
//		shippingCost column: 'gastos_envio'
//		totalwhithoutiva column: 'total_sin_iva'
//		iva column: 'iva'
//		totalCost column: 'total_cargo'
//		
//	}
	
	
	
}
