<%-- 
    Document   : login
    Created on : Dec 31, 2023, 6:31:42 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
          <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body class="login">
        <div class="container" id="login-container">
            <div class="signin-signup">
                <form action="#" class="sign-in-form">
                    <h2 class="title">Sign In</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="username">
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="text" placeholder="password">
                    </div>
                    <input type="submit" value="Login" class="btn">
                   
                    <p  class="account-text">Don't have an account? <a href='#' id='sign-up-btn2'>Sign Up</a></p>
                </form>
                
                <form action="#" class="sign-up-form">
                    <h2 class="title">Sign Up</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Username">
                    </div>
                     <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="text" placeholder="E-mail">
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="text" placeholder="password">
                    </div>
                    <input type="submit" value="Sign up" class="btn">
                    <p  class="account-text">Already have an account? <a href='#' id='sign-in-btn2'>Sign In</a></p>
                </form>
            </div>
            
            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <h3>Member of Brand?</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae mollis quam. Phasellus pulvinar ornare turpis lobortis accumsan.</p>
                        <button class="btn" id="sign-in-btn">Sign in</button>
                    </div>
                    <img src="image/sign-in.png" alt="" class="image">
                </div>
                        
                 <div class="panel right-panel">
                    <div class="content">
                        <h3>New of Brand?</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae mollis quam. Phasellus pulvinar ornare turpis lobortis accumsan.</p>
                        <button class="btn" id="sign-up-btn">Sign Up</button>
                    </div>
                    <img src="image/sign-up.png" alt="" class="image">
                </div>
                
            </div>
        </div>
        <script>
            //sign-in sign-up form  action
            const sign_in = document.querySelector("#sign-in-btn");
            const sign_up = document.querySelector("#sign-up-btn");

            const container = document.querySelector("#login-container");
           
            const sign_in2 = document.querySelector("#sign-in-btn2");
            const sign_up2 = document.querySelector("#sign-up-btn2");

            sign_up.addEventListener("click",()=>{
                container.classList.add("sign-up-mode");
            });

            sign_in.addEventListener("click",()=>{
                container.classList.remove("sign-up-mode");
            });
            
             sign_up2.addEventListener("click",()=>{
                container.classList.add("sign-up-mode2");
            });

            sign_in2.addEventListener("click",()=>{
                container.classList.remove("sign-up-mode2");
            });
            
         </script>
    </body>
</html>
