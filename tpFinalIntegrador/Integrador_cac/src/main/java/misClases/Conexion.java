package misClases;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Conexion {
	public String driver = "com.mysql.cj.jdbc.Driver";
	public Connection getConnection() throws ClassNotFoundException 
	{
		Connection conexion=null;
		try {
			Class.forName(driver);
			conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/integrador_cac","root","");
			
		} catch (SQLException e) {
			System.out.println("Conexion no establecida");
			// TODO: handle exception
		}
		return conexion;
	};
public static void main(String[] args) throws ClassNotFoundException, SQLException {
	Connection conexion=null;
	Conexion conect=new Conexion();
	conexion=conect.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	ps=conexion.prepareStatement("select * from tickets");
	rs=ps.executeQuery();
	while(rs.next()) {
		String nombre= rs.getString("nombre");
		System.out.println("El nombre es: "+ nombre);
	}
	}
}

