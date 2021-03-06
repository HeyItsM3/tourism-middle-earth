package modelos;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

public class Usuario {
	private String nombre;
	private double presupuesto;
	private double tiempoDisponible;
	private TipoDeAtraccion preferencia;
	private LinkedList<Producto> miItinerario = new LinkedList<Producto>();
	private Boolean admin=false;
	private int id;
	private int cantProductoYaComprados;
	private HashMap<String, String> errores;

	
	public Usuario(String nombre, double presupuesto, double tiempoDisponible, TipoDeAtraccion preferencia, int id, Boolean admin) {
		this.nombre = nombre;
		this.presupuesto = presupuesto;
		this.tiempoDisponible = tiempoDisponible;
		this.preferencia = preferencia;
		this.id = id;
		this.admin = admin;
	}
	
	public boolean productoNoComprado(Producto producto) {
		boolean noComprado=true;
		for (Producto comprado : miItinerario) {
			if (comprado.getNombre().equals(producto.getNombre())){
				noComprado = false;
			}
		}
		return noComprado;
	}
	
	public int getCantProductoYaComprados() {
		return cantProductoYaComprados;
	}
	
	public boolean tieneDinero(Producto producto) {
        return this.presupuesto >= producto.getCosto();
    }

    public boolean tieneTiempo(Producto producto) {
        return this.tiempoDisponible >= producto.getDuracion();
    }

	
	public void addProductoComprado(Producto producto) {
		this.miItinerario.add(producto);
	}

	public void addProducto(Producto producto) {
		this.miItinerario.add(producto);
		this.cantProductoYaComprados++;
	}
	public TipoDeAtraccion getPreferencia() {
		return this.preferencia;
	}

	public LinkedList<Producto> getMiItinerario() {
		return miItinerario;
	} 
	

	
	public void setAdmin(Boolean admin) {
        this.admin = admin;
	}
	
	public Boolean esAdmin() {
        return admin;
    }
	
    public Boolean getAdmin() {
        return admin;
    }
    
	public int getId() {
		return id;
	}
	
	
	public boolean isNull() {
		return false;
	}


	public String getNombre() {
		return nombre;
	}

	public double getPresupuesto() {
		return presupuesto;
	}

	public double getTiempoDisponible() {
		return tiempoDisponible;
	}

	public void descontarTiempo(Producto producto) {
		if (this.tiempoDisponible < producto.getDuracion()) {
			System.out.println("no hay tiempo suficiente");
		} else {
			this.tiempoDisponible -= producto.getDuracion();
		}

	}

	public void descontarDinero(Producto producto) {
		if (this.presupuesto < producto.costo) {
			System.out.println("no hay dinero suficiente");

		} else {
			this.presupuesto -= producto.costo;

		}
	}
	

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setPresupuesto(double presupuesto) {
		this.presupuesto = presupuesto;
	}

	public void setTiempoDisponible(double tiempoDisponible) {
		this.tiempoDisponible = tiempoDisponible;
	}

	public void setPreferencia(TipoDeAtraccion preferencia) {
		this.preferencia = preferencia;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean esValido() {
		validar();
		return errores.isEmpty();
	}
	
	public void validar() {
		errores = new HashMap<String, String>();

		if (presupuesto < 0) {
			errores.put("coins", "No debe ser negativo");
		}
		if (tiempoDisponible < 0) {
			errores.put("time", "No debe ser negativo");
		}
	}
	
	public Map<String, String> getErrors() {
		return errores;
	}

	@Override
	public String toString() {

		return "[ Nombre: " + this.nombre + ", Presupuesto: " + this.presupuesto + ", Tiempo disponible: "
				+ this.tiempoDisponible + ", Preferencia: " + this.preferencia + ".]\n";
	}

}