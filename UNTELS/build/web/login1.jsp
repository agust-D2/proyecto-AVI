<%@page import="java.sql.*"%>
<%@page import="bd.*"%>
<!DOCTYPE html>
<html lang="en">
    <head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><meta http-equiv="X-UA-Compatible" content="ie=edge"><title>UniLogin</title><link href="https://fonts.googleapis.com/css?family=Tajawal:400,500,700&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Lato:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/public/tiny-slider.css">
        <link rel="stylesheet" href="css/public/main.ce4d4265.css">
        <link rel="icon" href="images/icon/favicon-32x321.png">
        <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String s_accion;
            String s_idusuario;
            String s_nombre;
            String s_correo;
            String s_usuario;
            String s_clave;
            %> 
    </head>
    <body> 
        <%
    try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                s_accion = request.getParameter("f_accion");
                s_idusuario = request.getParameter("f_idusuario");
                %>
                
        <header class="header"> 
            <div class="background">               
                <img class="green-glow-top" src="images/public/TopGreenGlow9cfc1b3b.svg" alt="Backround green glow"> 
            </div> 
            <div> 
                <div>  
                    <nav class="navbar"> <ul class="social__links"> <li class="social__link media"> <a target="_blank" href="https://medium.com/universal-ethereum"> <div class="social__link_icon social__link_medium" src="./assets/images/svg/SocialLinks/Medium.svg"></div> </a> </li><li class="social__link discord"> <a target="_blank" href="https://discordapp.com/invite/sfwfjWA"> <div class="social__link_icon social__link_discord" src="./assets/images/svg/SocialLinks/Discord.svg"></div> </a> </li> <li class="social__link twitter"> <a target="_blank" href="https://twitter.com/unilogin"> <div class="social__link_icon social__link_twitter" src="./assets/images/svg/SocialLinks/Twitter.svg"></div> </a> </li> </ul> </nav> 
                </div> 
            </div> 
        </header> 
        <main class="main"> 
            <img class="background-logo__shape" src="images/a1.jpg" alt="Background UniLogin logo"> 
            <img class="background-logo__glow" src="images/public/LogoUnderGlow.c293835c.svg" alt="Background logo underglow"> 
            
            <section class="heroimage"> 
                <div class="container"> 
                    <div class="heroimage__row"> 
                        <div class="heroimage__left"> 
                                <h1 class="heroimage__left_title"><b>
                                    Explora Comparte Aprende e Innova</b></h1> 
                                <div class="heroimage__left_text"> <p>Se parte de nuestra comunidad.</p> <p>No requiere descargar.</p> <p>Registrate ya.</p> </div> </div> 
                                
                                <div class="heroimage__right"> <form id="signup-form" class="signup-form" action="login1.jsp" method="POST"> 
                                    <h5 id="signup-form__title" class="signup-form__title">
                                        <%
                if (s_accion != null) {
                            s_nombre = request.getParameter("f_nombre");
                            s_correo = request.getParameter("f_correo");
                            s_usuario = request.getParameter("f_usuario");
                            s_clave = request.getParameter("f_clave");
                            //out.println("Registrando nuevo estudiante...");
                            consulta = " insert into usuario (nombre,correo,usuario,clave) "
                                    + " values ('" + s_nombre + "','" + s_correo + "','" + s_usuario + "','" + s_clave + "'); ";
                            //out.print(consulta);
                            pst = cn.prepareStatement(consulta);
                            pst.executeUpdate();
                            %>
                                        <b>Bienvenido</b>
                                        <%out.print(s_nombre);%>!
                                    </h5>
                                    <a href="portal.jsp">
                                    <input id="signup-form__button" type="submit" class="signup-form__button" value="Iniciar Sesion">
                                    </a>
                            <%
                        }else{
%>            
                                        <b>Registrate</b> <%out.print(s_accion);%>!
                                        a nuestro programa!
                                    </h5> 
                                    <div class="signup-form__input"> 
                                        <input type="text" name="nombre" placeholder="tu nombre completo" required> 
                                    </div> 
                                    <div class="signup-form__input"> 
                                        <input type="text" name="user" placeholder="tu usuario" required> 
                                    </div>
                                    <div class="signup-form__input"> 
                                        <input type="password" id="password" name="clave" placeholder="tu clave" required> 
                                    </div> 
                                    <div class="signup-form__input"> 
                                        <input type="email" name="email" placeholder="tu email"> 
                                    </div>
                                    <input id="signup-form__button" type="submit" class="signup-form__button" value="Registrarse">
                                    <input type="hidden" name="f_accion" value="R" size="15" />
                                    <%
}
               
                                            } catch (SQLException e) {
                                                System.out.println("Error: " + e.getMessage());
                                            }
                %>
                                    <div class="signup-form__background"> 
                                        <img class="signup_form__glow" src="images/public/FormGlow.c67e2b75.svg" alt="Form under glow"> </div> </form>
                            
                            </div> 
                    </div> 
                </div> 
            </section> 
                <section class="projects-using"> <img src="images/public/PurpleLeftGlow.3b0fe1bb.svg" alt="Background purple glow" class="projects-using__background"> 
                    
                                <div class="projects-using__title-wrapper"> 
                                    <h6 class="projects-using__title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Proyecto AVI</h6> 
                                    <div class="dash purple"></div> 
                                </div> 
                                <div class="projects-using__text"> 
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Somos un grupo de estudiantes a disposicion de la comunidad. </p> 
                                </div> 
                            
                </section> 
                
                               
            </main> 
                                        
                                        <footer class="footer"> 
                                            <div class="container"> <div class="footer__row"> <img src="images/public/LogoTitle.14f50053.svg" alt="UniLogin logo" class="footer__logo"> <div class="footer__content"> <p class="copyright">© 2020 Proyecto AVI</p> </div> </div> </div> 
                                        </footer> 
        
        <script src="js/public/main.d1eb4f8e.js"></script>
        <script src="js/public/tiny-slider.js"></script>
    </body>
</html>