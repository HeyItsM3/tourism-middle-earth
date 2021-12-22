<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<jsp:include page="partials/head.jsp"></jsp:include>
</head>
<body>
	<!-- HEADER SECTION -->
	<jsp:include page="partials/header.jsp"></jsp:include>

	<main class="container">

		<c:if test="${usuario != null && !usuario.esValido()}">
			<div class="alert alert-danger">
				<p>Se encontraron errores al actualizar el usuario.</p>
			</div>
		</c:if>

		<form action="/torre/editar-usuario.do" method="post">
			<input type="hidden" name="id" value="${usuario.id}">
			<jsp:include page="/form-usuario.jsp"></jsp:include>
		</form>
	</main>
	<!-- FOOTER -->
	<jsp:include page="partials/footer.jsp"></jsp:include>
</body>
</html>
