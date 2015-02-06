<%@ page import="trabajov3.Rol_Usuario" %>



<div class="fieldcontain ${hasErrors(bean: rol_UsuarioInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="rol_Usuario.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${rol_UsuarioInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rol_UsuarioInstance, field: 'usuarios', 'error')} ">
	<label for="usuarios">
		<g:message code="rol_Usuario.usuarios.label" default="Usuarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rol_UsuarioInstance?.usuarios?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['rol_Usuario.id': rol_UsuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>


</div>

