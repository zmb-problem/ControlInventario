<%@ page import="controlinventario.Inventario" %>



<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="inventario.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${inventarioInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'fechaCierre', 'error')} required">
	<label for="fechaCierre">
		<g:message code="inventario.fechaCierre.label" default="Fecha Cierre" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCierre" precision="day"  value="${inventarioInstance?.fechaCierre}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="inventario.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${inventarioInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="inventario.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="resumen" required="" value="${inventarioInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'finalizado', 'error')} required">
	<label for="finalizado">
		<g:message code="inventario.finalizado.label" default="Finalizado" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="inventario.productos.label" default="Productos" />
		
	</label>
	<g:select name="productos" from="${controlinventario.InventarioProducto.list()}" multiple="multiple" optionKey="id" size="5" value="${inventarioInstance?.productos*.id}" class="many-to-many"/>

</div>

