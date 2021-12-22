package modelos;

import java.util.LinkedList;

public class PromocionPorcentual extends Promocion {

    private double descuento;

	public PromocionPorcentual(String nombre, TipoDeAtraccion tipo, LinkedList<Atraccion> atracciones, double descuento,
			int id, String imag_u) {
		super(nombre, tipo, atracciones, imag_u);
		this.descuento = descuento;
		this.calcularCostoConDescuento();
		this.id = id;
	}

    private void calcularCostoConDescuento() {
        double costo = 0;
        for (Atraccion atraccion : atracciones) {
            costo += atraccion.costo;
        }
        costo -= costo * (this.descuento / 100);
        this.costo=costo;

    }

}