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
