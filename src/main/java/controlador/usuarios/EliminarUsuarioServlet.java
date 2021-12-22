package controlador.usuarios;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servicios.UsuarioServicio;

@WebServlet("/deleteUsuario.do")
public class EliminarUsuarioServlet extends HttpServlet {

	private static final long serialVersionUID = -1506748658684803063L;
	private UsuarioServicio userServicio;

	@Override
	public void init() throws ServletException {
		super.init();
		this.userServicio = new UsuarioServicio();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));
		try {
			userServicio.delete(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("/torre/usuarios.do");
	}
}
