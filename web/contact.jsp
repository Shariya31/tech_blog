
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
       <link href="css/style.css" rel="stylesheet" type="text/css"/>
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
    
     <!-- contact section starts -->

    <div class="container contact">

        <h1 class="heading" data-aos="zoom-out">contact us</h1>

        <section>

            <div class="row">
                <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3662.7506383958175!2d85.31971837390391!3d23.361047078937897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f4e1078e1c5bef%3A0x87bf028b73e7a2bb!2sGowala%20Toli%20Chowk%2C%20Nizam%20Nagar%2C%20Hindpiri%2C%20Ranchi%2C%20Jharkhand%20834001!5e0!3m2!1sen!2sin!4v1690204013091!5m2!1sen!2sin"  allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" data-aos="flip-right"></iframe>

                <form action="" method="post"" data-aos="flip-left">
                    <h3>get in touch</h3>
                    <input type="text" name="name" required maxlength="50" placeholder="enter your name" class="box"></input>
                    <input type="email" name="email" required maxlength="50" placeholder="enter your email" class="box"></input>
                    <input type="number" name="number" required maxlength="10" min="0" max="9999999999" placeholder="enter your number" class="box"></input>
                    <textarea name="message" class="box" required maxlength="1000" cols="30" rows="10"></textarea>
                    <input type="submit" value="send message" name="send" class="btn">
                </form>

            </div>

            <div class="grid">
                <div class="box" data-aos="fade-up">
                    <i class="fas fa-phone"></i>
                    <h3>phone number</h3>
                    <a href="tel:987654321">+123-456-789</a>
                    <a href="tel:1112223333">+111-222-3333</a>

                </div>

                <div class="box" data-aos="fade-up">
                    <i class="fas fa-envelope"></i>
                    <h3> email address</h3>
                    <a href="mailto:abushariya31@gmail.com">abushariya31@gmail.com</a>
                    <a href="mailto:shariya98@gmail.com">shariya98@gmail.com</a>

                </div>

                <div class="box" data-aos="fade-up">
                    <i class="fas fa-map-marker-alt"></i>
                    <h3> office address</h3>
                    <a href="#">Gowala Toli Chowk, Hindpiri Ranchi-834001</a>

                </div>
            </div>

            <div class="credit">
                &copy; copyright @ 2023 by <span>Abu Shariya</span>
                | all rights reserved
            </div>

        </section>
    </div>




    <!-- contact section ends -->
    
    
    
    
    
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

        <!--/javascript-->   
    </body>
</html>
