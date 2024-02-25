

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
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

        <!--register section starts-->
        <div class="container register" data-aos="zoom-out" >
            <section class="flex" data-aos="zoom-in">
                <form id="reg-form" action="RegisterServlet" method="post">
                    <h3>Register</h3>
                    <input name="user_name" type="text" class="box" id="user_name" aria-describedby="emailHelp" placeholder="Enter your name">
                    <input name="user_email" type="email" class="box" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <input name="user_password" type="password" class="box" id="exampleInputPassword1" placeholder="Password">
                    <div class="ling">
                        <span class="box">Male</span>
                        <input type="radio" class="box"  id="gender" name ="gender" value="male" >  
                        <span class="box">Female</span>
                        <input type="radio" class="box"  id="gender" name ="gender" value="female" >
                    </div>
                    <textarea name="about" class="box" rows="5" placeholder="Tell us something about yourself"></textarea>
                    <div class="box" style="display: flex;flex-direction: row-reverse">
                        <input name="check" type="checkbox" class="box" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Agree Terms And Condition</label>
                    </div>
                    <button id="submit-btn" type="submit" class="btn">Submit</button>
                </form>
            </section>

        </div>






        <!--register section ends-->

        <!--javascript-->
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/script.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>


        <script>
            $(document).ready(function () {
                console.log("loaded");

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loader").show();
//                  send to register servlet
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'post',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === "done") {

                                swal("You are registered.....Redirecting")
                                        .then((value) => {
                                            window.location = "login_page.jsp";
                                        });
                            } else {
                                swal(data);
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();

                            swal("Something went wrong");




                        },
                        processData: false,
                        contentType: false
                    });


                });
            });
        </script>

        <!--/javascript-->
    </body>
</html>
