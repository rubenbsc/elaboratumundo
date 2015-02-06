
<%@ page import="trabajov3.Linea_Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'linea_Pedido.label', default: 'Linea_Pedido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-linea_Pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-linea_Pedido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list linea_Pedido">
			
				<g:if test="${linea_PedidoInstance?.pedido}">
				<li class="fieldcontain">
					<span id="pedido-label" class="property-label"><g:message code="linea_Pedido.pedido.label" default="Pedido" /></span>
					
						<span class="property-value" aria-labelledby="pedido-label"><g:link controller="pedido" action="show" id="${linea_PedidoInstance?.pedido?.id}">${linea_PedidoInstance?.pedido?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${linea_PedidoInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="linea_Pedido.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="producto" action="show" id="${linea_PedidoInstance?.product?.id}">${linea_PedidoInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${linea_PedidoInstance?.totalPrice}">
				<li class="fieldcontain">
					<span id="totalPrice-label" class="property-label"><g:message code="linea_Pedido.totalPrice.label" default="Total Price" /></span>
					
						<span class="property-value" aria-labelledby="totalPrice-label"><g:fieldValue bean="${linea_PedidoInstance}" field="totalPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linea_PedidoInstance?.totalWeight}">
				<li class="fieldcontain">
					<span id="totalWeight-label" class="property-label"><g:message code="linea_Pedido.totalWeight.label" default="Total Weight" /></span>
					
						<span class="property-value" aria-labelledby="totalWeight-label"><g:fieldValue bean="${linea_PedidoInstance}" field="totalWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linea_PedidoInstance?.unitPrice}">
				<li class="fieldcontain">
					<span id="unitPrice-label" class="property-label"><g:message code="linea_Pedido.unitPrice.label" default="Unit Price" /></span>
					
						<span class="property-value" aria-labelledby="unitPrice-label"><g:fieldValue bean="${linea_PedidoInstance}" field="unitPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linea_PedidoInstance?.units}">
				<li class="fieldcontain">
					<span id="units-label" class="property-label"><g:message code="linea_Pedido.units.label" default="Units" /></span>
					
						<span class="property-value" aria-labelledby="units-label"><g:fieldValue bean="${linea_PedidoInstance}" field="units"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:linea_PedidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${linea_PedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
