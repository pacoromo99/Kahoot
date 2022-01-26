package es.studium.kahoot;

public class ControladorServidor 
{
	VistaServidor vista;
	public ControladorServidor(VistaServidor v) 
	{
		vista = v;
		vista.setVisible(true);
	}

}
