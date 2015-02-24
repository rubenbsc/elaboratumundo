<%@ page import="trabajov3.Producto" %>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'fotos', 'error')} ">
	<g:uploadForm name="importUser" controller="ProductoController" action="subirImagen" method="post">
	 
	Seleccionar Archivo.
	<input type="file" id="fileName" name="fileName" width="250px">
	 
	 
	<input type="button" name="importar" id="importar" value="Importar" onclick="confirmar()">
	<!-- onClick="confirmar()"En opnclick if(validarCampos()){} -->
 
	</g:uploadForm>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'fotos', 'error')} ">
	<label for="fotos">
		<g:message code="producto.fotos.label" default="Fotos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productoInstance?.fotos?}" var="f">
    <li><g:link controller="imagen" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="imagen" action="create" params="['producto.id': productoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'imagen.label', default: 'Imagen')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="producto.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${trabajov3.Categoria.list()}" optionKey="id" required="" value="${productoInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="producto.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${trabajov3.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${productoInstance?.comentarios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="producto.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cost" value="${fieldValue(bean: productoInstance, field: 'cost')}" required=""/>

</div>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'iva', 'error')} required">
	<label for="iva">
		<g:message code="producto.iva.label" default="Iva" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="iva" value="${fieldValue(bean: productoInstance, field: 'iva')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'lineas', 'error')} ">
	<label for="lineas">
		<g:message code="producto.lineas.label" default="Lineas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productoInstance?.lineas?}" var="l">
    <li><g:link controller="linea_Pedido" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="linea_Pedido" action="create" params="['producto.id': productoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'linea_Pedido.label', default: 'Linea_Pedido')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'little_des', 'error')} required">
	<label for="little_des">
		<g:message code="producto.little_des.label" default="Littledes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="little_des" required="" value="${productoInstance?.little_des}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'long_des', 'error')} required">
	<label for="long_des">
		<g:message code="producto.long_des.label" default="Longdes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="long_des" required="" value="${productoInstance?.long_des}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="producto.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productoInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'novelty', 'error')} required">
	<label for="novelty">
		<g:message code="producto.novelty.label" default="Novelty" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="novelty" required="" value="${productoInstance?.novelty}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'totalVotes', 'error')} required">
	<label for="totalVotes">
		<g:message code="producto.totalVotes.label" default="Total Votes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalVotes" type="number" value="${productoInstance.totalVotes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'unitPrice', 'error')} required">
	<label for="unitPrice">
		<g:message code="producto.unitPrice.label" default="Unit Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitPrice" value="${fieldValue(bean: productoInstance, field: 'unitPrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'units', 'error')} required">
	<label for="units">
		<g:message code="producto.units.label" default="Units" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="units" type="number" value="${productoInstance.units}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'valoration', 'error')} required">
	<label for="valoration">
		<g:message code="producto.valoration.label" default="Valoration" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valoration" value="${fieldValue(bean: productoInstance, field: 'valoration')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="producto.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" value="${fieldValue(bean: productoInstance, field: 'weight')}" required=""/>

</div>

