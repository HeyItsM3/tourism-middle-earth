package controlador.atracciones;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Atraccion;
import servicios.AtraccionServicio;

@WebServlet("/crear-atraccion.do")
public class CrearAtraccionServlet extends HttpServlet {

	private static final long serialVersionUID = 183179394263404992L;
	private AtraccionServicio atraccionServicio;

	@Override
	public void init() throws ServletException {
		super.init();
		this.atraccionServicio = new AtraccionServicio();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/crear-atraccion.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		Double cost = Double.parseDouble(req.getParameter("cost"));
		Double duration = Double.parseDouble(req.getParameter("duration"));
		String imag_u = req.getParameter("imag_u");
		String tipo = req.getParameter("tipo");
		Integer capacity = Integer.parseInt(req.getParameter("capacity"));

		Atraccion attraction = atraccionServicio.create(name, cost, duration, tipo, capacity, imag_u);
		if (attraction.esValida()) {
			resp.sendRedirect("/torre/index.jsp");
		} else {
			req.setAttribute("attraction", attraction);

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/crear-atraccion.jsp");
			dispatcher.forward(req, resp);
		}

	}

}
