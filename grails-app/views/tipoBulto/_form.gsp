<%@ page import="controlinventario.TipoBulto" %>



<div class="fieldcontain ${hasErrors(bean: tipoBultoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="tipoBulto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${tipoBultoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tipoBultoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="tipoBulto.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${tipoBultoInstance?.descripcion}"/>

</div>

