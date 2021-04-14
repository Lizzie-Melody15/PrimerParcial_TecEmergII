<%-- 
    Document   : index
    Created on : 13-abr-2021, 19:08:22
    Author     : LIZETH
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Vacunas" %>
<%@page import="com.emergentes.modelo.GestorVacunas"%>
<%
    if(session.getAttribute("agenda")==null){
        GestorVacunas objeto1=new GestorVacunas();
        
        objeto1.insertarPaciente(new Vacunas(1,"Brunito Diaz",25,140,"Si"));
        objeto1.insertarPaciente(new Vacunas(2,"Juancito Pinto",30,152,"No"));
        
        session.setAttribute("agenda", objeto1);
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - PRIMER PARCIAL</title>
    </head>
    <body>
        <table border="2" ALIGN="center">
            <th>
                PRIMER PARCIAL - TECNOLOGIAS EMERGENTES II
                <br>
                <br>
                Nombre: Univ. Guadalupe Lizeth Lisme Vargas
                <br>
                <br>
                C.I. 8437869 L.P.
                <br>
                <br>
                R.U. 200020649
            </th>
        </table> 
        <h1 ALIGN="center">REGISTRO DE VACUNAS</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1" ALIGN="center">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.peso}</td>
                    <td>${item.talla}</td>
                    <td>${item.vacuna}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
