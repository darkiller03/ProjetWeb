<!DOCTYPE html>
<html lang="en">
<head>
     <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Contact | Tech Store</title>
        <style type="text/css">
            .p1{
                text-align: justify;
            }
        </style>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
</head>
<body>
<?php
include 'includes/header.php';
?>
<div class="container" id="content">
    <div class="row">
    <div class="col-lg">
        <h1>Get in Touch</h1>
        <p id="p1">Hi there, we are here to help you.<br>In case you have any other queries, please fill the form below, and our team will get in touch with you within 24 hours.<br>You can also contact the number given below to get in touch with our customer care executive immediately.</p>
    </div><br><br>
    <div class="col-lg">
        <div style="float: right;">
            <h1>COMPANY INFORMATION</h1><br>
            <p id="p1">Ariana - Institut Supérieur d'Informatique</p><br>
            <p id="p1">Phone : +216 23 610 135</p><br>
            <p id="p1">Email : support@techstore.com</p>
        </div>
        <h1>CONTACT US</h1>
        <div style="float: left;">
        <form>
            <div class="form-group">
                <input type="text" name="name" placeholder="Name" autofocus="on" class="form-control" required = "true" pattern="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$">
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Email" class="form-control"
                pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required = "true">
            </div>
            <div class="form-group">
                <textarea rows="5" cols="60" placeholder="Address" style="resize: none;"></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
    </div>
</div>
</div>
<?php
include 'includes/footer.php';
?>
</body>
</html>