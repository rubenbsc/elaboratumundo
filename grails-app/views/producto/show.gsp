
<%@ page import="trabajov3.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="producto.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="categoria" action="show" id="${productoInstance?.category?.id}">${productoInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="producto.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${productoInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.cost}">
				<li class="fieldcontain">
					<span id="cost-label" class="property-label"><g:message code="producto.cost.label" default="Cost" /></span>
					
						<span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${productoInstance}" field="cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.fotos}">
				<li class="fieldcontain">
					<span id="fotos-label" class="property-label"><g:message code="producto.fotos.label" default="Fotos" /></span>
					
						<g:each in="${productoInstance.fotos}" var="f">
						<span class="property-value" aria-labelledby="fotos-label"><g:link controller="imagen" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.iva}">
				<li class="fieldcontain">
					<span id="iva-label" class="property-label"><g:message code="producto.iva.label" default="Iva" /></span>
					
						<span class="property-value" aria-labelledby="iva-label"><g:fieldValue bean="${productoInstance}" field="iva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.lineas}">
				<li class="fieldcontain">
					<span id="lineas-label" class="property-label"><g:message code="producto.lineas.label" default="Lineas" /></span>
					
						<g:each in="${productoInstance.lineas}" var="l">
						<span class="property-value" aria-labelledby="lineas-label"><g:link controller="linea_Pedido" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.little_des}">
				<li class="fieldcontain">
					<span id="little_des-label" class="property-label"><g:message code="producto.little_des.label" default="Littledes" /></span>
					
						<span class="property-value" aria-labelledby="little_des-label"><g:fieldValue bean="${productoInstance}" field="little_des"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.long_des}">
				<li class="fieldcontain">
					<span id="long_des-label" class="property-label"><g:message code="producto.long_des.label" default="Longdes" /></span>
					
						<span class="property-value" aria-labelledby="long_des-label"><g:fieldValue bean="${productoInstance}" field="long_des"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="producto.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productoInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.novelty}">
				<li class="fieldcontain">
					<span id="novelty-label" class="property-label"><g:message code="producto.novelty.label" default="Novelty" /></span>
					
						<span class="property-value" aria-labelledby="novelty-label"><g:fieldValue bean="${productoInstance}" field="novelty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.totalVotes}">
				<li class="fieldcontain">
					<span id="totalVotes-label" class="property-label"><g:message code="producto.totalVotes.label" default="Total Votes" /></span>
					
						<span class="property-value" aria-labelledby="totalVotes-label"><g:fieldValue bean="${productoInstance}" field="totalVotes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.unitPrice}">
				<li class="fieldcontain">
					<span id="unitPrice-label" class="property-label"><g:message code="producto.unitPrice.label" default="Unit Price" /></span>
					
						<span class="property-value" aria-labelledby="unitPrice-label"><g:fieldValue bean="${productoInstance}" field="unitPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.units}">
				<li class="fieldcontain">
					<span id="units-label" class="property-label"><g:message code="producto.units.label" default="Units" /></span>
					
						<span class="property-value" aria-labelledby="units-label"><g:fieldValue bean="${productoInstance}" field="units"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.valoration}">
				<li class="fieldcontain">
					<span id="valoration-label" class="property-label"><g:message code="producto.valoration.label" default="Valoration" /></span>
					
						<span class="property-value" aria-labelledby="valoration-label"><g:fieldValue bean="${productoInstance}" field="valoration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="producto.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${productoInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
