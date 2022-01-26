package es.studium.kahoot;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class ClienteLogindlg extends JDialog implements ActionListener{
	JTextField textField;
	JButton btnParticipar;
	JLabel lblCampoVacio;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		try {
			ClienteLogindlg dialog = new ClienteLogindlg();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Create the dialog.
	 */
	public ClienteLogindlg() {
		setBounds(100, 100, 178, 145);
		getContentPane().setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
		{
			JLabel lblNick = new JLabel("Introduce tu nick");
			getContentPane().add(lblNick);
		}
		{
			textField = new JTextField();
			getContentPane().add(textField);
			textField.setColumns(10);
		}
		{
			lblCampoVacio = new JLabel("");
			getContentPane().add(lblCampoVacio);
		}
		{
			btnParticipar = new JButton("Participar");
			btnParticipar.addActionListener(this);
			getContentPane().add(btnParticipar);
		}
	}
	@Override
	public void actionPerformed(ActionEvent ae) {
	if(ae.getSource().equals(btnParticipar)&& (textField.getText().length()!=0)) {
		new ClienteKahoot();
	}
	if(ae.getSource().equals(btnParticipar)&& (textField.getText().length()==0)){
		System.out.println("dfas");
		
		lblCampoVacio.setForeground(Color.RED);
		lblCampoVacio.setText("Debes introducir un nick");
	}
	}

}
