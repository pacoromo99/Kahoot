package es.studium.kahoot;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ObtenerPreguntas 
{
	ConexionBd conexion;
	String sentencia = "";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	int id;
	String pregunta = "";
	String correcta = "";
	String incorrecta1 = "";
	String incorrecta2 = "";
	String incorrecta3 = "";
	
	public ObtenerPreguntas() 
	{
		consulta();
		imprimirRespuestas();
		
	}
	public static void main(String[] args) 
	{
		new ObtenerPreguntas();
	}
	
	public void consulta() 
	{
		conexion = new ConexionBd();
		connection = conexion.conectar();
		try 
		{
			statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			sentencia = "SELECT * FROM  preguntas order by rand() limit 1";
			rs = statement.executeQuery(sentencia);
	
			while(rs.next()) 
			{
				id = rs.getInt("idPregunta");
				pregunta = rs.getString("enunciadoPregunta");
			}
		}
		catch (SQLException sqle)
		{	
		}
		try 
		{
			statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			sentencia = "SELECT * FROM  respuestas where  idRespuesta =" + id + ";";
			rs = statement.executeQuery(sentencia);
	
			while(rs.next()) 
			{
				correcta = rs.getString("correctoRespuesta");
				incorrecta1 = rs.getString("incorrecto1Respuesta");
				incorrecta2 = rs.getString("incorrecto2Respuesta");
				incorrecta3 = rs.getString("incorrecto3Respuesta");

				 
			}
		}
		catch (SQLException sqle)
		{	
		}
	
		System.out.println(pregunta);
	}
	public void imprimirRespuestas() 
	{
		int n = (int) (Math.random() * (4 - 0)) + 0;
		switch(n) 
		{
			case 0:
				System.out.println(correcta);
				System.out.println(incorrecta1);
				System.out.println(incorrecta2);
				System.out.println(incorrecta3);
				break;
			case 1:
				
				System.out.println(incorrecta1);
				System.out.println(correcta);
				System.out.println(incorrecta2);
				System.out.println(incorrecta3);
				break;
			case 2:
				
				System.out.println(incorrecta1);
				System.out.println(incorrecta2);
				System.out.println(correcta);
				System.out.println(incorrecta3);
				break;
			case 3:
				
				System.out.println(incorrecta1);
				System.out.println(incorrecta2);
				System.out.println(incorrecta3);
				System.out.println(correcta);
				break;
		}
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("CORRECTA: " + (n+1));
	}

}



