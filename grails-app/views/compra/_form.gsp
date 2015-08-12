<%@ page import="controlinventario.Compra" %>

<script type="text/javascript">
    $(document).ready(function()
    {
        $("#datepicker").datepicker({dateFormat: 'yy/mm/dd'});
    })
</script>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'noOrden', 'error')} required">
	<label for="noOrden">
		<g:message code="compra.noOrden.label" default="No Orden" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="noOrden" required="" value="${compraInstance?.noOrden}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="compra.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
    <g:textField name="fecha" id="datepicker" value="${compraInstance?.fecha}" />
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="compra.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${compraInstance?.descripcion}"/>
    <g:datePicker name="a" default="none" noSelection="['':'']" />
    <g:datePicker name="fechaInicio" precision="day"  value="${inventarioInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="compra.productos.label" default="Productos" />
		
	</label>
	<g:select name="productos" from="${controlinventario.CompraProducto.list()}" multiple="multiple" optionKey="id" size="5" value="${compraInstance?.productos*.id}" class="many-to-many"/>

</div>




