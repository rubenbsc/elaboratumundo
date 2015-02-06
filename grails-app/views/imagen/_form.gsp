<%@ page import="trabajov3.Imagen" %>



<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'imgb64', 'error')} required">
	<label for="imgb64">
		<g:message code="imagen.imgb64.label" default="Imgb64" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="imgb64" required="" value="${imagenInstance?.imgb64}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="imagen.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="position" type="number" value="${imagenInstance.position}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="imagen.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${trabajov3.Producto.list()}" optionKey="id" required="" value="${imagenInstance?.producto?.id}" class="many-to-one"/>

</div>

