<%@ page import="trabajov3.Comentario" %>



<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'autor', 'error')} required">
	<label for="autor">
		<g:message code="comentario.autor.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autor" name="autor.id" from="${trabajov3.Usuario.list()}" optionKey="id" required="" value="${comentarioInstance?.autor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'text', 'error')} required">
	<label for="text">
		<g:message code="comentario.text.label" default="Text" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="text" required="" value="${comentarioInstance?.text}"/>

</div>

