<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<jsp:include page="partials/head.jsp"></jsp:include>
</head>

<body class="body-section" >

<!-- MAIN SECTION -->
	<main class="listado-main content-wrapper">
		<!-- Product -->
		<section class="product-section">
			<div class="product-container content-wrapper">
				<div class="product-content">
					<div class="product-image">
						<img src="/torre/assets/img/product.png" alt="product" />
					</div>
					<div class="product-box">

						<div class="mb-3">
							<label for="name" class="col-form-label">Nombre:</label> <input
								type="text" class="form-control" id="name" name="name" required
								value="${attraction.nombre}">
						</div>
						<div class="mb-3">
							<label for="cost"
								class='col-form-label ${attraction.errores.get("cost") != null ? "is-invalid" : "" }'>Costo:</label>
							<input class="form-control" type="number" id="cost" name="cost"
								required value="${attraction.costo}"></input>
							<div class="invalid-feedback">
								<c:out value='${attraction.errores.get("cost")}'></c:out>
							</div>
						</div>
						<div class="mb-3">
							<label for="duration"
								class='col-form-label ${attraction.errores.get("duration") != null ? "is-invalid" : "" }'>Duration:</label>
							<input class="form-control" type="number" id="duration"
								name="duration" required value="${attraction.duracion}"></input>
							<div class="invalid-feedback">
								<c:out value='${attraction.errores.get("duration")}'></c:out>
							</div>
						</div>
						<div class="mb-3">
							<label for="capacity"
								class='col-form-label ${attraction.errores.get("capacity") != null ? "is-invalid" : "" }'>Capacity:</label>
							<input class="form-control" type="number" id="capacity"
								name="capacity" required value="${attraction.cupo}"></input>
							<div class="invalid-feedback">
								<c:out value='${attraction.errores.get("capacity")}'></c:out>
							</div>
						</div>
						
						<div class="mb-3">
							<label for="tipo"
								class='col-form-label ${attraction.errores.get("tipo") != null ? "is-invalid" : "" }'>Tipo:</label>
							<input class="form-control" type="text" id="tipo"
								name="tipo" required value="${attraction.tipo}"></input>
							<div class="invalid-feedback">
								<c:out value='${attraction.errores.get("tipo")}'></c:out>
							</div>
						</div>

						<div>
							<button type="submit" class="btn btn-primary">Guardar</button>
							<a onclick="window.history.back();" class="btn btn-secondary"
								role="button">Cancelar</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>
</html>