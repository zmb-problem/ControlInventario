<%@ page import="controlinventario.Venta" %>



<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'noFactura', 'error')} required">
	<label for="noFactura">
		<g:message code="venta.noFactura.label" default="No Factura" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="noFactura" required="" value="${ventaInstance?.noFactura}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="venta.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${ventaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="venta.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${ventaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="venta.productos.label" default="Productos" />
		
	</label>
	<g:select name="productos" from="${controlinventario.VentaProducto.list()}" multiple="multiple" optionKey="id" size="5" value="${ventaInstance?.productos*.id}" class="many-to-many"/>

</div>

