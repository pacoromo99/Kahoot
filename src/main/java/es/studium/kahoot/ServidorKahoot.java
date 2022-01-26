package es.studium.kahoot;


import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;
import javax.swing.border.EmptyBorder;
import java.awt.FlowLayout;
import javax.swing.JButton;
import javax.swing.JScrollBar;

public class ServidorKahoot extends JFrame {
	 /*
	  * VARIABLES
	  */
	
		private JPanel contentPane;
	 
		/**
		 * Lanza.
		 */
		public static void main(String[] args) {
			EventQueue.invokeLater(new Runnable() {
				public void run() {
					try {
						ServidorKahoot frame = new ServidorKahoot();
						frame.setVisible(true);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		}
	 
		/**
		 * Crea frame.
		 */
		public ServidorKahoot() {
			setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			setBounds(100, 100, 534, 469);
			contentPane = new JPanel();
			contentPane.setToolTipText("");
			contentPane.setForeground(new Color(0, 0, 0));
			contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
			setContentPane(contentPane);
			contentPane.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
			
			JScrollPane scrollPane = new JScrollPane();
			scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
			//scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
			contentPane.add(scrollPane);
			
			JTextArea textArea = new JTextArea();
			textArea.setRows(10);
			textArea.setColumns(50);
			textArea.setEditable(false);
			scrollPane.setViewportView(textArea);
		
			
			JScrollPane scrollPane2 = new JScrollPane();
			scrollPane2.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
			//scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
			contentPane.add(scrollPane2);
			JTextArea textArea2 = new JTextArea();
			textArea2.setRows(10);
			textArea2.setColumns(50);
			textArea2.setEditable(false);
			scrollPane2.setViewportView(textArea2);
			
			JButton btnNewButton = new JButton("DESCONECTAR");
			contentPane.add(btnNewButton);
		}
}


}
