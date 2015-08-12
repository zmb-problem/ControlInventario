<%@ page import="controlinventario.InventarioProducto" %>



<div class="fieldcontain ${hasErrors(bean: inventarioProductoInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="inventarioProducto.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${controlinventario.Producto.list()}" optionKey="id" required="" value="${inventarioProductoInstance?.producto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioProductoInstance, field: 'existenciasReales', 'error')} required">
	<label for="existenciasReales">
		<g:message code="inventarioProducto.existenciasReales.label" default="Existencias Reales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="existenciasReales" type="number" value="${inventarioProductoInstance.existenciasReales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioProductoInstance, field: 'faltantes', 'error')} required">
	<label for="faltantes">
		<g:message code="inventarioProducto.faltantes.label" default="Faltantes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="faltantes" type="number" value="${inventarioProductoInstance.faltantes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: inventarioProductoInstance, field: 'sobrantes', 'error')} required">
	<label for="sobrantes">
		<g:message code="inventarioProducto.sobrantes.label" default="Sobrantes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sobrantes" type="number" value="${inventarioProductoInstance.sobrantes}" required=""/>

</div>

