<%@ page import="trabajov3.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="categoria.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${categoriaInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="categoria.productos.label" default="Productos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.productos?}" var="p">
    <li><g:link controller="producto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="producto" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'producto.label', default: 'Producto')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="categoria.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${categoriaInstance?.title}"/>

</div>

