<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "misClases.Ticket"%>
<%@page import= "misClases.TicketDAO"%>
<%@page import= "java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/f45778a73b.js" crossorigin="anonymous"></script>
<title>Back Office</title>
</head>
<body>
	<div class="container">
		<h1 class="text-primary">Panel de Tickets</h1>
		<div class="row">
			<table class="table table-striped text-center">
				<thead>
					<th>Id Venta</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Mail</th>
					<th>Cantidad</th>
					<th>Categoria</th>
					<th>Total</th>
					<th>Eliminar</th>
				</thead>
			
	<%
		List <Ticket>resultado=null;
		TicketDAO ticket=new TicketDAO();
		resultado=ticket.listarTickets();
		int totalFacturado=0;
		for (int x=0; x<resultado.size(); x++){
			String rutaE="FrontController?accion=eliminar&id="+resultado.get(x).getId();
			String tipoTicket;

			if(resultado.get(x).getCategoria()==1){
			tipoTicket="Estudiante";
			}

			else if(resultado.get(x).getCategoria()==2){
			tipoTicket="Trainee";
			}

			else if(resultado.get(x).getCategoria()==3){
			tipoTicket="Junior";
			}
			
			else{
			tipoTicket="Sin Categoria";			
			}
		
	%>
	<tr>
	<td name="id"> <%=resultado.get(x).getId()%></td>
	<td> <%=resultado.get(x).getNombre()%></td>
	<td> <%=resultado.get(x).getApellido()%></td>
	<td> <%=resultado.get(x).getMail()%></td>
	<td> <%=resultado.get(x).getCantidad()%></td>
	<td> <%=tipoTicket%></td>
	<td> <%=resultado.get(x).getTotal()%></td>
    <td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-user-minus"></i></a></td>
	</tr>
	
	<%
		totalFacturado+=resultado.get(x).getTotal();
}
	%>


<tr>
<td></td>

<td></td>

<td></td>

<td></td>

<td></td>

<td></td>

<td class="text-danger"><%=totalFacturado%></td>

<td></td>

</tr>
</table>
<a class="btn btn-secondary col-2  m-2 mx-auto" onclick="window.open('FrontController?accion=volver')">Volver</a>
		</div>
	</div>
</body>
</html>