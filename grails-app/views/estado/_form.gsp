<%@ page import="trabajov3.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="estado.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${estadoInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="estado.pedidos.label" default="Pedidos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${estadoInstance?.pedidos?}" var="p">
    <li><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pedido" action="create" params="['estado.id': estadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pedido.label', default: 'Pedido')])}</g:link>
</li>
</ul>


</div>

