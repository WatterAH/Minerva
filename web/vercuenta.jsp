<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/ico" href="IMAGENES/Axolotl.ico"/>
        <link rel="stylesheet" href="vercuenta.css"/>
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <title>Minerva || Ver Cuenta</title>
    </head>
    <body>
        <div id="infousuario" id="cuadroboton" data-aos="fade-down-left" data-aos-duration="1500">
            <table>
                <tr>
                    <td>
                        <h1>Hola ${userA}</h1> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="CambioName.html">
                            <button class="cta">
                                <span>Cambiar mi nametarg</span>
                                <svg viewBox="0 0 13 10" height="10px" width="15px">
                                <path d="M1,5 L11,5"></path>
                                <polyline points="8 1 12 5 8 9"></polyline>
                                </svg>
                            </button>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="IMAGENES/void.png" width="1" height="10">
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="CambioPass.html">
                            <button class="cta">
                                <span>Cambiar mi contraseña</span>
                                <svg viewBox="0 0 13 10" height="10px" width="15px">
                                <path d="M1,5 L11,5"></path>
                                <polyline points="8 1 12 5 8 9"></polyline>
                                </svg>
                            </button>
                        </a>
                    </td>
                </tr>               
            </table>
        </div>
        <div id="botones" data-aos="fade-down-right" data-aos-duration="2000">
            <table>
                <tr>
                    <td data-aos="fade-down-right" data-aos-duration="2000">
                        <a href="Info_Bloques.jsp">
                            <button class="cta">
                                <span>Informaci&oacute;n</span>
                                <svg viewBox="0 0 13 10" height="10px" width="15px">
                                <path d="M1,5 L11,5"></path>
                                <polyline points="8 1 12 5 8 9"></polyline>
                                </svg>
                            </button>
                        </a
                        ></td>
                    <td data-aos="fade-down-right" data-aos-duration="2000">
                        <a href="Simulador.html">
                            <button class="cta">
                                <span>Simulador</span>
                                <svg viewBox="0 0 13 10" height="10px" width="15px">
                                <path d="M1,5 L11,5"></path>
                                <polyline points="8 1 12 5 8 9"></polyline>
                                </svg>
                            </button>
                        </a>
                    </td>
                    <td data-aos="fade-down-right" data-aos-duration="2000">
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
        </div>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>  
    </body>
</html>
