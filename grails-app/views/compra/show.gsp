
<%@ page import="controlinventario.Compra" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-compra" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list compra">
			
				<g:if test="${compraInstance?.noOrden}">
				<li class="fieldcontain">
					<span id="noOrden-label" class="property-label"><g:message code="compra.noOrden.label" default="No Orden" /></span>
					
						<span class="property-value" aria-labelledby="noOrden-label"><g:fieldValue bean="${compraInstance}" field="noOrden"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compraInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="compra.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${compraInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compraInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="compra.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${compraInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compraInstance?.productos}">
				<li class="fieldcontain">
					<span id="productos-label" class="property-label"><g:message code="compra.productos.label" default="Productos" /></span>
					
						<g:each in="${compraInstance.productos}" var="p">
						<span class="property-value" aria-labelledby="productos-label"><g:link controller="compraProducto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:compraInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${compraInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
