<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
   <title> Login </title>
 </head>
 <body>    
 
   <?php echo validation_errors(); ?>
   <?php echo form_open('verificar_login'); ?>  
 <?php $this->load->view('home_header');?>   
   <?php  $this->load->view('home_sidebar');?>
   <!-- Content -->
<div id="content">
    <div class="inner">

        <!-- Post -->
        <article class="box post post-excerpt">
            <header>
                <!--
                        Note: Titles and subtitles will wrap automatically when necessary, so don't worry
                        if they get too long. You can also remove the <p> entirely if you don't
                        need a subtitle.
                -->
                <h2><a href="#">Login</a></h2>
               <!-- <p>A free, fully responsive HTML5 site template by HTML5 UP</p> -->
            </header>
            <div class="info">
                <!--
                        Note: The date should be formatted exactly as it's shown below. In particular, the
                        "least significant" characters of the month should be encapsulated in a <span>
                        element to denote what gets dropped in 1200px mode (eg. the "uary" in "January").
                        Oh, and if you don't need a date for a particular page or post you can simply delete
                        the entire "date" element.
                        
                -->
                <!--<span class="date"><span class="month">Jul<span>y</span></span> <span class="day">14</span><span class="year">, 2014</span></span>-->
                <!--
                        Note: You can change the number of list items in "stats" to whatever you want.
                -->
                <!--                
                                <ul class="stats">
                                    <li><a href="#" class="icon fa-comment">16</a></li>
                                    <li><a href="#" class="icon fa-heart">32</a></li>
                                    <li><a href="#" class="icon fa-twitter">64</a></li>
                                    <li><a href="#" class="icon fa-facebook">128</a></li>
                                </ul>
                -->
            </div><!-- info -->

           <form>
     <label for="usuario">Usuario:</label>
     <input type="text" size="20" id="username" name="username"/>
     <br/>
     <label for="password">Senha:</label>
     <input type="password" size="20" id="passowrd" name="password"/>
     <br/>
     <input type="submit" value="Login"/>
   </form>

        </article>


        <!-- Pagination -->

        <div class="pagination">
            <!--<a href="#" class="button previous">Previous Page</a>-->
            <!--
            <div class="pages">
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <span>&hellip;</span>
                <a href="#">20</a>
            </div>
            <a href="#" class="button next">Next Page</a>
            -->
        </div><!-- pagination -->


    </div><!-- inner -->
</div><!-- Content -->
   
 </body>
</html>