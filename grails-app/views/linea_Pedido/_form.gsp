<%@ page import="trabajov3.Linea_Pedido" %>



<div class="fieldcontain ${hasErrors(bean: linea_PedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="linea_Pedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${trabajov3.Pedido.list()}" optionKey="id" required="" value="${linea_PedidoInstance?.pedido?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linea_PedidoInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="linea_Pedido.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${trabajov3.Producto.list()}" optionKey="id" required="" value="${linea_PedidoInstance?.product?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linea_PedidoInstance, field: 'totalPrice', 'error')} required">
	<label for="totalPrice">
		<g:message code="linea_Pedido.totalPrice.label" default="Total Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalPrice" value="${fieldValue(bean: linea_PedidoInstance, field: 'totalPrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: linea_PedidoInstance, field: 'totalWeight', 'error')} required">
	<label for="totalWeight">
		<g:message code="linea_Pedido.totalWeight.label" default="Total Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalWeight" value="${fieldValue(bean: linea_PedidoInstance, field: 'totalWeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: linea_PedidoInstance, field: 'unitPrice', 'error')} required">
	<label for="unitPrice">
		<g:message code="linea_Pedido.unitPrice.label" default="Unit Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitPrice" value="${fieldValue(bean: linea_PedidoInstance, field: 'unitPrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: linea_PedidoInstance, field: 'units', 'error')} required">
	<label for="units">
		<g:message code="linea_Pedido.units.label" default="Units" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="units" type="number" value="${linea_PedidoInstance.units}" required=""/>

</div>

