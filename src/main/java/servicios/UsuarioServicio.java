package servicios;


import java.sql.SQLException;
import java.util.List;

import modelos.Atraccion;
import modelos.Producto;
import modelos.TipoDeAtraccion;
import modelos.Usuario;
import persistencia.AtraccionDAO;
import persistencia.UsuarioDAO;
import persistencia.comunes.DAOFactory;

public class UsuarioServicio {
	

		public List<Usuario> list(List<Producto> productos) {
			return DAOFactory.getUsuarioDAO().getAll(productos);
		}

		public Usuario create(String username, Double coins, Double time, String preferencia) {
			Usuario tmp_user = new Usuario(username, coins, time, (TipoDeAtraccion.valueOf(preferencia)), -1, false);
			

			if (tmp_user.esValido()) {
				UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
				usuarioDAO.insert(tmp_user);
				
			}

			return tmp_user;
		}
		
		public Usuario update(Integer id, String username, Double coins, Double time, String preferencia) {

			UsuarioDAO userDAO = DAOFactory.getUsuarioDAO();
			Usuario tmp_user = userDAO.find(id);
			
			tmp_user.setId(id);
			tmp_user.setNombre(username);
			tmp_user.setPresupuesto(coins);
			tmp_user.setTiempoDisponible(time);
			tmp_user.setPreferencia(TipoDeAtraccion.valueOf(preferencia));

			if (tmp_user.esValido()) {
				userDAO.update(tmp_user);

			}

			return tmp_user;
		}
		
		public Usuario find(Integer id) {
			UsuarioDAO userDAO = DAOFactory.getUsuarioDAO();
			return userDAO.find(id);
		}
		
		public void delete(int id) throws SQLException {
			DAOFactory.getUsuarioDAO().delete(id);
		}
}
