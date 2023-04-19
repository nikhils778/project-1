<?php
session_start();

if(isset($_POST["login"])){
    if(!empty($_POST['useremail']) && !empty($_POST['pass'])) {
        $useremail=$_POST['useremail'];
        $pass=$_POST['pass'];
        $db = pg_connect("host=localhost dbname=car_showroom user=postgres password=your_password");

        $query=pg_query($db, "SELECT * FROM customer WHERE email= '".$useremail."' AND pass='".$pass."'");
        $numrows=pg_num_rows($query);

        if($numrows !=0)
        {
            while($row=pg_fetch_assoc($query))
            {
                $dbuseremail=$row['email'];
                $dbpass=$row['pass'];
                $dbusername=$row['name'];
            }

            if($useremail == $dbuseremail && $pass == $dbpass)
            {
                $_SESSION['s_name']= $dbusername;

                /* Redirect browser */
                header("Location: indexlogin.php");
            }
        }
        else
        {
            $message = "Invalid credentials !";
            echo "<script type='text/javascript'>alert('$message');</script>";
        }
    }
    else {
        echo "All fields are required!";
    }
}
?>
<!DOCTYPE HTML>
<html>
<head>
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="header">
    <div class="wrap">
        <div class="header-bot">
            <div class="logo">
                <a href="index.html"><img src="images/logo.png" alt="" style ="width:450px; height: 160px;"></a>
            </div>
            <div class="cart">
                <div class="menu-main">
                    <ul class="dc_css3_menu">
                        <li class="active"><a href="index.php">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="services.php">Brands</a></li>
                        <li><a href="contact.php">Contact</a></li>
                        <li><a href="login.php">Login</a></li>
                        <li><a href="register.php">Signup</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="header-bottom">
    <div class="wrap">
        <div class="page-not-found">
            <div class="text-center">
                <h2>SIGN IN</h2>
            </div>
            <div class="container-fluid row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="text-center" action="login.php" method="post">
                        <div><br/>
                            <label>Email</
