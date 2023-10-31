<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Productos</title>
        <style>
            body {
                background-color: rgb(53, 49, 49); 
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                height: 100vh;
            }

            h3 {
                font-size: 24px;
                background-color: black ;
                color: white;
                padding: 10px 0;
                width: 100%;
                text-align: center;
                margin: 0;
                color: MEDIUMSLATEBLUE;
            }

            form {
                background-color: mediumslateblue;
                width: 400px;
                padding: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                margin: 20px;
                border: 1px solid black;
                margin-bottom: 20px;
                margin-left: 20px;
                margin-right: 20px;
            }

            form p {
                color: black;
                margin-bottom: 15px;
                margin-right: 20px;
            }

            input[type="text"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
                outline: none;
            }

            input[type="hidden"] {
                display: none;
            }

            input[type="submit"] {
                display: block;
                width: 100%;
                padding: 15px 0;
                border: none;
                background-color: midnightblue;
                color: white;
                border-radius: 73px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 20px;
            }

            input[type="submit"]:hover {
                background-color: #FF6666;
                margin-left: auto;
                margin-right: auto;
            }

        </style>
    </head>
    <body>
        <h3>FORMULARIO DEL PRODUCTO</h3>

        <form action="ProductoController" method="post">
            <p>
                MARCA: 
                <input type="text" name="marca" value="<c:out value="${producto.marca}"></c:out>" required>
                </p>

                <p>
                    NOMBRE:
                    <input type="text" name="nombre" value="<c:out value="${producto.nombre}"></c:out>" required>
                </p>

                <p>
                    PRECIO:
                    <input type="text" name="precio" value="<c:out value="${producto.precio}"></c:out>" required>
                </p>

                <p>
                    STOCK:
                    <input type="text" name="stock" value="<c:out value="${producto.stock}"></c:out>" required>
                </p>

                <p>
                    VENDIDO:
                    <input type="text" name="vendidos" value="<c:out value="${producto.vendidos}"></c:out>" required>
                </p>

                <p>

                    <input type="hidden" name="id" value="<c:out value="${producto.id}"></c:out>">    
                <input type="submit" value="Guardar">
            </p>

        </form>


    </body>
</html>
