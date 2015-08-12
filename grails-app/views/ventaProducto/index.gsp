
<%@ page import="controlinventario.VentaProducto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ventaProducto.label', default: 'VentaProducto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ventaProducto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ventaProducto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="ventaProducto.producto.label" default="Producto" /></th>
					
						<g:sortableColumn property="cantidad" title="${message(code: 'ventaProducto.cantidad.label', default: 'Cantidad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ventaProductoInstanceList}" status="i" var="ventaProductoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ventaProductoInstance.id}">${fieldValue(bean: ventaProductoInstance, field: "producto")}</g:link></td>
					
						<td>${fieldValue(bean: ventaProductoInstance, field: "cantidad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ventaProductoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
