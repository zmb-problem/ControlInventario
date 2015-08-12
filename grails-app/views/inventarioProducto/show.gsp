
<%@ page import="controlinventario.InventarioProducto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventarioProducto.label', default: 'InventarioProducto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inventarioProducto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inventarioProducto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inventarioProducto">
			
				<g:if test="${inventarioProductoInstance?.producto}">
				<li class="fieldcontain">
					<span id="producto-label" class="property-label"><g:message code="inventarioProducto.producto.label" default="Producto" /></span>
					
						<span class="property-value" aria-labelledby="producto-label"><g:link controller="producto" action="show" id="${inventarioProductoInstance?.producto?.id}">${inventarioProductoInstance?.producto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioProductoInstance?.existenciasReales}">
				<li class="fieldcontain">
					<span id="existenciasReales-label" class="property-label"><g:message code="inventarioProducto.existenciasReales.label" default="Existencias Reales" /></span>
					
						<span class="property-value" aria-labelledby="existenciasReales-label"><g:fieldValue bean="${inventarioProductoInstance}" field="existenciasReales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioProductoInstance?.faltantes}">
				<li class="fieldcontain">
					<span id="faltantes-label" class="property-label"><g:message code="inventarioProducto.faltantes.label" default="Faltantes" /></span>
					
						<span class="property-value" aria-labelledby="faltantes-label"><g:fieldValue bean="${inventarioProductoInstance}" field="faltantes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioProductoInstance?.sobrantes}">
				<li class="fieldcontain">
					<span id="sobrantes-label" class="property-label"><g:message code="inventarioProducto.sobrantes.label" default="Sobrantes" /></span>
					
						<span class="property-value" aria-labelledby="sobrantes-label"><g:fieldValue bean="${inventarioProductoInstance}" field="sobrantes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:inventarioProductoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${inventarioProductoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
