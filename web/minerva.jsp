<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexión Establecida</title>
    </head>
    <body>
        <h1>Usuario Registrado :D</h1>
        <br><br>
        
        <%
            //Se crean los parámetros para la conexión
            Connection con=null;
            Statement set=null;
            ResultSet rs=null;
            
            String username, URL, password, driver;
            URL="jdbc:mysql://localhost/proyectominerva";
            username="root";
            password="n0m3l0";
            driver="com.mysql.jdbc.Driver";

            try{
                // se crea la conexión
                Class.forName(driver);
                con=DriverManager.getConnection(URL, username, password);
                
                try{
                    // Se obtiene el parámetro enviado desde 
                    String usuario = (String)request.getAttribute("nombreUsuario");
                    
                    String q="select * from usuarios where user='"+ usuario;
                    set=con.createStatement();
                    rs=set.executeQuery(q);
                    
                    while(rs.next()){
                        %>
                        
                        <p>Id usuario: <%=rs.getInt("usuario_id")%> </p>
                        <p>Nombre usuario: <%=rs.getInt("usuario_nom")%> </p>
                        <%
                    }
                }catch(SQLException es){
                    System.out.println("Algo salio mal con el registro :c");
                    System.out.println(es.getMessage());
%>
                    <h1>Error al intentar acceder al registro de usuarios</h1>
<%
                }
            }catch(Exception e){
                System.out.println("La base de datos ha tenido un error");
                System.out.println(e.getMessage());
%>
            <h1>Aun no estas conectado</h1>       
<%
    }

%>

    <br>
    <br>
    <a href="index.html">Volver al inicio</a>
    </body>
</html>
