package controlador.usuarios;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Usuario;
import servicios.UsuarioServicio;

@WebServlet("/editar-usuario.do")
public class EditarUsuarioServlet extends HttpServlet{

	private static final long serialVersionUID = 601845804314976280L;
	private UsuarioServicio uServicio;

	@Override
	public void init() throws ServletException {
		super.init();
		this.uServicio = new UsuarioServicio();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));

		Usuario tmp_user = uServicio.find(id);
		req.setAttribute("tmp_user", tmp_user);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/editar-usuario.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));
		String username = req.getParameter("username");
		Double coins = Double.parseDouble(req.getParameter("coins"));
		Double time = Double.parseDouble(req.getParameter("time"));
		String preferencia = req.getParameter("preferencia");

		Usuario tmp_user = uServicio.update(id, username, coins, time, preferencia);

		if (tmp_user.esValido()) {
			resp.sendRedirect("/torre/index.jsp");
		} else {
			req.setAttribute("tmp_user", tmp_user);

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/editar-usuario.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
