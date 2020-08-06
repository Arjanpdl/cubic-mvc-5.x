<!DOCTYPE html>
<%@page import="com.cubicit.controller.Biz"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
  <title>Biz Data Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

<header style="height: 30px;background-color: maroon;">
</header>

<div class="container">
   <img src="img/student.png" style="height: 120px;">
   <hr/>
   <span style="font-size: 18;color: blue;font-weight: bold;">Biz Data
   ${message}
   </span>
   <hr/>
   <div style="width: 80%">
   
   <table class="table table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Brand</th>
        <th>DOE</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <%
    List<Biz> bizs=(List<Biz>)request.getAttribute("ashma");
    for(Biz biz:bizs){
    %>
      <tr>
        <td><%=biz.getName() %></td>
        <td><%=biz.getBrand() %></td>
        <td><%=biz.getDoe() %></td>
        <td>
        
        <a href="deleteBiz?name=<%=biz.getName() %>">
        <img src="img/delete.png" style="height: 40px;">
        </a>
        </td>
      </tr>
    <% } %> 
     
    </tbody>
  </table>
   
  </div>
</div>

</body>
</html>