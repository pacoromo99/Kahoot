package es.studium.kahoot;

public class PrincipalServidor {

	public static void main(String[] args) 
	{
		VistaServidor vista = new VistaServidor();
		new ControladorServidor(vista);
	}
}
