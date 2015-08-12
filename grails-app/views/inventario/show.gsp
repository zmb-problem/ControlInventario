
<%@ page import="controlinventario.Inventario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inventario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inventario">
			
				<g:if test="${inventarioInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="inventario.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${inventarioInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.fechaCierre}">
				<li class="fieldcontain">
					<span id="fechaCierre-label" class="property-label"><g:message code="inventario.fechaCierre.label" default="Fecha Cierre" /></span>
					
						<span class="property-value" aria-labelledby="fechaCierre-label"><g:formatDate date="${inventarioInstance?.fechaCierre}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="inventario.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${inventarioInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.resumen}">
				<li class="fieldcontain">
					<span id="resumen-label" class="property-label"><g:message code="inventario.resumen.label" default="Resumen" /></span>
					
						<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${inventarioInstance}" field="resumen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.finalizado}">
				<li class="fieldcontain">
					<span id="finalizado-label" class="property-label"><g:message code="inventario.finalizado.label" default="Finalizado" /></span>
					
						<span class="property-value" aria-labelledby="finalizado-label"><g:fieldValue bean="${inventarioInstance}" field="finalizado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.productos}">
				<li class="fieldcontain">
					<span id="productos-label" class="property-label"><g:message code="inventario.productos.label" default="Productos" /></span>
					
						<g:each in="${inventarioInstance.productos}" var="p">
						<span class="property-value" aria-labelledby="productos-label"><g:link controller="inventarioProducto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:inventarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${inventarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
