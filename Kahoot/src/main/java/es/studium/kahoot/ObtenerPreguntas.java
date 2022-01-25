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
	public ObtenerPreguntas() 
	{
		consulta();
		
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
			sentencia = "SELECT * FROM  preguntas;";
			rs = statement.executeQuery(sentencia);
	
			while(rs.next()) 
			{
				System.out.println(rs.getString("enunciadoPregunta"));
			}
		}
		catch (SQLException sqle)
		{	
		}
	}

}



