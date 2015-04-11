
<%@ page import="trabajov3.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="ID" title="${message(code: 'pedido.id.label', default: 'ID')}" />
						
						<g:sortableColumn property="address" title="${message(code: 'pedido.address.label', default: 'Dirección')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'pedido.city.label', default: 'Provincia')}" />
					
						<th><g:message code="pedido.cliente.label" default="Cliente" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'pedido.date.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="iva" title="${message(code: 'pedido.iva.label', default: 'Iva')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'pedido.phone.label', default: 'Teléfono')}" />
						
						<g:sortableColumn property="status" title="${message(code: 'pedido.status.label', default: 'Estado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pedidoInstance.id}">${fieldValue(bean: pedidoInstance, field: "id")}</g:link></td>
						
						<td>${fieldValue(bean: pedidoInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "cliente.username")}</td>
					
						<td><g:formatDate date="${pedidoInstance.date}" /></td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "iva")}</td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "phone")}</td>
						
						<td>${fieldValue(bean: pedidoInstance, field: "status.description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
