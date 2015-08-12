<%@ page import="controlinventario.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'codigoBarras', 'error')} required">
	<label for="codigoBarras">
		<g:message code="producto.codigoBarras.label" default="Codigo Barras" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoBarras" required="" value="${productoInstance?.codigoBarras}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${productoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="producto.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${productoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'tipoBulto', 'error')} required">
	<label for="tipoBulto">
		<g:message code="producto.tipoBulto.label" default="Tipo Bulto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoBulto" name="tipoBulto.id" from="${controlinventario.TipoBulto.list()}" optionKey="id" required="" value="${productoInstance?.tipoBulto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'fechaAlta', 'error')} required">
	<label for="fechaAlta">
		<g:message code="producto.fechaAlta.label" default="Fecha Alta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAlta" precision="day"  value="${productoInstance?.fechaAlta}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'stockMinimo', 'error')} required">
	<label for="stockMinimo">
		<g:message code="producto.stockMinimo.label" default="Stock Minimo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="stockMinimo" type="number" value="${productoInstance.stockMinimo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'stockMaximo', 'error')} required">
	<label for="stockMaximo">
		<g:message code="producto.stockMaximo.label" default="Stock Maximo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="stockMaximo" type="number" value="${productoInstance.stockMaximo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'fechaActualizacion', 'error')} required">
	<label for="fechaActualizacion">
		<g:message code="producto.fechaActualizacion.label" default="Fecha Actualizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaActualizacion" precision="day"  value="${productoInstance?.fechaActualizacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'fotoProducto', 'error')} required">
	<label for="fotoProducto">
		<g:message code="producto.fotoProducto.label" default="Foto Producto" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="fotoProducto" name="fotoProducto" />

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="producto.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${productoInstance?.estado}"/>

</div>

