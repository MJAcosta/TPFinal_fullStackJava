package misClases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class TicketDAO {
Connection conexion=null;
public TicketDAO() throws ClassNotFoundException {
	Conexion conect=new Conexion();
	conexion=conect.getConnection();
}
public List<Ticket> listarTickets(){
	PreparedStatement ps;
	ResultSet rs;
	List <Ticket> lista=new ArrayList<>();
	try {
		ps= conexion.prepareStatement("select * from tickets");
		rs=ps.executeQuery();
		while(rs.next()){
			int id=rs.getInt("id_ticket");
			String nombre=rs.getString("nombre");
			String apellido=rs.getString("apellido");
			String mail=rs.getString("mail");
			int cantidad=rs.getInt("cantidad");
			int categoria=rs.getInt("categoria");
			float total=rs.getFloat("total");
			Ticket ticket=new Ticket(id,nombre,apellido,mail,cantidad,categoria,total);
			lista.add(ticket);
			
			
		}		
		return lista;
		
	} catch (SQLException e) {
		System.out.println(e);
		return null;
		// TODO: handle exception
	}
}

	public boolean insertarTicket(Ticket ticket) {
		PreparedStatement ps;
		double total;
		try {
			ps=conexion.prepareStatement("insert into tickets(nombre,apellido,mail,cantidad,categoria,total)" + "values(?,?,?,?,?,?)");
			ps.setString(1, ticket.getNombre());
			ps.setString(2, ticket.getApellido());
			ps.setString(3, ticket.getMail());
			ps.setInt(4, ticket.getCantidad());
			ps.setInt(5, ticket.getCategoria());
			ps.setDouble(6, ticket.getTotal());
			ps.execute();
			return true;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
			
			// TODO: handle exception
		}
	}
public boolean eliminarTicket(int _id) {
	PreparedStatement ps;
	try {
		ps=conexion.prepareStatement("delete from tickets where id_ticket=?");
		ps.setInt(1, _id);
		ps.execute();
		return true;
	} catch (SQLException e) {
		System.out.println(e);
		return false;
		// TODO: handle exception
	}
}
}




