package controlador.atracciones;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Atraccion;
import modelos.Promocion;
import servicios.AtraccionServicio;
import servicios.PromocionServicio;

@WebServlet("/promociones.do")
public class CardsPromocionesServlet extends HttpServlet implements Servlet{

	private static final long serialVersionUID = 3553010881650568172L;
	
	private PromocionServicio promoServicio;

	@Override
	public void init() throws ServletException {
		super.init();
		this.promoServicio = new PromocionServicio();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Promocion> promos = promoServicio.list();
		req.setAttribute("promos", promos);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/promociones.jsp");
		dispatcher.forward(req, resp);

	}

}
