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

    <!-- MAIN SECTION -->
    <main>
      <!-- Banner -->
      <div class="banner-container">
        <div class="c-header c-header--archive c-header--project-list">
          <div
            class="
              c-mouse-vertical-carousel
              js-carousel
              u-media-wrapper u-media-wrapper--16-9
            "
          >
            <ul class="c-mouse-vertical-carousel__list js-carousel-list">
              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="0"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 01 </span> Paisaje
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">Moria</p>
                </a>
              </li>

              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="1"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 02 </span> Paisaje
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">
                    Minas Tirith
                  </p>
                </a>
              </li>

              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="2"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 03 </span> Degustacion
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">
                    La Comarca
                  </p>
                </a>
              </li>

              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="3"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 04 </span> Aventura
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">Mordor</p>
                </a>
              </li>

              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="4"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 05 </span> Paisaje
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">
                    Abismo de Helm
                  </p>
                </a>
              </li>

              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="5"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 06 </span> Degustacion
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">
                    Lothlorien
                  </p>
                </a>
              </li>

              <li
                class="
                  c-mouse-vertical-carousel__list-item
                  js-carousel-list-item
                "
                data-item-id="6"
              >
                <a href="">
                  <p class="c-mouse-vertical-carousel__eyebrow u-b4">
                    <span> 07 </span> Paisaje
                  </p>

                  <p class="c-mouse-vertical-carousel__title u-a5">Erebor</p>
                </a>
              </li>
            </ul>

            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://cdnb.artstation.com/p/assets/images/images/040/445/069/large/adam-breen-moria-final2.jpg?1628864640');
              "
            ></i>
            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2020/12/minastitith-senor-anillos-2180813.jpg');
              "
            ></i>
            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://i.pinimg.com/originals/1d/1b/77/1d1b7798cb3cccd201ac39a92a3b5468.jpg');
              "
            ></i>
            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://wallpaperaccess.com/full/796494.jpg');
              "
            ></i>
            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://cinescopia.com/wp-content/uploads/2016/03/the-lord-of-the-rings-the-two-towers-6.jpg');
              "
            ></i>
            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://cdna.artstation.com/p/assets/images/images/010/943/818/large/tim-catherall-lothlorien.jpg?1527064507');
              "
            ></i>
            <i
              class="c-mouse-vertical-carousel__bg-img js-carousel-bg-img"
              style="
                background-image: url('https://wallpapercave.com/wp/wp2374406.png');
              "
            ></i>
            <i class="c-gradient-overlay"></i>
          </div>
        </div>
      </div>
      
       <!-- Spotlight -->
       <section class="spotlight-section">
        <div class="spotlight-container content-wrapper">
          <div class="spotlight-title">
            <h2>Destacado</h2>
          </div>
          <div class="spotlight-content">
            <div class="card">
              <a href="/torre/atracciones.do">
                <div class="image-content">
                  <img
                    src="../torre/assets/img/frodo.png"
                    alt="image-example"
                  />
                </div>
              </a>
              <div class="card-info">
                <h3>Atracciones</h3>
                <p>
                  Visita tus atracciones preferidas y encontra un mundo magico a
                  trav&eacute;s de Tierra media
                </p>
              </div>
            </div>
            <div class="card">
              <a href="/torre/promociones.do">
                <div class="image-content">
                  <img
                    src="../torre/assets/img/frodo.png"
                    alt="image-example"
                  />
                </div>
              </a>
              <div class="card-info">
                <h3>Promociones</h3>
                <p>
                  Ahora podes visualizar las nuevas promociones y podrías
                  llevarte una de regalo
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Attraction -->
      <section class="attraction-index attraction-section">
        <div class="blur-attraction">
          <div class="attraction-container content-wrapper">
            <h2>atracciones</h2>
            <a class="button" href="/torre/atracciones.do">Ver más</a>
          </div>
        </div>
      </section>

      <!-- More to explore -->
      <section class="spotlight-section spotlight-alt">
        <div class="spotlight-container content-wrapper">
          <div class="spotlight-title">
            <h2>Promociones en descuento</h2>
          </div>
          <div class="spotlight-content">
            <div class="card">
              <a href="/torre/promociones.do">
                <div class="image-content">
                  <img
                    src="https://raw.githubusercontent.com/marcosrorai/TIERRAMEDIA_PARTE3/9e71ca427ade69dfba47e22462a927db8680aa07/src/main/webapp/assets/img/paisaje.png"
                    height="188px"
                    alt="image-example"
                  />
                </div>
              </a>
              <div class="card-info">
                <h3>PAISAJE</h3>
              </div>
            </div>
            <div class="card">
              <a href="/torre/promociones.do">
                <div class="image-content">
                  <img
                    src="https://raw.githubusercontent.com/marcosrorai/TIERRAMEDIA_PARTE3/9e71ca427ade69dfba47e22462a927db8680aa07/src/main/webapp/assets/img/degustacion.png"
                    height="188px"
                    alt="image-example"
                  />
                </div>
              </a>
              <div class="card-info">
                <h3>DEGUSTACION</h3>
              </div>
            </div>
            <div class="card">
              <a href="/torre/promociones.do">
                <div class="image-content">
                  <img
                    src="https://raw.githubusercontent.com/marcosrorai/TIERRAMEDIA_PARTE3/9e71ca427ade69dfba47e22462a927db8680aa07/src/main/webapp/assets/img/aventura.png"
                    height="188px"
                    alt="image-example"
                  />
                </div>
              </a>
              <div class="card-info">
                <h3>AVENTURA</h3>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <!-- FOOTER -->
   <jsp:include page="partials/footer.jsp"></jsp:include>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
  </body>
</html>