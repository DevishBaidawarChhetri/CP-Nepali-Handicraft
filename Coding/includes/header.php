<?php
// session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nepali Handicraft | <?php echo $title; ?></title>
    <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="webfonts/fontawesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/script.js"></script>
</head>

<body>
    <div id="wrapper">
        <header>
            <div class="container">
                <div class="text-center">
                    <nav class="container navbar navbar-expand-lg navbar-light bg-light" data-spy="affix" data-offset-top="197">
                        <a class="navbar-brand logo" href="index.php">Nepali Handicraft<br><span class="ims">Information Management System</span></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">MENU</span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.php"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="about.php"><i class="fas fa-smile"></i> About</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="contact.php"><i class="fas fa-phone" style="transform:rotateZ(180deg);"></i> Contact</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="products.php"><i class="fas fa-box"></i> Products</a>
                                </li>
                                <?php if(isset($_SESSION['admin-id'])){ ?>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="admin/admin.php"><i class="fas fa-tachometer-alt"></i> Profile</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="logout.php"><i class="far fa-user-circle"></i> Logout</a>
                                    </li>
                                <?php } ?>
                                <?php if(isset($_SESSION['user-id'])){ ?>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="user/user.php"><i class="fas fa-tachometer-alt"></i> Profile</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="logout.php"><i class="far fa-user-circle"></i> Logout</a>
                                    </li>
                                <?php } else { if(!isset($_SESSION['admin-id'])) { ?>
                                    <li class="nav-item ">
                                        <a class="nav-link" href="user-login.php"><i class="far fa-user-circle"></i> Login</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="user-register.php"><i class="fas fa-user-plus"></i> Register  </a>
                                    </li>
                                <?php } } ?>
                                <li class="nav-item ">
                                    <a class="nav-link" href="help.php"><i class="far fa-question-circle"></i> Help</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <!--Start of Tawk.to Script-->
        <script type="text/javascript">
            var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
            (function(){
            var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
            s1.async=true;
            s1.src='https://embed.tawk.to/5d0a14e853d10a56bd7ad303/default';
            s1.charset='UTF-8';
            s1.setAttribute('crossorigin','*');
            s0.parentNode.insertBefore(s1,s0);
            })();
        </script>
        <!--End of Tawk.to Script-->
