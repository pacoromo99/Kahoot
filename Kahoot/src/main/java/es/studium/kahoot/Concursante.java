package es.studium.kahoot;

public class Concursante 
{
	public int id, puntuacion;
	public String nombre;
	
	public Concursante(int id, String nombre,  int puntuacion)
	{
		this.id = id;
		this.nombre = nombre;
		this.puntuacion = puntuacion;
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

	public void setEnunciado(String nombre) {
		this.nombre = nombre;
	}

	public int getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(int puntuacion) {
		this.puntuacion = puntuacion;
	}
}
