<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <head>
   <jsp:include page="partials/head.jsp"></jsp:include>
  </head>
<body>

  <body>
    <!-- HEADER SECTION -->
	<jsp:include page="partials/header.jsp"></jsp:include>

    <!-- MAIN SECTION -->
    <main>
      <!-- Attraction -->
      <section class="attraction-section">
        <div class="blur-attraction">
          <div class="attraction-container content-wrapper">
            <h2>promociones</h2>
          </div>
        </div>
      </section>

     <!-- More to explore -->

      <section class="attraction-spotlight spotlight-section more-section">
        <div class="spotlight-container content-wrapper">
          <div class="spotlight-title">
            <h2>More to explore</h2>
          </div>
          <div class="spotlight-content">
          <c:forEach items="${promos}" var="promo">
            <div class="card-container">
              <div class="card card-attraction">
                <div class="image-content">
				<a href="#"><img class="card-img-top " height="188" src="${ promo.imag_u }" alt="imagen"></a> 
				
                </div>
                <div class="card-info">
                  <h3>${ promo.nombre }</h3>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Amet, nemo!
                  </p>
                </div>
              </div>
              </div>
              </c:forEach>
            </div>
          </div>

      </section>
    </main>

    <!-- FOOTER -->
	<jsp:include page="partials/footer.jsp"></jsp:include>
  </body>
</html>

