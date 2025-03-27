
<%@page import="com.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        
        <!-- swiper bundle css -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.css" integrity="sha512-rd0qOHVMOcez6pLWPVFIv7EfSdGKLt+eafXh4RO/12Fgr41hDQxfGvoi1Vy55QIVcQEujUE1LQrATCLl2Fs+ag==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <%--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> --%>
      <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <!--animation on scroll library -->
        <link rel="stylesheet" href="css/aos.css">
    </head>
    
    <body>
        <!-- navbar  component include -->
        
        <%@include file="navbar.jsp" %>
        
        
        <!-- Main site -->
        <main id="site-main">
            <!-- blog post section -->
            <section id="posts">
                <div class="container">
                    <div class="title-header"  data-aos="flip-up" data-aos-delay="100">
                        <h1>Recent Posts</h1>
                    </div>
                    
                    <div class="grid">
                        <!-- article -->
                        <div class="grid-item" data-aos="flip-up" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img.jpg" class="img-fluid" alt="blog1"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                    <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                         <!-- article -->
                        <div class="grid-item" data-aos="flip-up" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img2.jpg" class="img-fluid" alt="blog2"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                   <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                         
                          <!-- article -->
                        <div class="grid-item"data-aos="flip-up" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img3.jpg" class="img-fluid" alt="blog3"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                  <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                          
                           <!-- article -->
                        <div class="grid-item" data-aos="fade-right" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img4.jpg" class="img-fluid" alt="blog4"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                    <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                           
                            <!-- article -->
                        <div class="grid-item" data-aos="fade-in" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img.jpg" class="img-fluid" alt="blog1"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                   <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                            
                             <!-- article -->
                        <div class="grid-item" data-aos="fade-left" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img.jpg" class="img-fluid" alt="blog1"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                  <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                             
                              <!-- article -->
                        <div class="grid-item" data-aos="fade-right" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img5.jpg" class="img-fluid" alt="blog5"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                    <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                              
                               <!-- article -->
                        <div class="grid-item" data-aos="fade-in" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img6.jpg" class="img-fluid" alt="blog6"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                    <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                                                       
                             
                              <!-- article -->
                        <div class="grid-item" data-aos="fade-left" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img5.jpg" class="img-fluid" alt="blog5"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                    <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                              
                               <!-- article -->
                        <div class="grid-item" data-aos="fade-right" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img4.jpg" class="img-fluid" alt="blog6"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-center px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                         <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                               
                                <!-- article -->
                        <div class="grid-item" data-aos="fade-in" data-aos-delay="200">
                            <article class="article">
                                <div class="card">
                                    <div class="overflow-img">
                                        <a href="#">
                                            <img src="image/img7.jpg" class="img-fluid" alt="blog7"/> 
                                        </a>
                                    </div>
                                    
                                    <div class="card-body text-left px-1">
                                        <p class="blog-header">CODE QUALITY</p>
                                        <a href="#" class="text-title display-1 text-dark">
                                         Best Practices For Writing Clean And Maintainable Code   
                                        </a>
                                        <p class="blog-date secondary-title  text-secondary display-3"><span><i class="far fa-clock text-primary"></i>January 02, 2023</span></p>
                                    <a href="#" class="btn btn-outline-primary btn-sm">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        
                    </div>
                    
                    <div class="text-center">
                      <a href="#" class="btn btn-outline-primary btn-sm text-center">View All</a>
                    </div>
                    
                </div>
            </section>
            
            
            <!-- Swiper slider -->
             <div class="title-header" data-aos="flip-up" data-aos-delay="200">
                        <h1>Featured Posts</h1>
                    </div>
            
             <!-- Slider main container -->
            <div class="swiper">
              <!-- Additional required wrapper -->
              <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide"  data-aos="flip" data-aos-delay="200">
                    <div class="image-content">
                        <div class="card-image">
                            <img src="image/img2.jpg" alt="" class="card-img"/>
                          </div>
                     </div>
                      <div class="card-content">
                       <h2 class="card-header">CODE QUALITY</h2>
                           <a href="#" class="card-topic">Github Repository Controls</a>
                             <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-calendar text-primary"></i>&nbsp;&nbsp;January 02, 2023</span></p>
                       </div>
                </div>
                
                <div class="swiper-slide" data-aos="flip-up" data-aos-delay="300">
                    <div class="image-content">
                        <div class="card-image">
                            <img src="image/img3.jpg" alt="" class="card-img"/>
                          </div>
                     </div>
                      <div class="card-content">
                       <h2 class="card-header">CODE QUALITY</h2>
                           <a href="#" class="card-topic">Github Repository Controls</a>
                             <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-calendar text-primary"></i>&nbsp;&nbsp;January 02, 2023</span></p>
                       </div>
                </div>
                
                <div class="swiper-slide" data-aos="flip-up" data-aos-delay="400">
                    <div class="image-content">
                        <div class="card-image">
                            <img src="image/img4.jpg" alt="" class="card-img"/>
                          </div>
                     </div>
                      <div class="card-content">
                       <h2 class="card-header">CODE QUALITY</h2>
                           <a href="#" class="card-topic">Github Repository Controls</a>
                             <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-calendar text-primary"></i>&nbsp;&nbsp;January 02, 2023</span></p>
                       </div>
                </div>
                
                <div class="swiper-slide" data-aos="flip-up" data-aos-delay="500">
                    <div class="image-content">
                        <div class="card-image">
                            <img src="image/img.jpg" alt="" class="card-img"/>
                          </div>
                     </div>
                      <div class="card-content">
                       <h2 class="card-header">CODE QUALITY</h2>
                           <a href="#" class="card-topic">Github Repository Controls</a>
                             <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-calendar text-primary"></i>&nbsp;&nbsp;January 02, 2023</span></p>
                       </div>
                </div>
                
                <div class="swiper-slide" data-aos="flip-up" data-aos-delay="600">
                    <div class="image-content">
                        <div class="card-image">
                            <img src="image/img5.jpg" alt="" class="card-img"/>
                          </div>
                     </div>
                      <div class="card-content">
                       <h2 class="card-header">CODE QUALITY</h2>
                           <a href="#" class="card-topic">Github Repository Controls</a>
                             <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-calendar text-primary"></i>&nbsp;&nbsp;January 02, 2023</span></p>
                       </div>
                </div>
                
                <div class="swiper-slide" data-aos="flip-up" data-aos-delay="700">
                    <div class="image-content">
                        <div class="card-image">
                            <img src="image/img6.jpg" alt="" class="card-img"/>
                          </div>
                     </div>
                      <div class="card-content">
                       <h2 class="card-header">CODE QUALITY</h2>
                           <a href="#" class="card-topic">Github Repository Controls</a>
                             <p class="blog-date secondary-title text-secondary display-3"><span><i class="far fa-calendar text-primary"></i>&nbsp;&nbsp;January 02, 2023</span></p>
                       </div>
                </div>
                 </div>
           
            </div>
             
            
             
             <!-- site content -->
             <section class="container">
                 <div class="site-content">
                     <div class="posts">
                         <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                             
                             <div class="post-image">
                                 <div>
                                     <img class="img" src="image/blog1.jpg" alt="blog1"/> 
                                 </div>
                                 
                                 <div class="post-info flex-row">
                                     <span><i class="fas fa-user"></i>&nbsp;&nbsp;Admin</span>
                                     <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;January 05, 2023</span>
                                 </div>
                             </div>

                             <div class="post-title">
                                 <a href="#">What you need to know about Programming</a>
                                 <p>
                                     Nam ut rutrum ex, venenatis sollicitudin urna. Aliquam erat volutpat. Integer eu ipsum sem. Ut bibendum lacus vestibulum maximus suscipit. Quisque vitae nibh iaculis neque blandit euismod.
                                 </p>
                                 <button class="post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button>
                             </div>
                         </div>
                    
                         <hr>
                         
                         <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                             
                             <div class="post-image">
                                 <div>
                                     <img class="img" src="image/img.jpg" alt="blog1"/> 
                                 </div>
                                 
                                 <div class="post-info flex-row">
                                     <span><i class="fas fa-user"></i>&nbsp;&nbsp;Admin</span>
                                     <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;August 05, 2023</span>
                                 </div>
                             </div>

                             <div class="post-title">
                                 <a href="#">Best Practices For Writing Clean And Maintainable Code</a>
                                 <p>
                                     Nam ut rutrum ex, venenatis sollicitudin urna. Aliquam erat volutpat. Integer eu ipsum sem. Ut bibendum lacus vestibulum maximus suscipit. Quisque vitae nibh iaculis neque blandit euismod.
                                 </p>
                                 <button class="post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button>
                             </div>
                         </div>
                    
                         <hr>
                         
                         
                         <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                             
                             <div class="post-image">
                                 <div>
                                     <img class="img" src="image/img7.jpg" alt="blog1"/> 
                                 </div>
                                 
                                 <div class="post-info flex-row">
                                     <span><i class="fas fa-user"></i>&nbsp;&nbsp;Admin</span>
                                     <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;January 24, 2021</span>
                                 </div>
                             </div>

                             <div class="post-title">
                                 <a href="#">Github Repository Controls</a>
                                 <p>
                                     Nam ut rutrum ex, venenatis sollicitudin urna. Aliquam erat volutpat. Integer eu ipsum sem. Ut bibendum lacus vestibulum maximus suscipit. Quisque vitae nibh iaculis neque blandit euismod.
                                 </p>
                                 <button class="post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button>
                             </div>
                         </div>
                    
                         <hr>
                         
                         
                          <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                             
                             <div class="post-image">
                                 <div>
                                     <img class="img" src="image/img4.jpg" alt="blog1"/> 
                                 </div>
                                 
                                 <div class="post-info flex-row">
                                     <span><i class="fas fa-user"></i>&nbsp;&nbsp;Admin</span>
                                     <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;January 24, 2021</span>
                                 </div>
                             </div>

                             <div class="post-title">
                                 <a href="#">Artificial Intelligence and Robotics In A Nutshell</a>
                                 <p>
                                     Nam ut rutrum ex, venenatis sollicitudin urna. Aliquam erat volutpat. Integer eu ipsum sem. Ut bibendum lacus vestibulum maximus suscipit. Quisque vitae nibh iaculis neque blandit euismod.
                                 </p>
                                 <button class="post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button>
                             </div>
                         </div>
                        </div>
                     <aside class="sidebar">
                         <div class="category">
                             <h2 data-aos="fade-left" data-aos-delay="100">Blogs Categories</h2>
                             <ul class="category-list">
                                 <li class="list-items" data-aos="fade-left" data-aos-delay="100">
                                     <a href="#"><i class="fas fa-arrow-right"></i>&nbsp;Programming</a>
                                     <span>5</span>
                                 </li>
                                 
                                  <li class="list-items" data-aos="fade-left" data-aos-delay="200">
                                     <a href="#"><i class="fas fa-arrow-right"></i>&nbsp;Github</a>
                                     <span>5</span>
                                 </li>
                                 
                                  <li class="list-items" data-aos="fade-left" data-aos-delay="300">
                                     <a href="#"><i class="fas fa-arrow-right"></i>&nbsp;Artificial intelligence</a>
                                     <span>1</span>
                                 </li>
                                 
                                  <li class="list-items"data-aos="fade-left" data-aos-delay="400">
                                     <a href="#"><i class="fas fa-arrow-right"></i>&nbsp;JavaScript</a>
                                     <span>2</span>
                                 </li>
                                 
                                  <li class="list-items" data-aos="fade-left" data-aos-delay="500">
                                     <a href="#"><i class="fas fa-arrow-right"></i>&nbsp;React Js</a>
                                     <span>2</span>
                                 </li>
                             </ul>
                         </div>
                    
                         <div class="popular-post">
                             <h2 data-aos="flip-up" data-aos-delay="100">Popular Post</h2>
                             
                                <div class="post-content" data-aos="flip-up" data-aos-delay="200">

                                   <div class="post-image">
                                       <div>
                                           <img class="img" src="image/img4.jpg" alt="blog1"/> 
                                       </div>

                                       <div class="post-info flex-row">
                                          <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;January 24, 2021</span>
                                       </div>
                                   </div>

                                   <div class="post-title">
                                       <a href="#">Best Practices For Writing Clean And Maintainable Code</a>
                                    </div>
                               </div>
                             
                               <div class="post-content" data-aos="flip-up" data-aos-delay="300">

                                   <div class="post-image">
                                       <div>
                                           <img class="img" src="image/img.jpg" alt="blog1"/> 
                                       </div>

                                       <div class="post-info flex-row">
                                          <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;February 4, 2021</span>
                                       </div>
                                   </div>

                                   <div class="post-title">
                                       <a href="#">Automating Repetitive Tasks: Productivity Hacks For Developers</a>
                                    </div>
                               </div>
                             
                             
                               <div class="post-content" data-aos="flip-up" data-aos-delay="400">

                                   <div class="post-image">
                                       <div>
                                           <img class="img" src="image/img3.jpg" alt="blog1"/> 
                                       </div>

                                       <div class="post-info flex-row">
                                          <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;January 20, 2021</span>
                                       </div>
                                   </div>

                                   <div class="post-title">
                                       <a href="#">Mastering CSS Grid Layout: A Comprehensive Guide</a>
                                    </div>
                               </div>
                             
                               <div class="post-content" data-aos="flip-up" data-aos-delay="500">

                                   <div class="post-image">
                                       <div>
                                           <img class="img" src="image/img8.jpg" alt="blog1"/> 
                                       </div>

                                       <div class="post-info flex-row">
                                          <span><i class="fas fa-calendar"></i>&nbsp;&nbsp;September 10, 2020</span>
                                       </div>
                                   </div>

                                   <div class="post-title">
                                       <a href="#">The Power Of JavaScript Frameworks: Angular Vs. React Vs. Vue.Js</a>
                                    </div>
                               </div>
                             
                             
                             
                         </div>
                         
                         <div class="newsletter" data-aos="fade-up" data-aos-delay="300">
                             <h2>Newsletter</h2>
                             <div class="form-element">
                                <form>
                                    <div class="input-group">
                                      <input type="text" class="input-element" placeholder="Email"/>
                                      <i class="fas fa-envelope"></i>
                                    </div>
                                    <button class="btn form-btn">Subscribe</button>
                                   
                                 </form>
                               </div>
                         </div>
                    

                     </aside>
                 </div>
             </section>
             
             <!-- site content -->
              
             <!-- footer section start -->
             <div class="main-footer">
                  <footer>
                
                 <div class="zoom">
                     <ul class="social-icon">
                         <li  data-aos="fade-left" data-aos-delay="200"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                        <li data-aos="fade-left" data-aos-delay="300"><a href="#"><i class="fab fa-github"></i></a></li>
                      <li data-aos="fade-left" data-aos-delay="400"><a href="#"><i class="fab fa-discord"></i></a></li>
                       <li data-aos="fade-left" data-aos-delay="500"><a href="#"><i class="fab fa-twitter"></i></a></li>
                       <li data-aos="fade-left" data-aos-delay="600"><a href="#"><i class="fab fa-facebook"></i></a></li>
                        
                     </ul>
                 </div>
                 
                 <ul class="footer-menu">
                     <li data-aos="fade-right" data-aos-delay="200"><a href="#">Home</a></li>
                     <li data-aos="fade-right" data-aos-delay="300"><a href="#">About</a></li>
                     <li data-aos="fade-right" data-aos-delay="400"><a href="#">Blogs</a></li>
                     <li data-aos="fade-right" data-aos-delay="500"><a href="#">Contact</a></li>
                  </ul>
                 
                 <p >
                     @ Made with <i class="fa fa-heart"></i> | Code with Craze | All right reserved
                 </p>
                </footer>
             </div>
            
             <!-- footer section end -->
        </main>
        
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.js" integrity="sha512-Ysw1DcK1P+uYLqprEAzNQJP+J4hTx4t/3X2nbVwszao8wD+9afLjBQYjz7Uk4ADP+Er++mJoScI42ueGtQOzEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/4.2.2/masonry.pkgd.min.js" integrity="sha512-JRlcvSZAXT8+5SQQAvklXGJuxXTouyq8oIMaYERZQasB8SBDHZaUbeASsJWpk0UUrf89DP3/aefPPrlMR1h1yQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/aos.js" type="text/javascript"> </script>
        <script src="js/script.js" type="text/javascript"></script>
       
    </body>
    
</html>
