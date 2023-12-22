package misClases;

public class Ticket {
private int id;
private String nombre;
private String apellido;
private String mail;
private int cantidad;
private int categoria;
private float total;



public Ticket(int id, String nombre, String apellido, String mail, int cantidad, int categoria, float total) {
	super();
	this.id = id;
	this.nombre = nombre;
	this.apellido = apellido;
	this.mail = mail;
	this.cantidad = cantidad;
	this.categoria = categoria;
	this.total = total;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNombre() {
	return nombre;
}
public void setNombre(String nombre) {
	this.nombre = nombre;
}
public String getApellido() {
	return apellido;
}
public void setApellido(String apellido) {
	this.apellido = apellido;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
public int getCantidad() {
	return cantidad;
}
public void setCantidad(int cantidad) {
	this.cantidad = cantidad;
}
public int getCategoria() {
	return categoria;
}
public void setCategoria(int categoria) {
	this.categoria = categoria;
}
public float getTotal() {
	return total;
}
public void setTotal(float total) {
	this.total = total;
}


}
