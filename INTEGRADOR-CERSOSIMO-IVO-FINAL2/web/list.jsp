
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STOCK</title>
        <style>
            body{
                background-color:rgb(53, 49, 49) ;
            }
            .tablaCSS {
                border: 1px solid #333;
                background-color: mediumslateblue;
                color: #FFF;
                width: 100%;
                margin-top: 20px;
            }

            .tablaCSS td, .tablaCSS th {
                border: 1px solid #444;
                padding: 8px;
                color:beige;
            }

            .tablaCSS tbody td {
                font-size: 14px;
                font-weight: normal;
            }

            .tablaCSS tr:nth-child(even) {
                background: #142;
            }

            .tablaCSS tfoot td {
                font-size: 14px;
            }

            .tablaCSS tfoot .links {
                text-align: right;
            }

            .tablaCSS tfoot .links a {
                color: #A43152;
                text-decoration: none;
            }

            .header {
                text-align: center;
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 20px;
                color: mediumslateblue;
                background-color: black;
            }

            .botonAñadir {
                color: mediumslateblue;
                background: black;
                border: 2px solid midnightblue;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
            }

            .botonActualizar, .botonBorrar {
                color: blue;
                border: 2px solid #555555;
                padding: 6px 10px;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
                background-color: oldlace;
            }

            .botonBorrar {
                color: #FF0000;
                border: 2px solid #FF0000;
            }

            .botonActualizar:hover, .botonBorrar:hover {
                background: #555555;
                color: #FFF;
            }
            header{
                font-family: "Lato", sans-serif;
            }
        </style>
    </head>
    <body>        
        <div class="header">
            STOCK DE LOS PRODUCTOS
        </div>

        <div class="boton-container">
            <a class="botonAñadir" href="ProductoController?accion=nuevo">Añadir Producto</a>
        </div>

        <table class="tablaCSS">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>MARCAS</th>
                    <th>NOMBRE</th>
                    <th>PRECIOS</th>
                    <th>STOCKS</th>
                    <th>VENDIDOS</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="producto" items="${list}">
                    <tr>
                        <td> <c:out value="${producto.id}"></c:out> </td>
                        <td> <c:out value="${producto.marca}"></c:out> </td>
                        <td> <c:out value="${producto.nombre}"></c:out> </td>
                        <td> <c:out value="${producto.precio}"></c:out> </td>
                        <td> <c:out value="${producto.stock}"></c:out> </td>
                        <td> <c:out value="${producto.vendidos}"></c:out> </td>
                            <td> 
                                <a class="botonActualizar" href="ProductoController?accion=edit&id=<c:out value="${producto.id}"></c:out>">Actualizar</a>
                            <a class="botonBorrar" href="ProductoController?accion=delete&id=<c:out value="${producto.id}"></c:out>">Borrar</a>
                            </td>
                        </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
