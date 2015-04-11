
<%@ page import="trabajov3.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
<%--		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />--%>
<%--		<title><g:message code="default.show.label" args="[entityName]" /></title>--%>
	</head>
	<body>

		<div id="show-pedido" class="content scaffold-show" role="main">
<%--			<h1><g:message code="default.show.label" args="[entityName]" /></h1>--%>
<%--			<g:if test="${flash.message}">--%>
<%--			<div class="message" role="status">${flash.message}</div>--%>
<%--			</g:if>--%>

<%--			<g:form url="[resource:pedidoInstance, action:'delete']" method="DELETE">--%>
<%--				<fieldset class="buttons">--%>
<%--					<g:link class="edit" action="edit" resource="${pedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--%>
<%--					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--%>
<%--				</fieldset>--%>
<%--			</g:form>--%>
<%--			--%>
			
			<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Inicio</a></li>
				  <li class="active">Carrito de compra</li>
				</ol>
			</div>
			<g:if test="${flash.message}">
				<div class="message" style="display: block">${flash.message}</div>
				<br>
			</g:if>

			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image"></td>
							<td class="description">Artículo</td>
							<td class="price">Precio</td>
							<td class="quantity">Cantidad</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>

						<g:each in="${pedidoInstance?.lineas}" status="i" var="linea_PedidoInstance">
							<tr>
								<td class="">								
									<a href="">
										<img src="${createLink(controller:'Producto', action:'viewMainImage', id:linea_PedidoInstance.product.id)}" width="100px" height="100px"></a>
								</td>
								<td class="cart_description">
								<h4><a href="">${fieldValue(bean: linea_PedidoInstance, field: "product.name")}</a></h4>
								<p>Nº Referencia: ${fieldValue(bean: linea_PedidoInstance, field: "product.id")}</p>
								</td>
								<td class="cart_price">
									<p>${fieldValue(bean: linea_PedidoInstance, field: "unitPrice")} €</p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
										<g:link controller="Pedido" action="aumentarCantidad" params="[lineaId: linea_PedidoInstance.id]" class="cart_quantity_up"> + </g:link>
										<input class="cart_quantity_input" type="text" name="quantity" value="${fieldValue(bean: linea_PedidoInstance, field: "units")}" autocomplete="off" size="2">
										<g:link controller="Pedido" action="disminuirCantidad" params="[lineaId: linea_PedidoInstance.id]" class="cart_quantity_down"> - </g:link>
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price">${fieldValue(bean: linea_PedidoInstance, field: "totalPrice")} €</p>
								</td>
								<td class="cart_delete">
									<g:link controller="Pedido" action="eliminarDelCarrito" params="[lineaId: linea_PedidoInstance.id]" class="cart_quantity_delete">
										<i class="fa fa-times"></i>
									</g:link>
<%--									<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
								</td>
							</tr>
						
						</g:each>
		
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
			
<%--				<h3>What would you like to do next?</h3>				
<%--				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>--%>
<%--				<h3>¿Qué te gustaría hacer ahora?</h3>--%>
<%--				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>--%>
<%--			</div>--%>
<%--			<div class="row">--%>
<%--				<div class="col-sm-6">--%>
<%--					<div class="chose_area">--%>
<%--						<ul class="user_option">--%>
<%--							<li>--%>
<%--								<input type="checkbox">--%>
<%--								<label>Use Coupon Code</label>--%>
<%--							</li>--%>
<%--							<li>--%>
<%--								<input type="checkbox">--%>
<%--								<label>Use Gift Voucher</label>--%>
<%--							</li>--%>
<%--							<li>--%>
<%--								<input type="checkbox">--%>
<%--								<label>Estimate Shipping & Taxes</label>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--						<ul class="user_info">--%>
<%--							<li class="single_field">--%>
<%--								<label>Country:</label>--%>
<%--								<select>--%>
<%--									<option>United States</option>--%>
<%--									<option>Bangladesh</option>--%>
<%--									<option>UK</option>--%>
<%--									<option>India</option>--%>
<%--									<option>Pakistan</option>--%>
<%--									<option>Ucrane</option>--%>
<%--									<option>Canada</option>--%>
<%--									<option>Dubai</option>--%>
<%--								</select>--%>
<%--								--%>
<%--							</li>--%>
<%--							<li class="single_field">--%>
<%--								<label>Region / State:</label>--%>
<%--								<select>--%>
<%--									<option>Select</option>--%>
<%--									<option>Dhaka</option>--%>
<%--									<option>London</option>--%>
<%--									<option>Dillih</option>--%>
<%--									<option>Lahore</option>--%>
<%--									<option>Alaska</option>--%>
<%--									<option>Canada</option>--%>
<%--									<option>Dubai</option>--%>
<%--								</select>--%>
<%--							--%>
<%--							</li>--%>
<%--							<li class="single_field zip-field">--%>
<%--								<label>Zip Code:</label>--%>
<%--								<input type="text">--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--						<a class="btn btn-default update" href="">Get Quotes</a>--%>
<%--						<a class="btn btn-default check_out" href="">Continue</a>--%>
<%--					</div>--%>
<%--				</div>--%>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>Subtotal pedido<span>${pedidoInstance?.totalCost} €</span></li>							
							<li>Gastos de envío <span>Gratis</span></li>
							<li>Total <span>${pedidoInstance?.totalCost} €</span></li>
							<li>IVA Incluido <span></span></li>
						</ul>
<%--							<a class="btn btn-default update" href="">Update</a>--%>
							<div style="text-align: center"><a class="btn btn-default check_out" href="">Pagar</a></div>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
			
		</div>
	</body>
</html>
