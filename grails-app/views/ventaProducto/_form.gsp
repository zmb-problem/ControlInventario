<%@ page import="controlinventario.VentaProducto" %>



<div class="fieldcontain ${hasErrors(bean: ventaProductoInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="ventaProducto.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${controlinventario.Producto.list()}" optionKey="id" required="" value="${ventaProductoInstance?.producto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaProductoInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="ventaProducto.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${ventaProductoInstance.cantidad}" required=""/>

</div>

