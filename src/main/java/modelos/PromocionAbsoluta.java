package modelos;

import java.util.LinkedList;

public class PromocionAbsoluta extends Promocion {

	public PromocionAbsoluta(String nombre, TipoDeAtraccion tipo, LinkedList<Atraccion> atracciones,
			double costoPaquete, int id, String imag_u) {
		super(nombre, tipo, atracciones, imag_u);
		this.costo = costoPaquete;
		this.id = id;
	}

}
