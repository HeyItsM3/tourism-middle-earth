<!-- FOOTER -->
<footer class="footer-section">
	<div class="footer-container content-wrapper">
	  <div class="footer-title">
		<h2>tierra media</h2>
	  </div>
	  <div class="content">
		<ul class="links">
		  <li><a href="/torre/atracciones.do">Atracciones</a></li>
		  <li><a href="/torre/promociones.do">Promociones</a></li>
		  <li><a href="/torre/listado.do">Comprar Boletos</a></li>
		  <li><a href="/torre/itinerario.do">Itinerario</a></li>
		  <li>
			<c:if test="${user.admin}">
			  <a href="/torre/usuarios.do">Usuarios</a>
			</c:if>
		  </li>
		</ul>
	  </div>
	</div>
  </footer>
  