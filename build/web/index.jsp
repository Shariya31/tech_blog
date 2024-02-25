

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tech Blog</title>
        <!--css-->

        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

        <!--font awsome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!--custom css file link-->
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--/css-->


    </head>
    <body>

        <!-- header section starts -->
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

        <!-- header section ends -->

        <!-- home section starts -->
        <section class="home" id="home">
            <div class="content">
                <h3>Welcome to TechBlog</h3>

                <a href="register_page.jsp" class="btn">Get Started</a>
            </div>

            <div class="controls">
                <span class="vid-btn active" data-src="img/vid-1.mp4"></span>
                <span class="vid-btn" data-src="img/vid-2.mp4"></span>
                <span class="vid-btn" data-src="img/vid-3.mp4"></span>
                <span class="vid-btn" data-src="img/vid-4.mp4"></span>
                <span class="vid-btn" data-src="img/vid-5.mp4"></span>

            </div>

            <div class="video-container">
                <video src="img/vid-1.mp4" id="video-slider" loop autoplay muted></video>
            </div>


        </section>
        <!-- home section ends -->

       
        
        <!--about section starts-->
        <div class="container about">
            <h1 class="heading">Popular Categories</h1>
            <div class="grid">
                <div class="box">
                    <img src="img/java.png" alt="alt"/>
                    <h3>java</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Facere provident, quaerat 
                        odio nulla quia dicta?</p>
                </div>
                
                <div class="box">
                    <img src="img/python.jfif" alt="alt"/>
                    <h3>Python</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Facere provident, quaerat 
                        odio nulla quia dicta?</p>
                </div>
                
                <div class="box">
                    <img src="img/javascript.jfif" alt="alt"/>
                    <h3>JavaScript</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Facere provident, quaerat 
                        odio nulla quia dicta?</p>
                </div>
                
                 <div class="box">
                     <img src="img/web_development.jfif" alt="alt"/>
                    <h3>Web Development</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Facere provident, quaerat 
                        odio nulla quia dicta?</p>
                </div>
                
                 <div class="box">
                     <img src="img/cloud_computing.jfif" alt="alt"/>
                    <h3>Cloud Computing</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Facere provident, quaerat 
                        odio nulla quia dicta?</p>
                </div>
                
                 <div class="box">
                     <img src="img/other.jfif" alt="alt"/>
                    <h3>Other</h3>
                    <p>Lorem ipsum dolor sit amet consectetur 
                        adipisicing elit. Facere provident, quaerat 
                        odio nulla quia dicta?</p>
                </div>
                
            </div>
        </div>




        <!--about section ends-->
        
         <!--college student section starts-->
        <div class="outercontainer">
            <!--<img src="img/college_student.png" alt="alt"/>-->
            <div class="innercontainer">
                <h2>Professional certificate</h2>
                <p>Software development fundamentals for new learners</p>
                <<h2>Get Started</h2>
            </div>
        </div>
        <!--college student section ends-->

        <!--review section starts-->
        <div class="container reviews">
            <h1 class="heading">Reviews</h1>
            <section class="grid">
                <div class="box">
                    <img src="img/pic-1.png" alt="alt"/>
                    <h3>john doe</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, 
                        adipisicing elit. Perferendis aperiam 
                        nulla necessitatibus at maxime voluptates 
                        praesentium nemo, dolore aspernatur neque?
                    </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="box">
                    <img src="img/pic-2.png" alt="alt"/>
                    <h3>john doe</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, 
                        adipisicing elit. Perferendis aperiam 
                        nulla necessitatibus at maxime voluptates 
                        praesentium nemo, dolore aspernatur neque?
                    </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="box">
                    <img src="img/pic-3.png" alt="alt"/>
                    <h3>john doe</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, 
                        adipisicing elit. Perferendis aperiam 
                        nulla necessitatibus at maxime voluptates 
                        praesentium nemo, dolore aspernatur neque?
                    </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="box">
                    <img src="img/pic-4.png" alt="alt"/>
                    <h3>john doe</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, 
                        adipisicing elit. Perferendis aperiam 
                        nulla necessitatibus at maxime voluptates 
                        praesentium nemo, dolore aspernatur neque?
                    </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="box">
                    <img src="img/pic-5.png" alt="alt"/>
                    <h3>john doe</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, 
                        adipisicing elit. Perferendis aperiam 
                        nulla necessitatibus at maxime voluptates 
                        praesentium nemo, dolore aspernatur neque?
                    </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="box">
                    <img src="img/pic-6.png" alt="alt"/>
                    <h3>john doe</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, 
                        adipisicing elit. Perferendis aperiam 
                        nulla necessitatibus at maxime voluptates 
                        praesentium nemo, dolore aspernatur neque?
                    </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </section>
        </div>        


        <!--review section ends-->






        <!--javascript-->

        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--custom js file-->
        <script src="js/script.js" type="text/javascript"></script>
        <script src="js/index.js" type="text/javascript"></script>
        <!--/javascript-->


    </body>
</html>
