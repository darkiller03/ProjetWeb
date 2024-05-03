<?php
require("includes/common.php");
if (isset($_SESSION['email'])) {
    header('location: products.php');
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Signup | Tech Store</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <?php include 'includes/header.php'; ?>
        <div id="content">
            <div class="container-fluid decor_bg" id="login-panel">
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-3 col-md-4">
                            <div class="panel panel-primary" >
                                <div class="panel-heading" >
                                    <h4>SIGN UP</h4>
                                </div>
                                <div class="panel-body">
                                    <form  action="signup_script.php" method="POST">
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Name" autofocus="on" name="name"  required = "true" pattern="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control"  placeholder=" Enter a valid Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  name="e-mail" required = "true"><?php if(isset($_GET['m1'])) echo $_GET['m1']; ?>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password" title="Password must be 8 characters including 1 uppercase letter, 1 lowercase letter and numeric characters"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" required = "true">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Contact (ex. 23 610 135)" maxlength="8" size="8" name="contact" required = "true"><?php if(isset($_GET['m2'])) echo $_GET['m2']; ?>
                                        </div>
                                        <div class="form-group">
                                            <input  type="text" class="form-control"  placeholder="City" name="city" required = "true">
                                        </div>
                                        <div class="form-group">
                                            <input  type="text" class="form-control"  placeholder="Address" name="address" required = "true">
                                        </div>
                                        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                                    </form>
                                </div>
                                <div class="panel-footer"><p>Already have an account ? <a href="login.php">Log In</a></p></div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <?php include "includes/footer.php"; ?>
    </body>
</html>