
<%@ page import="controlinventario.InventarioProducto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventarioProducto.label', default: 'InventarioProducto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inventarioProducto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inventarioProducto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="inventarioProducto.producto.label" default="Producto" /></th>
					
						<g:sortableColumn property="existenciasReales" title="${message(code: 'inventarioProducto.existenciasReales.label', default: 'Existencias Reales')}" />
					
						<g:sortableColumn property="faltantes" title="${message(code: 'inventarioProducto.faltantes.label', default: 'Faltantes')}" />
					
						<g:sortableColumn property="sobrantes" title="${message(code: 'inventarioProducto.sobrantes.label', default: 'Sobrantes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inventarioProductoInstanceList}" status="i" var="inventarioProductoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inventarioProductoInstance.id}">${fieldValue(bean: inventarioProductoInstance, field: "producto")}</g:link></td>
					
						<td>${fieldValue(bean: inventarioProductoInstance, field: "existenciasReales")}</td>
					
						<td>${fieldValue(bean: inventarioProductoInstance, field: "faltantes")}</td>
					
						<td>${fieldValue(bean: inventarioProductoInstance, field: "sobrantes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inventarioProductoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
