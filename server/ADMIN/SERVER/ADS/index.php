<?php include('../../../include/connect.php');
include('function.php');
        $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
        $limit = 3;
        $startpoint = ($page * $limit) - $limit;
        
        //to make pagination
        $statement = "`tb_announcement`";
?>
<script>
<!--

/*
Auto Refresh Page with Time script
By JavaScript Kit (javascriptkit.com)
Over 200+ free scripts here!
*/

//enter refresh time in "minutes:seconds" Minutes should range from 0 to inifinity. Seconds should range from 0 to 59
var limit="0:15"

var doctitle = document.title
var parselimit=limit.split(":")
parselimit=parselimit[0]*60+parselimit[1]*1

function beginrefresh(){
	if (parselimit==1)
		window.location.reload()
	else{ 
		parselimit-=1
		curmin=Math.floor(parselimit/60)
		cursec=parselimit%60
		if (curmin!=0)
			curtime=curmin+" minutes and "+cursec+" seconds left until page refresh!"
		else
			curtime=cursec+" seconds left until page refresh!"
		document.title = doctitle + ' (' + curtime +')'
		setTimeout("beginrefresh()",1000)
	}
}

if (window.addEventListener)
	window.addEventListener("load", beginrefresh, false)
else if (window.attachEvent)
	window.attachEvent("load", beginrefresh)

//-->
</script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../../img/aalogo.jpg">

    <title>AA2000 Security and Technology</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
  <style>
   body {
    background-image: url("../background1.JPG");
    background-repeat: no-repeat;
}
</style>
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


          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
           <div class="jumbotron">
            <h2>Customer Relationship Management System</h2>
          </div>



       <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>

<div class="well">

 <?php
      
                $query = mysql_query("select * from tb_announcement {$statement} LIMIT {$startpoint} , {$limit}   ") or die(mysql_error());
                while ($row = mysql_fetch_array($query)) {
         ?>


        <div class="row">

           
            <div class="col-md-5">
                <form method="post">
                    <input type="hidden" name="image" value="<?php echo $row['image'];?>"  />
                    <input type="hidden" name="name" value="<?php echo $row['name'];?>" />
                    <input type="image" src="<?php echo $row['image'];?>" name="image"  class="img-responsive"/>
                </form>
            </div>
            <div class="col-md-6">
                <h3><a href="announcement_detail.php?id=<?php echo $row['announcementID']; ?>"><?php echo $row['name'];?></a>
                </h3>
                <p>Date: <?php echo date("F j, Y - h:i A ", strtotime($row['date'])) ?></p>
                <p>
                       <?php $string=$row['detail'];
                        $string = strip_tags($string);
                        if (strlen($string) > 100) {

                        // truncate string
                            $stringCut = substr($string, 0, 200);
                        $string = substr($stringCut, 0, strrpos($stringCut, ' ')); 
                                                    }
                        echo $string ."...";
                    ?>
                </p>
                <a class="btn btn-primary" href="announcement_detail.php?id=<?php echo $row['announcementID']; ?>">Read More <i class="fa fa-angle-right"></i></a>
            </div>

        </div>
        <br/><br/>
             <?php } ?>

            <div class="col-lg-12">
                <ul class="pagination">
                     <?php
    echo pagination($statement,$limit,$page);
?>      
                </ul>
            </div>
</div>
        </div><!--/span-->
<?php
	if(isset($_POST['image'])){
	   $image=$_POST['image'];
       $name= $_POST['name'];
?>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div class="well">
<img src="<?php echo $image;?>" width="525"/>
</div>
<div class="col-sm-10">
</div>
        </div>
        <center><font size="4"><strong><?php echo $name; ?></strong></font></center>
        <div class="modal-footer">
        <form method="post">
        
          <input type="submit" name="" class="btn btn-danger"  value="Close">
        </div>
      </div>
    </div>
  </div>
  </form>
      <script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
</script>
<?php
	}
?>
        
        
		<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
		<div class="list-group">
			<a href="index.php" class="list-group-item active">Home</a>
            <a href="Customers.php" class="list-group-item">Customers<img src="customer.png"></a>
            <a href="Customer_list.php" class="list-group-item">Customer List<img src="customer.png"></a>
			<a href="announcement.php" class="list-group-item">Announcement<img src="head.png"></a>
            <a href="messages.php" class="list-group-item">Messages <img src="message.png"><span class="badge badge-info"><?php include('query.php');?></span></a>
			
          </div>
		  
        
        </div><!--/span-->

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
