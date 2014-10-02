<?php
	$this->Get->create($data);
	extract($data , EXTR_SKIP);
?>
<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center row">
        <div class="col-xs-10 col-xs-offset-1">
            <?php
                $homeimage = $this->Get->image_link(array('id' => $myEntry['Entry']['main_image']));
            ?>
            <img src="<?php echo $homeimage['display']; ?>" alt="<?php echo $mySetting['title'].' '.$myEntry['Entry']['title']; ?> logo design website" class="img-responsive center-block">
            <h3><?php echo $mySetting['description']; ?></h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
        </div>
    </div>
</header>

<!-- About -->
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <?php
                    $about = $this->Get->meta_details('about', 'pages');
                ?>
                <h2><?php echo $about['Entry']['title']; ?></h2>
                <div class="lead"><?php echo $about['Entry']['description']; ?></div>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Services -->
<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
<section id="services" class="services bg-primary">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-10 col-lg-offset-1">
                <h2>Our Services</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x"></i>
                            <i class="fa fa-cloud fa-stack-1x text-primary"></i>
                        </span>
                            <h4>
                                <strong>Service Name</strong>
                            </h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <a href="#" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x"></i>
                            <i class="fa fa-compass fa-stack-1x text-primary"></i>
                        </span>
                            <h4>
                                <strong>Service Name</strong>
                            </h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <a href="#" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x"></i>
                            <i class="fa fa-flask fa-stack-1x text-primary"></i>
                        </span>
                            <h4>
                                <strong>Service Name</strong>
                            </h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <a href="#" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x"></i>
                            <i class="fa fa-shield fa-stack-1x text-primary"></i>
                        </span>
                            <h4>
                                <strong>Service Name</strong>
                            </h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <a href="#" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Callout -->
<aside class="callout">
    <div class="text-vertical-center">
        <h1>Vertically Centered Text</h1>
    </div>
</aside>

<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Our Work</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="<?php echo $imagePath; ?>images/portfolio-1.jpg">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="<?php echo $imagePath; ?>images/portfolio-2.jpg">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="<?php echo $imagePath; ?>images/portfolio-3.jpg">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="<?php echo $imagePath; ?>images/portfolio-4.jpg">
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
                <a href="#" class="btn btn-dark">View More Items</a>
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Call to Action -->
<aside class="call-to-action bg-primary">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3>The buttons below are impossible to resist.</h3>
                <a href="#" class="btn btn-lg btn-light">Click Me!</a>
                <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
            </div>
        </div>
    </div>
</aside>