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


<body class="body-section">
    <!-- HEADER SECTION -->
    <jsp:include page="partials/header.jsp"></jsp:include>
    <main class="itinerario-main">
      <div class="listado-main content-wrapper">
        <div class="itinerario-section">
          <div class="itinerario-title">
            <h1>Este es tu itinerario, ${user.nombre}</h1>
          </div>
          <div class="itinerario-info">
            <p>Te quedan ${user.presupuesto} monedas.</p>
            <p>Tenés ${user.tiempoDisponible} horas.</p>
          </div>
          
          <table class="table table-stripped table-hover">
            <thead>
              <tr>
                <th>Producto</th>
                <th>Tipo</th>
                <th>Costo</th>
                <th>Duración</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${itinerario}" var="producto">
                <tr>
                <td>
                  <strong><c:out value="${producto.nombre}"></c:out></strong>
                </td>
                <td><c:out value="${producto.tipo}"></c:out></td>
                <td><c:out value="${producto.costo}"></c:out></td>
                <td><c:out value="${producto.duracion}"></c:out></td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </main>
    </div>
    <!-- FOOTER -->
    <jsp:include page="partials/footer.jsp"></jsp:include>
  </body>
</html>