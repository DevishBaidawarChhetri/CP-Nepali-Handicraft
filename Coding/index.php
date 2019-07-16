<?php
    session_start();
    if(isset($_GET['msg']) && $_GET['msg'] == 'subscribed'){
        echo "<script>window.alert('Successfully Subscribed!');</script>";
    }
    $title = "Home";
    include('includes/header.php');
?>
<section>
    <title>Nepali Handicraft | Home</title>
    <!-- Carousel Start -->
    <section id="carousel-fit">
        <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators cindicator">
                    <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselIndicators" data-slide-to="2">
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="images/img1.jpg" alt="Image 1">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/img2.jpg" alt="Image 1">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/img3.jpg" alt="Image 1">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
    </section>
    <!-- Carausel End -->

    <!-- Three Colorful Boxes -->
    <section class="slider-info col-sm-12">
        <div class="row">
            <div class="content-bg col-sm-4 one-bg">
                <span class="far fa-lightbulb icon"></span>
                <h3 class="ban-text">
                    Quality Products and Items!
                </h3>
            </div>
            <div class="content-bg col-sm-4 two-bg">
                <span class="fas fa-book icon"></span>
                <h3 class="ban-text">
                    Breif Back History!
                </h3>
            </div>
            <div class="content-bg col-sm-4 third-bg">
                <span class="fas fa-shield-alt icon"></span>
                <h3 class="ban-text">
                        Delivery Guaranteed!
                </h3>
            </div>
        </div>
    </section>
    <!-- Three Colorful Boxes end -->

    <!-- About Us Start -->
    <section class="about py-5">
        <div class="container py-md-5">
            <div class="about-w3ls-info text-center mx-auto">
                <h3 class="tittle-wthree pt-md-5 pt-3">About Us</h3>
                <p class="sub-tittle mt-3 mb-sm-5 mb-4">
                  Nepali Handicraft is a leading handmade Handicraft company in Nepal.
                  We sell our own handmade handicraft products using local resources by local Nepalese people.
                  We do have our inventory of our own manufactured by our skilled manpower. We are one of the leading manufacturer,
                  exporter and wholeseller of different types of Nepalese handmade handicraft products like handmadeclothing, handmade
                  jewelleries, handmade felt goods, handmade thanks, handmade handicraftpaper.....
                </p>
                <a href="about.php" class="btn btn-danger submit">Read More</a>
            </div>
        </div>
    </section>
    <!-- About Us End -->

    <!-- Features Starts -->
    <div class="welcome py-5" id="features">
        <div class="container py-xl-5 py-lg-3">
            <div class="row">
                <div class="col-lg-5 welcome-left">
                    <p>What We Provide</p>
                    <h3 class="tittle-wthree mt-2 mb-3">We have the BestDealers in the market</h3>
                    <p class="mt-4 pr-lg-5">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maiores, a voluptatum? Sint doloremque amet, odio assumenda temporibus corrupti, repellat blanditiis autem ipsam facere eligendi cupiditate officiis quidem sed laboriosam aperiam?</p>
                </div>
                <div class="col-lg-7 welcome-right text-center mt-lg-0 mt-5">
                    <div class="row">
                        <div class="col-sm-4 service-1-w3ls serve-gd2">
                            <div class="serve-grid mt-4">
                                <i class="fas fa-tshirt" style="color:rgba(3, 144, 214, 0.7);"></i>
                                <p class="mt-2">Clothing</p>
                            </div>
                            <div class="serve-grid mt-4">
                                <i class="fas fa-gem" style="color:rgba(255, 76, 76, 0.7);"></i>
                                <p class="mt-2">Jewelleries </p>
                            </div>
                        </div>
                        <div class="col-sm-4 service-1-w3ls serve-gd3">
                            <div class="serve-grid mt-4">
                                <i class="fas fa-book" style="color:rgba(52, 191, 73, 0.7);"></i>
                                <p class="mt-2">Thanks</p>
                            </div>
                            <div class="serve-grid mt-4">
                              <i class="fas fa-scroll" style="color:rgba(104, 76, 255, 0.7);"></i>
                                <p class="text-li mt-2">Papers </p>
                            </div>
                            <div class="serve-grid mt-4">
                                <i class="fab fa-pied-piper-hat" style="color:rgba(52, 191, 73, 0.7);"></i>
                                <p class="mt-2">Pipe </p>
                            </div>
                        </div>
                        <div class="col-sm-4 service-1-w3ls serve-gd2">
                            <div class="serve-grid mt-4">
                                <i class="fas fa-gopuram" style="color:rgba(255, 76, 76, 0.7);"></i>
                                <p class="mt-2">Statue </p>
                            </div>
                            <div class="serve-grid mt-4">
                                <i class="fas fa-map" style="color:rgba(3, 144, 214, 0.7);"></i>
                                <p class="mt-2">Pashmina</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features Ends -->

    <!-- Last Content Starts -->
    <section class="last-content py-5">
        <div class="container py-md-3 text-center">
            <div class="last-lavi-inner-content px-lg-5">
                <h3 class="mb-4 tittle-wthree">Get started with <span>Online </span> Ordering !</h3>
                <p class="px-lg-5">You are only few steps away from getting close to us. <br>If you haven't registerd yet, what are you waiting for... Just simply register and order our products online <br> -- Hepali Handicraft --</p>
                <div class="buttons mt-md-4 mt-3">
                    <a href="user-login.php" class="btn btn-default">Login</a>
                    <a href="user-register.php" class="btn btn1"> Register </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Last Content Ends -->
</section>
<?php
    include('includes/footer.php');
?>
