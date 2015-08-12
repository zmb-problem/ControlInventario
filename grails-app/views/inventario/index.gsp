
<%@ page import="controlinventario.Inventario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inventario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'inventario.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="fechaCierre" title="${message(code: 'inventario.fechaCierre.label', default: 'Fecha Cierre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'inventario.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'inventario.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="finalizado" title="${message(code: 'inventario.finalizado.label', default: 'Finalizado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inventarioInstanceList}" status="i" var="inventarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inventarioInstance.id}">${fieldValue(bean: inventarioInstance, field: "fechaInicio")}</g:link></td>
					
						<td><g:formatDate date="${inventarioInstance.fechaCierre}" /></td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "resumen")}</td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "finalizado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inventarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
