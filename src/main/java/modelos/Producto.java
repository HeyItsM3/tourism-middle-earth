package modelos;

public abstract class Producto {

	protected String nombre;
	protected double costo;
	protected double duracion;
	protected TipoDeAtraccion tipo;
	protected String imag_u;

	public Producto(String nombre, double costo, double duracion, TipoDeAtraccion tipo, String imag_u) {
		super();
		this.nombre = nombre;
		this.costo = costo;
		this.tipo = tipo;
		this.duracion = duracion;
		this.imag_u = imag_u;
	}

	public Producto() {

	}

	public abstract boolean contiene(Producto producto);

	public abstract boolean hayCupo();

	public abstract void descontarCupo();

	public String getNombre() {
		return nombre;
	}

	public double getDuracion() {
		return duracion;
	}

	public TipoDeAtraccion getTipo() {
		return tipo;
	}

	public double getCosto() {
		return costo;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setCosto(double costo) {
		this.costo = costo;
	}

	public void setDuracion(double duracion) {
		this.duracion = duracion;
	}

	public void setTipo(TipoDeAtraccion tipo) {
		this.tipo = tipo;
	}
	
	public String getImag_u() {
		return imag_u;
	}

	public void setImag_u(String imag_u) {
		this.imag_u = imag_u;
	}

	@Override
	public String toString() {

		return "[ Nombre: " + this.nombre + ", Costo: " + this.costo + ", Duracion: " + this.duracion + ", Tipo: "
				+ this.tipo;
	}

	public boolean esPromo() {
		return false;
	}

}
