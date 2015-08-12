
<%@ page import="controlinventario.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-producto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigoBarras" title="${message(code: 'producto.codigoBarras.label', default: 'Codigo Barras')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'producto.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'producto.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="producto.tipoBulto.label" default="Tipo Bulto" /></th>
					
						<g:sortableColumn property="fechaAlta" title="${message(code: 'producto.fechaAlta.label', default: 'Fecha Alta')}" />
					
						<g:sortableColumn property="stockMinimo" title="${message(code: 'producto.stockMinimo.label', default: 'Stock Minimo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productoInstanceList}" status="i" var="productoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "codigoBarras")}</g:link></td>
					
						<td>${fieldValue(bean: productoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "tipoBulto")}</td>
					
						<td><g:formatDate date="${productoInstance.fechaAlta}" /></td>
					
						<td>${fieldValue(bean: productoInstance, field: "stockMinimo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
