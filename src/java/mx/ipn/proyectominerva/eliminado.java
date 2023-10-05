/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.proyectominerva;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class eliminado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection connection = null;
        PreparedStatement sql = null;
        Statement statement = null;
        String sql2 = null;

        String user = "Watter";
        String password = "takemebacktola";
        String url = "jdbc:mysql://localhost/usuarios";
        HttpSession welcome = request.getSession();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);

            statement = connection.createStatement();

            String userA = request.getParameter("userA");

            String consulta = "SELECT * FROM usuario WHERE for_userA = ?";
            sql = connection.prepareStatement(consulta);
            sql.setString(1, userA);
            ResultSet res = sql.executeQuery();
            
            if (res.next()) {
                statement = connection.createStatement();
                sql2 = "delete from usuario where for_userA = '" + userA + "';";
                statement.executeUpdate(sql2);
                out.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "    <head>\n"
                    + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                    + "        <title>Conexión Establecida</title>\n"
                    + "        <link href=\"https://unpkg.com/aos@2.3.1/dist/aos.css\" rel=\"stylesheet\">\n"
                    + "    </head>\n"
                    + "    <body>\n"
                    + "        <div id=\"cuadro\" id=\"cuadro\" data-aos=\"zoom-in-down\" data-aos-duration=\"500\" align=\"center\"><h1>Usuario Eliminado ö</h1></div>\n"
                    + "        <br><br>\n"
                    + "        \n"
                    + "    <div align=\"center\" id=\"back\" data-aos=\"zoom-in-down\" data-aos-duration=\"1500\">\n"
                    + "                <a href=\"menuadmin.jsp\">\n"
                    + "                    <button class=\"cta\">\n"
                    + "			<span>Regresar</span>\n"
                    + "                            <svg viewBox=\"0 0 13 10\" height=\"10px\" width=\"15px\">\n"
                    + "				<path d=\"M1,5 L11,5\"></path>\n"
                    + "                                    <polyline points=\"8 1 12 5 8 9\"></polyline>\n"
                    + "                                </svg>\n"
                    + "                    </button>\n"
                    + "		</a>\n"
                    + "            </div>\n"
                    + "    \n"
                    + "    <style type=\"text/css\">\n"
                    + "        body{\n"
                    + "            background: linear-gradient(to right, #FF9494, #9496FF, #94FCFF);\n"
                    + "        }\n"
                    + "        h1{\n"
                    + "            font-family: \"Verdana\";\n"
                    + "            font-size: 30px;\n"
                    + "            left: 0;\n"
                    + "            right: 0;\n"
                    + "            position: absolute;\n"
                    + "            top: 0;\n"
                    + "            bottom: 0;\n"
                    + "        }\n"
                    + "        #cuadro{\n"
                    + "            width: 450px;\n"
                    + "            height: 80px;\n"
                    + "            border-radius: 30px;\n"
                    + "            position: relative;\n"
                    + "            background: linear-gradient(to right, #FEC898, #FE9976);\n"
                    + "            box-shadow: 10px 10px 40px #999;\n"
                    + "            margin: 0 auto;\n"
                    + "            top: 150px;\n"
                    + "           }\n"
                    + "           #back{\n"
                    + "               position: relative;\n"
                    + "               margin: 0 auto;\n"
                    + "               top: 200px;\n"
                    + "           }\n"
                    + "            .cta {\n"
                    + "             position: relative;\n"
                    + "             margin: auto;\n"
                    + "             padding: 12px 18px;\n"
                    + "             transition: all 0.2s ease;\n"
                    + "             border: none;\n"
                    + "             background: none;\n"
                    + "            }\n"
                    + "\n"
                    + "            .cta:before {\n"
                    + "             content: \"\";\n"
                    + "             position: absolute;\n"
                    + "             top: 0;\n"
                    + "             left: 0;\n"
                    + "             display: block;\n"
                    + "             border-radius: 50px;\n"
                    + "             background: #FFFD94;\n"
                    + "             width: 45px;\n"
                    + "             height: 45px;\n"
                    + "             transition: all 0.3s ease;\n"
                    + "             box-shadow: 4px 4px 10px #999;\n"
                    + "            }\n"
                    + "\n"
                    + "            .cta span {\n"
                    + "             position: relative;\n"
                    + "             font-family: \"Ubuntu\", sans-serif;\n"
                    + "             font-size: 18px;\n"
                    + "             font-weight: 700;\n"
                    + "             letter-spacing: 0.05em;\n"
                    + "             color: #234567;\n"
                    + "            }\n"
                    + "\n"
                    + "            .cta svg {\n"
                    + "             position: relative;\n"
                    + "             top: 0;\n"
                    + "             margin-left: 10px;\n"
                    + "             fill: none;\n"
                    + "             stroke-linecap: round;\n"
                    + "             stroke-linejoin: round;\n"
                    + "             stroke: #234567;\n"
                    + "             stroke-width: 2;\n"
                    + "             transform: translateX(-5px);\n"
                    + "             transition: all 0.3s ease;\n"
                    + "            }\n"
                    + "\n"
                    + "            .cta:hover:before {\n"
                    + "             width: 100%;\n"
                    + "             background: #FFC38B;\n"
                    + "             box-shadow: 4px 4px 10px #999;\n"
                    + "            }\n"
                    + "\n"
                    + "            .cta:hover svg {\n"
                    + "             transform: translateX(0);\n"
                    + "            }\n"
                    + "\n"
                    + "            .cta:active {\n"
                    + "             transform: scale(0.95);\n"
                    + "            }\n"
                    + "    </style>\n"
                    + "    <script src=\"https://unpkg.com/aos@2.3.1/dist/aos.js\"></script>\n"
                    + "		<script>\n"
                    + "		  AOS.init();\n"
                    + "		</script>\n"
                    + "    </body>\n"
                    + "</html>");

            } else {
                response.sendRedirect("error_borrado.html");
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(registrarusuario.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(registrarusuario.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(registrarusuario.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
