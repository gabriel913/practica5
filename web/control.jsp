<%-- 
    Carrera     : Ingenieria de Sistema
    Materia     : Emergentes II
    Document   : Practica Nº 5
    Author     : Univ. Gabriel Huacara Choque
    C.I.        : C.i. 8279250 LP
    Created on : 30-05-2020, 09:22:13 PM
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Universidad Publica de El Alto</h3>
        <h1>TIENDA DE ELECTRONICOS GIGAELECTRONIC</h1>
        <br>
        <center><h1>Productos Gigaelectronic</h1></center>
        <p><a href="Controlador?accion=nuevo">NUEVO PRODUCTO</a></p>
        <table border = 7>
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Stock</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.stock}</td>
                    <td><a href="Controlador?accion=editar&id=${item.id}">EDITAR</a></td>
                    <td><a href="Controlador?accion=eliminar&id=${item.id}">ELIMINAR</a></td>
                </tr>  
                
                
            </c:forEach>
                
          <footer class="py-5 bg-dark">
          </div>
    </footer>      
 </table> 
       
      <div class="container">
        <p class="m-0 text-center text-white">Emergentes &copy; GabrielHuacaraChoque 2020</p>
</body>
</html>
