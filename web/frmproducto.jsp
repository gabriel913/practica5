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
        
        <h1><c:if test="${producto.id == 0} ">nuevo registro</c:if></h1><br>
        <h1><c:if test="${producto.id != 0} ">editar registro</c:if></h1>
        
   <center><h2>Producto a Gigaelectronic</h2></center>
        <form action="Controlador" method="POST">
            <input type="hidden" name="id" value="${producto.id}" />
            <label>Descripcion</label>
            <input type="text" name="descripcion" value="${producto.descripcion}" />
            <br><br>
            <label>Stock......</label>
            <textarea name="stock">${producto.stock}</textarea>
            <br>
            <input type="submit" value="registrar">      
        </form>
         <p class="m-0 text-center text-white">Emergentes &copy; GabrielHuacaraChoque 2020</p>   
    </body>
</html>
