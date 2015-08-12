<%@ page import="controlinventario.CompraProducto" %>



<div class="fieldcontain ${hasErrors(bean: compraProductoInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="compraProducto.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${controlinventario.Producto.list()}" optionKey="id" required="" value="${compraProductoInstance?.producto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compraProductoInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="compraProducto.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${compraProductoInstance.cantidad}" required=""/>

</div>

