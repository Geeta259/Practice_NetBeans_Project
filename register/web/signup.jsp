<%-- 
    Document   : signup
    Created on : Dec 18, 2023, 4:44:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <!-- Compiled and minified CSS 
          //materialize css used
          -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background: url(image/img.jpg);background-size: cover;background-attachment: fixed;">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top:10px;" class="center-align">Register here !! </h3>
                            <h5 id="message" class="center-align"></h5>
                            <div class="form center-align">
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter user name"/>
                                    <input type="password" name="user_password" placeholder="Enter user password"/>
                                    <input type="email" name="user_email" placeholder="Enter user email"/>
                                   
                                     <div class="file-field input-field">
                                        <div class="btn">
                                          <span>File</span>
                                          <input type="file" name="image">
                                        </div>
                                        <div class="file-path-wrapper">
                                          <input class="file-path validate" type="text">
                                        </div>
                                      </div>
                                    
                                    <button type="submit" class="btn light-blue accent-3">Submit</button>
                                </form>
                            </div>
                            
                            <div class="loader center-align" style="margin-top: 10px; display:none;">
                                
                                 <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                      <div class="circle-clipper left">
                                        <div class="circle"></div>
                                      </div><div class="gap-patch">
                                        <div class="circle"></div>
                                      </div><div class="circle-clipper right">
                                        <div class="circle"></div>
                                      </div>
                                    </div>
                                
                                
                                    <div class="spinner-layer spinner-red">
                                      <div class="circle-clipper left">
                                        <div class="circle"></div>
                                      </div><div class="gap-patch">
                                        <div class="circle"></div>
                                      </div><div class="circle-clipper right">
                                        <div class="circle"></div>
                                      </div>
                                    </div>
                                 

                                 
                                    <div class="spinner-layer spinner-green">
                                      <div class="circle-clipper left">
                                        <div class="circle"></div>
                                      </div><div class="gap-patch">
                                        <div class="circle"></div>
                                      </div><div class="circle-clipper right">
                                        <div class="circle"></div>
                                      </div>
                                    </div>
                                  </div>
                                
                                <h5>Please wait...</h5>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  
  <script>
      $(document).ready(function(){
          $('#myform').on('submit',function(event){
              event.preventDefault();
              //if only text data pass prefer serialize otherwise use formdata object
             // var f = $(this).serialize();
             let f = new FormData(this);
              console.log(f);
              
              $(".loader").show();
              $(".form").hide();
              
              $.ajax({
                  url:"Register",
                  data: f,
                  type: 'post',
                  success: function(data)
                  {
                      console.log(data);
                      console.log("success.......");
                       $(".loader").hide();
                         $(".form").show();
                         
                         if(data.trim()==='done')
                         {
                             $('#message').html('Successfully Registered !! ');
                             $('#message').addClass('green-text');
                         }
                         else
                         {
                             $('#message').html('Something went wrong on server...!! ');
                             $('#message').addClass('red-text');
                         }
                  },
                  error: function(data)
                  {
                      console.log(data);
                      console.log("error.......");
                       $(".loader").hide();
                    $(".form").show();
                    $('#message').html('Something went wrong on server...!! ');
                  },
                  
                  processData: false,
                  contentType: false
              });
              
          });
      });
  </script>
    </body>
</html>
