
<%@ page import="trabajov3.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pedido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pedido">
			
				<g:if test="${pedidoInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="pedido.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${pedidoInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="pedido.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${pedidoInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="pedido.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="usuario" action="show" id="${pedidoInstance?.cliente?.id}">${pedidoInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="pedido.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${pedidoInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.iva}">
				<li class="fieldcontain">
					<span id="iva-label" class="property-label"><g:message code="pedido.iva.label" default="Iva" /></span>
					
						<span class="property-value" aria-labelledby="iva-label"><g:fieldValue bean="${pedidoInstance}" field="iva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="pedido.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${pedidoInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="pedido.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${pedidoInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="pedido.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:fieldValue bean="${pedidoInstance}" field="region"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.shipmentType}">
				<li class="fieldcontain">
					<span id="shipmentType-label" class="property-label"><g:message code="pedido.shipmentType.label" default="Shipment Type" /></span>
					
						<span class="property-value" aria-labelledby="shipmentType-label"><g:fieldValue bean="${pedidoInstance}" field="shipmentType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.shippingCost}">
				<li class="fieldcontain">
					<span id="shippingCost-label" class="property-label"><g:message code="pedido.shippingCost.label" default="Shipping Cost" /></span>
					
						<span class="property-value" aria-labelledby="shippingCost-label"><g:fieldValue bean="${pedidoInstance}" field="shippingCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="pedido.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:link controller="estado" action="show" id="${pedidoInstance?.status?.id}">${pedidoInstance?.status?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.totalCost}">
				<li class="fieldcontain">
					<span id="totalCost-label" class="property-label"><g:message code="pedido.totalCost.label" default="Total Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalCost-label"><g:fieldValue bean="${pedidoInstance}" field="totalCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.totalwhithoutiva}">
				<li class="fieldcontain">
					<span id="totalwhithoutiva-label" class="property-label"><g:message code="pedido.totalwhithoutiva.label" default="Totalwhithoutiva" /></span>
					
						<span class="property-value" aria-labelledby="totalwhithoutiva-label"><g:fieldValue bean="${pedidoInstance}" field="totalwhithoutiva"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pedidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
