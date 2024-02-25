

<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!--css-->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--/css-->
    </head>
    <body style="overflow: hidden">

        <!--header section starts-->
        <header class="header" data-aos="fade-down">
            <section class="flex">
                <a href="home.html" class="logo">TechBlog.</a>

                <nav class="navbar">
                    <a href="index.jsp">home</a>
                    <!--<a href="about.html">about</a>-->
                    <a href="login_page.jsp">log in</a>
                    <a href="contact.jsp">contact</a>
                    <a href="register_page.jsp">sign up</a>

                </nav>

                <div id="menu-btn" class="fas fa-bars">

                </div>

            </section>
        </header>



        <!--header section ends-->

        <!--login form-->

        <div class="login" data-aos="zoom-out">
            <section class="flex" data-aos="zoom-in">
                <form action="LoginServlet" method="post" data-aos="zoom-in">
                    <h3>Register</h3>
                    <%
                        Message m = (Message) session.getAttribute("msg");
                        if (m != null) {
                    %>
                    <div class="alert <%= m.getCssClass()%>" role="alert" style="font-size: 1.5rem">
                        <%= m.getContent()%>

                    </div>


                    <%
                            session.removeAttribute("msg");
                        }


                    %>
                    <input name="email" required type="email" class="box" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <input name="password" required type="password" class="box" id="exampleInputPassword1" placeholder="Password">
                    <button type="submit" class="btn">Submit</button>
                    <a class="box" href="register_page.jsp" style="display: block;margin-top:2rem"><span class="fa fa-user-plus"></span> Don't have an account? Click here</a>
                </form>
            </section>
        </div>
        <!--/login form-->


        <!--javascript-->
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/script.js" type="text/javascript"></script>

        <!--/javascript-->
    </body>
</html>
