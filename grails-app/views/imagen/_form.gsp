<%@ page import="trabajov3.Imagen" %>



<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'img', 'error')} ">
	<label for="img">
		<g:message code="imagen.img.label" default="Img" />
		
	</label>
	<input type="file" id="img" name="img" />

</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'fileType', 'error')} ">
	<label for="fileType">
		<g:message code="imagen.fileType.label" default="File Type" />
		
	</label>
	<g:textField name="fileType" value="${imagenInstance?.fileType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="imagen.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${imagenInstance?.fileName}"/>

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

