package servicios;

import java.util.List;

import modelos.Atraccion;
import modelos.Promocion;
import persistencia.comunes.DAOFactory;

public class PromocionServicio {
	public List<Promocion> list() {
		List<Atraccion> atracciones = DAOFactory.getAtraccionDAO().getAll();
		
		return DAOFactory.getPromocionDAO().getAllPromo(atracciones);
	}

}
