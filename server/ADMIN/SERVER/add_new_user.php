<?php include('../../include/connect.php'); ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../img/aalogo.jpg">

    <title>AA2000 Security and Technology</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap.css" rel="stylesheet">

    <link href="css/bootstrap-theme.min.css" rel="stylesheet">



    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>

  <body>
      <?php include('header.php');?>
    

        </div><!-- /.nav-collapse -->

      </div><!-- /.container -->
    </div><!-- /.navbar -->

    <div class="container">


      <div class="row row-offcanvas row-offcanvas-right">



        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>

<div class="well">

  <?php
                                    if (isset($_POST['submit'])) {

                                   
                                        $id = $_POST['id'];
                                        $user = $_POST['username'];
                                         $pass = md5($_POST['password']);                                     
                                        $type = $_POST['type'];
                                        $emp = $_POST['emp'];
                                   
                                        
                                        $date=  date('M-Y-D');

                         mysql_query("insert into tb_user
          (userID,username,password,utype,Employee) values
     ('$id','$user','$pass','$type','$emp')") 
                     or die(mysql_error());

                                            ?>

                                         
                      <script type="text/javascript">
                                                alert("New User addedd succesfully");
                                                    window.location= "user.php";
                                            </script>

                                            <?php
                                    }
                                    ?>

<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data">
       <fieldset> 
                           <div id="legend">
                                <legend class="">Account Details
                                <a href="user.php"><input type="button" class="btn btn-default" value="Back"></a>
                                </legend>
                            </div> 
       </fieldset> 

        <input type="hidden" id="inputEmail3" name="id" value="<?php
    $id = mysql_query("select MAX(userID) as max_userID from tb_user");                                       
      $row = mysql_fetch_array($id);
       echo $row['max_userID'] + 1;                                       
    ?>" class="form-control" readonly/>   

       <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">User Type</label>
    <div class="col-sm-10">
       <select  class="form-control" id="inputPassword3" name="type" required/>
        <?php
        $query2=mysql_query("select * from user_type") or die (mysql_error());
        while($row2=mysql_fetch_array($query2)){
        ?>
        <option value="<?php echo $row2['typeID'];?>"><?php echo $row2['user_type'];?></option>
        <?php } ?>
      </select>
    </div>
  </div>


         <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Employee Name</label>
    <div class="col-sm-10">
      <input type="text" name="emp"  class="form-control"  id="inputEmail3" required/>
    </div>
  </div>

       <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-10">
      <input type="text" name="username"  class="form-control"  id="inputEmail3" required/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" name="password"   class="form-control"  id="password" required/>
    </div>
  </div>
          
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit"  onclick="validation()"  name="submit" class="btn btn-success">Submit</button>
    </div>
  </div>



</form>
</div>



          
        </div><!--/span-->
       
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
            <a href="user.php" class="list-group-item active">User List</a>
           <a href="user_type.php" class="list-group-item">User Type</a>
          </div>
        </div><!--/span-->

        <!--end of sidebar-->


      </div><!--/row-->


  

      <hr>

      <?php include('footer.php');?>

    </div><!--/.container-->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
