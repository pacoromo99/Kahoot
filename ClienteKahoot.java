package es.studium.kahoot;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;


public class ClienteKahoot extends JFrame implements ActionListener{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	JLabel lbl_pregunta=new JLabel("PREGUNTA");

	JRadioButton respuesta1=new JRadioButton("texto1");
	JRadioButton respuesta2=new JRadioButton("texto2");
	JRadioButton respuesta3=new JRadioButton("texto3");
	JRadioButton respuesta4=new JRadioButton("texto4");

	ButtonGroup grupo=new ButtonGroup();

	JTextArea area=new JTextArea();

	JButton btn_enviar= new JButton("Enviar");
	ObtenerPreguntas obtenerPreguntas;
	public ClienteKahoot()
	{
		
		setTitle("Cliente 1");
		setBounds(100, 100, 500, 600);

		//JPanel
		JPanel panel= new JPanel();		
		panel.setLayout(null);	

		lbl_pregunta.setBounds(10, 1, 300, 100);
		panel.add(lbl_pregunta);

		respuesta1.setBounds(50, 100, 200, 50);
		grupo.add(respuesta1);
		respuesta2.setBounds(50, 150, 200, 50);
		grupo.add(respuesta2);
		respuesta3.setBounds(50, 200, 200, 50);
		grupo.add(respuesta3);
		respuesta4.setBounds(50, 250, 200, 50);
		grupo.add(respuesta4);

		panel.add(respuesta1);
		panel.add(respuesta2);
		panel.add(respuesta3);
		panel.add(respuesta4);

		area.setBounds(20, 350, 300, 200);
		panel.add(area);

		btn_enviar.setBounds(350, 380, 100, 150);
		panel.add(btn_enviar);

		add(panel);
		
		//Fin JPanel
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);

	}

	public static void main(String[] args) {
		obtenerPreguntas = new ObtenerPreguntas();
		
		//new ClienteKahoot();

	}
	public void Preguntas() {
		lbl_pregunta.setText(obtenerPreguntas.pregunta);
	}
	public void Respuestas() {
		int n = (int) (Math.random() * (4 - 0)) + 0;
		switch(n) 
		{
			case 0:
				respuesta1.setText(obtenerPreguntas.correcta);
				respuesta2.setText(obtenerPreguntas.incorrecta1);
				respuesta3.setText(obtenerPreguntas.incorrecta2);
				respuesta4.setText(obtenerPreguntas.incorrecta3);
				break;
			case 1:
				
				respuesta1.setText(obtenerPreguntas.incorrecta1);
				respuesta2.setText(obtenerPreguntas.correcta);
				respuesta3.setText(obtenerPreguntas.incorrecta2);
				respuesta4.setText(obtenerPreguntas.incorrecta3);
				break;
			case 2:
				
				respuesta1.setText(obtenerPreguntas.incorrecta1);
				respuesta2.setText(obtenerPreguntas.incorrecta2);
				respuesta3.setText(obtenerPreguntas.correcta);
				respuesta4.setText(obtenerPreguntas.incorrecta3);
				break;
			case 3:
				
				respuesta1.setText(obtenerPreguntas.incorrecta1);
				respuesta2.setText(obtenerPreguntas.incorrecta2);
				respuesta3.setText(obtenerPreguntas.incorrecta3);
				respuesta4.setText(obtenerPreguntas.correcta);
				break;
		}
	}
	public void actionPerformed(ActionEvent e) 
	{
		
	}

}
