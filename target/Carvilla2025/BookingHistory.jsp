<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entities.BookingUser" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Booking History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <body>
<%
if (session.getAttribute("listofbookings") != null) {

	List<BookingUser> l1 = (List)session.getAttribute("listofbookings");
	Iterator it = l1.iterator();
%>
    <h1>Booking History</h1>
    <table border="1" class='table table-striped table-bordered table-hover'>
    	<tr class='thead-dark'>
    	<th scope='col'>Id</th>
    	<th scope='col'>carName</th>
    	<th scope='col'>model</th>
    	<th scope='col'>price</th>
    	<th scope='col'>clientId</th>
    	<th scope='col'>name</th>
    	<th scope='col'>email</th>
    	<th scope='col'>phone</th>
    	<th scope='col'>age</th>
    	<th scope='col'>address</th>
    	<th scope='col'>showroom</th>
    </tr>

<%
	while(it.hasNext()) {
			BookingUser bu = (BookingUser) it.next();
			int i = 1;
			System.out.println(i++);
%>
	<table border="1">
		<tr scope='row'>
			</td><%= bu.getBid() %></td>
			</td><%= bu.getCarName() %></td>
			</td><%= bu.getModel() %></td>
			</td><%= bu.getPrice() %></td>
			</td><%= bu.getUid() %></td>
			</td><%= bu.getName() %></td>
			</td><%= bu.getEmail() %></td>
			</td><%= bu.getPhone() %></td>
			</td><%= bu.getAge() %></td>
			</td><%= bu.getAddress() %></td>
			</td><%= bu.getShowroom() %></td>
		</tr>
	</table>
<% 			
		}
 	}else{
 		%>
 			
				<div style="position: absolute;
    						z-index: 100;
    						background: #2e80e3c7;
    						width: 22rem;
    						padding: 20px;
    						font-size: 1.5rem;
    						justify-content: center;
    						display: flex;
    						align-items: center;
    						left: 37%;
    						border-radius: 6px;">
				<h1 style="text-align:center;">No record found</h1>
				</div>
				<script>
        			setTimeout(function() {
            			window.location.href = "UserProfile.jsp";
        			}, 3000);
    			</script>
		<%
 	}
%>
    </table>
</body>
</head>
</html>
