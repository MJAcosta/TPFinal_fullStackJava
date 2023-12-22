package misClases;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion=null;

        TicketDAO ticketDAO=null;

        try
        {
            ticketDAO= new TicketDAO();
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }


        RequestDispatcher dispatcher=null;
 
        accion=request.getParameter("accion");

        if(accion==null||accion.isEmpty())
        {
            dispatcher=request.getRequestDispatcher("vistas/index.jsp");
        }
        else if(accion.equals("registrar"))
        {
            dispatcher=request.getRequestDispatcher("vistas/tickets.jsp");
        }
        else if(accion.equals("backoffice"))
        {
            dispatcher=request.getRequestDispatcher("vistas/backOffice.jsp");
        }
        else if(accion.equals("volver"))
        {
            dispatcher=request.getRequestDispatcher("vistas/index.jsp");
        }
        
        else if(accion.equals("insert"))
        {
        String nombre= request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        String mail= request.getParameter("mail");
        int cantidad= Integer.parseInt(request.getParameter("cantidad"));
        int categoria= Integer.parseInt(request.getParameter("categoria"));
        double valorTotal;
        int precioBase = 200; // Precio base por ticket

        if (categoria == 1) { // Estudiante
            valorTotal = cantidad * (precioBase * 0.2); // Aplicar descuento del 80%
        } else if (categoria == 2) { // Trainee
            valorTotal = cantidad * (precioBase * 0.5); // Aplicar descuento del 50%
        } else if (categoria == 3) { // Junior
            valorTotal = cantidad * (precioBase * 0.85); // Aplicar descuento del 15%
        } else {
            valorTotal = cantidad * precioBase; // Sin descuento para otras categorías
        }
        
        // Crear el objeto Ticket con el valor total calculado
        Ticket ticket = new Ticket(0, nombre, apellido, mail, cantidad, categoria, (float) valorTotal);

        // Insertar el ticket en la base de datos
        ticketDAO.insertarTicket(ticket);

        // Redirigir a la página deseada, por ejemplo, a conferencia.jsp
        dispatcher = request.getRequestDispatcher("vistas/index.jsp");
        dispatcher.forward(request, response);
       
        
        }
        
        else if(accion.equals("eliminar")) {
            int idTicket = Integer.parseInt(request.getParameter("id"));
            ticketDAO.eliminarTicket(idTicket); 
            dispatcher=request.getRequestDispatcher("vistas/backOffice.jsp");
        }
        
        dispatcher.forward(request,response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
