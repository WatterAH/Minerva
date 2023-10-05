<%-- 
    Document   : menuadmin
    Created on : 10 jun. 2022, 0:43:11
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="menuadmin.css" rel="stylesheet" type="text/css"> 
        <script type="text/javascript" src="menuadmin.js"></script>
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="icon" type="image/ico" href="IMAGENES/Axolotl.ico"/>
        <title>Menu || Admins</title>
    </head>
    <body>
        <table id="tabla"> 
            <tr>
                <td colspan="5" align="center" data-aos="zoom-out-down" data-aos-duration="2500">
                    <div id="err">
                        <h1>Menu de ${adminA}</h1>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <img src="IMAGENES/void.png" width="1" height="10">
                </td>
            </tr>
            <tr>
                <td>
                    <div id="cuadroeliminar" data-aos="fade-down-right" data-aos-duration="2000">
                        <form method="get" action="eliminado" onsubmit="error(); return false"> 
                            <table>
                                <tr>
                                    <td align="center">
                                        <h1>Eliminar usuarios</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="IMAGENES/void.png" width="1" height="15">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <div class="texto">Usuario a eliminar:</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <input type="text" id="user" name="userA" class="input" required="" pattern="[A-Za-z0-9]{1,15}" title="No me vuelven a poner un marquee" placeholder="Usuario...">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="IMAGENES/void.png" width="1" height="15">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <div class="texto">Codigo de administrador:</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <input type="password" id="code" name="code" class="input" required="" pattern="[A-Za-z0-9]{1,15}" title="No me vuelven a poner un marquee" placeholder="Codigo de seguridad...">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="IMAGENES/void.png" width="1" height="15">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <button class="cta" type="submit">
                                            <span>Eliminar</span>
                                            <svg viewBox="0 0 13 10" height="10px" width="15px">
                                            <path d="M1,5 L11,5"></path>
                                            <polyline points="8 1 12 5 8 9"></polyline>
                                            </svg>
                                        </button>
                                    </td>
                                </tr>
                        </form>
        </table>
    </div>
</td>
<td colspan="3">
    <img src="IMAGENES/void.png" width="25" height="1">
</td>
<td>
    <div id="cuadroregistrar" data-aos="fade-down-left" data-aos-duration="2000">
        <form method="get" action="registraradmin" onsubmit="error2(); return false">
            <table>
                <tr>
                    <td align="center">
                        <h1>Agregar Admins</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="IMAGENES/void.png" width="1" height="10">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <div class="texto">Nombre del Admin</div>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <input type="text" id="user2" name="adminA" class="input" required="" pattern="[A-Za-z0-9]{1,15}" title="No me vuelven a poner un marquee" placeholder="Admin...">
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="IMAGENES/void.png" width="1" height="15">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <div class="texto">Codigo de administrador:</div>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <input type="password" id="code2" name="code" class="input" required="" pattern="[A-Za-z0-9]{1,15}" title="No me vuelven a poner un marquee" placeholder="Codigo de seguridad...">
                    </td>
                </tr> 
                <tr>
                    <td>
                        <img src="IMAGENES/void.png" width="1" height="15">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <button class="cta" type="submit">
                            <span>Agregar</span>
                            <svg viewBox="0 0 13 10" height="10px" width="15px">
                            <path d="M1,5 L11,5"></path>
                            <polyline points="8 1 12 5 8 9"></polyline>
                            </svg>
                        </button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</td>
</tr>
<tr>
    <td colspan="5">
        <img src="IMAGENES/void.png" width="1" height="10">
    </td>
</tr>
<tr>
    <td colspan="5" align="center" data-aos="zoom-out-down" data-aos-duration="2500">
        <div id="err"><div id="msg"></div>

            <!-- Mensajes de Verificación -->
            <div align="center" id="error" class="ocultar" role="alert">
                Acceso denegado...
            </div>
            <div align="center" id="ok" class="ocultar" role="alert">
                ...
            </div></div>
    </td>
</tr>
<tr>
    <td colspan="5">
        <img src="IMAGENES/void.png" width="1" height="10">
    </td>
</tr>
<tr>
    <td colspan="5" align="center" data-aos="zoom-out-down" data-aos-duration="3000">      
        <a href="index.html">
            <button class="cta">
                <span>Cerrar Sesi&oacute;n</span>
                <svg viewBox="0 0 13 10" height="10px" width="15px">
                <path d="M1,5 L11,5"></path>
                <polyline points="8 1 12 5 8 9"></polyline>
                </svg>
            </button>
        </a>
    </td>
</tr>
</table>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
            AOS.init();
</script> 
</body>
</html>
