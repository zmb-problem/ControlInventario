
<%@ page import="controlinventario.Compra" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compra" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="noOrden" title="${message(code: 'compra.noOrden.label', default: 'No Orden')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'compra.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'compra.descripcion.label', default: 'Descripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compraInstanceList}" status="i" var="compraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compraInstance.id}">${fieldValue(bean: compraInstance, field: "noOrden")}</g:link></td>
					
						<td><g:formatDate date="${compraInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: compraInstance, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${compraInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
