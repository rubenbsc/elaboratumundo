<%@ page import="trabajov3.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="usuario.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${usuarioInstance?.birthDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="usuario.comentarios.label" default="Comentarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.comentarios?}" var="c">
    <li><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comentario" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comentario.label', default: 'Comentario')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="usuario.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${usuarioInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="usuario.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" required="" value="${usuarioInstance?.firstname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="usuario.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${usuarioInstance?.lastname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="usuario.pedidos.label" default="Pedidos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.pedidos?}" var="p">
    <li><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pedido" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pedido.label', default: 'Pedido')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="usuario.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol" name="rol.id" from="${trabajov3.Rol_Usuario.list()}" optionKey="id" required="" value="${usuarioInstance?.rol?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="usuario.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${usuarioInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioInstance?.username}"/>

</div>

