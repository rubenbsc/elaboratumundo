<%@ page import="trabajov3.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="pedido.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${pedidoInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="pedido.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${pedidoInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="pedido.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${trabajov3.Usuario.list()}" optionKey="id" required="" value="${pedidoInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="pedido.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${pedidoInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'iva', 'error')} required">
	<label for="iva">
		<g:message code="pedido.iva.label" default="Iva" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="iva" value="${fieldValue(bean: pedidoInstance, field: 'iva')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="pedido.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${pedidoInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'postalCode', 'error')} required">
	<label for="postalCode">
		<g:message code="pedido.postalCode.label" default="Postal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postalCode" required="" value="${pedidoInstance?.postalCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'region', 'error')} required">
	<label for="region">
		<g:message code="pedido.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="region" required="" value="${pedidoInstance?.region}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'shipmentType', 'error')} required">
	<label for="shipmentType">
		<g:message code="pedido.shipmentType.label" default="Shipment Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shipmentType" required="" value="${pedidoInstance?.shipmentType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'shippingCost', 'error')} required">
	<label for="shippingCost">
		<g:message code="pedido.shippingCost.label" default="Shipping Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="shippingCost" value="${fieldValue(bean: pedidoInstance, field: 'shippingCost')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="pedido.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="status" name="status.id" from="${trabajov3.Estado.list()}" optionKey="id" required="" value="${pedidoInstance?.status?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'totalCost', 'error')} required">
	<label for="totalCost">
		<g:message code="pedido.totalCost.label" default="Total Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalCost" value="${fieldValue(bean: pedidoInstance, field: 'totalCost')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'totalwhithoutiva', 'error')} required">
	<label for="totalwhithoutiva">
		<g:message code="pedido.totalwhithoutiva.label" default="Totalwhithoutiva" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalwhithoutiva" value="${fieldValue(bean: pedidoInstance, field: 'totalwhithoutiva')}" required=""/>

</div>

