<?php
	$con=mysql_connect("localhost","root","root") or die ("DOWN!");
		if ($con) {
			mysql_select_db("aa2000",$con);
           
		}
		else
		{
			die("DOWN");
		}	
?>
