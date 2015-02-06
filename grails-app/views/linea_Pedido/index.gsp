
<%@ page import="trabajov3.Linea_Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'linea_Pedido.label', default: 'Linea_Pedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-linea_Pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-linea_Pedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="linea_Pedido.pedido.label" default="Pedido" /></th>
					
						<th><g:message code="linea_Pedido.product.label" default="Product" /></th>
					
						<g:sortableColumn property="totalPrice" title="${message(code: 'linea_Pedido.totalPrice.label', default: 'Total Price')}" />
					
						<g:sortableColumn property="totalWeight" title="${message(code: 'linea_Pedido.totalWeight.label', default: 'Total Weight')}" />
					
						<g:sortableColumn property="unitPrice" title="${message(code: 'linea_Pedido.unitPrice.label', default: 'Unit Price')}" />
					
						<g:sortableColumn property="units" title="${message(code: 'linea_Pedido.units.label', default: 'Units')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${linea_PedidoInstanceList}" status="i" var="linea_PedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${linea_PedidoInstance.id}">${fieldValue(bean: linea_PedidoInstance, field: "pedido")}</g:link></td>
					
						<td>${fieldValue(bean: linea_PedidoInstance, field: "product")}</td>
					
						<td>${fieldValue(bean: linea_PedidoInstance, field: "totalPrice")}</td>
					
						<td>${fieldValue(bean: linea_PedidoInstance, field: "totalWeight")}</td>
					
						<td>${fieldValue(bean: linea_PedidoInstance, field: "unitPrice")}</td>
					
						<td>${fieldValue(bean: linea_PedidoInstance, field: "units")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${linea_PedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
