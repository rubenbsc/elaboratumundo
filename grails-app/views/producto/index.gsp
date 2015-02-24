
<%@ page import="trabajov3.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Categorías</h2>
						<div class="panel-group category-products">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"></h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="featured_items">
						<h2 class="title text-center">Productos</h2>
						
						<g:each in="${productoInstanceList}" status="i" var="productoInstance">
						
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<g:link action="show" id="${productoInstance.id}"><img src="${createLink(action:'viewMainImage', id:productoInstance?.id)}"/></g:link>
											<h2>${fieldValue(bean: productoInstance, field: "unitPrice")} €</h2>
											<p><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "name")}</g:link></p>
										</div>
									</div>
									
									<div class="choose">
									</div>
								</div>
							</div>
							
						</g:each> <!-- Fin del bucle de productos -->
						
					</div>
				</div>
				
			</div>
		</div>
		
		
<%--		<a href="#list-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
<%--		<div class="nav" role="navigation">--%>
<%--			<ul>--%>
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
<%--				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
<%--		<div id="list-producto" class="content scaffold-list" role="main">--%>
<%--			<h1><g:message code="default.list.label" args="[entityName]" /></h1>--%>
<%--			<g:if test="${flash.message}">--%>
<%--				<div class="message" role="status">${flash.message}</div>--%>
<%--			</g:if>--%>
<%--			<table>--%>
<%--				<thead>--%>
<%--					<tr>--%>
<%--						<th><g:message code="name" default="Nombre" /></th>--%>
<%--						<g:sortableColumn property="cost+cost" title="${message(code: 'producto.cost.label', default: 'Precio')}" />--%>
<%--						<g:sortableColumn property="iva" title="${message(code: 'producto.iva.label', default: 'Iva')}" />--%>
<%--						<g:sortableColumn property="little_des" title="${message(code: 'producto.little_des.label', default: 'Descripción corta')}" />			--%>
<%--						<g:sortableColumn property="category" title="${message(code: 'producto.little_des.label', default: 'Categoría')}" />--%>
<%--						<!--<g:message code="producto.category.label" default="Category" />--%>
<%--						-->--%>
<%--						<!-- <g:sortableColumn property="long_des" title="${message(code: 'producto.long_des.label', default: 'Descripción Larga')}" /> --%>
<%--						-->--%>
<%--					</tr>--%>
<%--				</thead>--%>
<%--				<tbody>--%>
<%--					<g:each in="${productoInstanceList}" status="i" var="productoInstance">--%>
<%--						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--%>
<%--							<td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "name")}</g:link></td>--%>
<%--							<td>${fieldValue(bean: productoInstance, field: "cost")}</td>--%>
<%--							<td>${fieldValue(bean: productoInstance, field: "iva")}</td>--%>
<%--							<td>${fieldValue(bean: productoInstance, field: "little_des")}</td>		--%>
<%--							<td>${fieldValue(bean: productoInstance.category, field: "title")}</td>							--%>
<%--							<td><img src="${createLink(action:'viewMainImage', id:productoInstance?.id)}"/></td>				--%>
<%--						</tr>--%>
<%--					</g:each>				--%>
<%--				</tbody>--%>
<%--			</table>--%>
<%--			--%>
<%--			<div class="pagination">--%>
<%--				<g:paginate total="${productoInstanceCount ?: 0}" />--%>
<%--			</div>--%>
<%--			--%>
<%--		</div>--%>
	</body>
</html>
